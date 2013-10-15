.class Lcom/android/launcher2/guide/HelpAnimatedDialog$4;
.super Ljava/lang/Object;
.source "HelpAnimatedDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/guide/HelpAnimatedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/guide/HelpAnimatedDialog;


# direct methods
.method constructor <init>(Lcom/android/launcher2/guide/HelpAnimatedDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog$4;->this$0:Lcom/android/launcher2/guide/HelpAnimatedDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v2, 0x3f80

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 123
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 126
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 127
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 129
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
