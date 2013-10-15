.class Lcom/android/launcher2/QuickViewWorkspace$SecretButton;
.super Landroid/widget/CompoundButton;
.source "QuickViewWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecretButton"
.end annotation


# static fields
.field private static final LP:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1487
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace$SecretButton;->LP:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1495
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 1496
    sget-object v0, Lcom/android/launcher2/QuickViewWorkspace$SecretButton;->LP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace$SecretButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1497
    const v0, 0x7f02001f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace$SecretButton;->setBackgroundResource(I)V

    .line 1498
    return-void
.end method
