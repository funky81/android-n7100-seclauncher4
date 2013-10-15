.class Lcom/android/launcher2/guide/WallPaperChooserDialogFragment$1;
.super Ljava/lang/Object;
.source "WallPaperChooserDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment$1;->this$0:Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    invoke-static {}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->setAlpha()V

    .line 93
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
