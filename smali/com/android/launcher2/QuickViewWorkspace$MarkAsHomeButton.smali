.class Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;
.super Landroid/widget/CompoundButton;
.source "QuickViewWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarkAsHomeButton"
.end annotation


# static fields
.field private static final LP:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1462
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->LP:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1470
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 1471
    sget-object v0, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->LP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1472
    const v0, 0x7f0200ba

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setBackgroundResource(I)V

    .line 1473
    return-void
.end method

.method static synthetic access$000()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 1461
    sget-object v0, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->LP:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method


# virtual methods
.method public toggle()V
    .locals 1

    .prologue
    .line 1479
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1480
    invoke-super {p0}, Landroid/widget/CompoundButton;->toggle()V

    .line 1481
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->getParent()Landroid/view/ViewParent;

    .line 1483
    :cond_0
    return-void
.end method
