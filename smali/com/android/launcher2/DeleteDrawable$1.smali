.class Lcom/android/launcher2/DeleteDrawable$1;
.super Ljava/lang/Object;
.source "DeleteDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeleteDrawable;->startAnimator(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeleteDrawable;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeleteDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/launcher2/DeleteDrawable$1;->this$0:Lcom/android/launcher2/DeleteDrawable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 244
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable$1;->this$0:Lcom/android/launcher2/DeleteDrawable;

    #getter for: Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
    invoke-static {v0}, Lcom/android/launcher2/DeleteDrawable;->access$000(Lcom/android/launcher2/DeleteDrawable;)Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable$1;->this$0:Lcom/android/launcher2/DeleteDrawable;

    #getter for: Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
    invoke-static {v0}, Lcom/android/launcher2/DeleteDrawable;->access$000(Lcom/android/launcher2/DeleteDrawable;)Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;->onBulgeAnimationEnded()V

    .line 251
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 254
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 257
    return-void
.end method
