.class public Lcom/android/launcher2/mainmenu/TitleBarButton;
.super Landroid/widget/LinearLayout;
.source "TitleBarButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 40
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/mainmenu/TitleBarButton;->setAlpha(F)V

    .line 41
    return-void

    .line 40
    :cond_0
    const/high16 v0, 0x3f00

    goto :goto_0
.end method
