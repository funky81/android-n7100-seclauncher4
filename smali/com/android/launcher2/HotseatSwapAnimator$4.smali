.class Lcom/android/launcher2/HotseatSwapAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HotseatSwapAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HotseatSwapAnimator;->fadeOutAndRemoveOverlayIcon(Lcom/android/launcher2/DragState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HotseatSwapAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HotseatSwapAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/launcher2/HotseatSwapAnimator$4;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator$4;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    #getter for: Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-static {v1}, Lcom/android/launcher2/HotseatSwapAnimator;->access$000(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator$4;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    #getter for: Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v1}, Lcom/android/launcher2/HotseatSwapAnimator;->access$100(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 397
    .local v0, overlay:Lcom/android/launcher2/AnimationLayer;
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator$4;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    #getter for: Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-static {v1}, Lcom/android/launcher2/HotseatSwapAnimator;->access$000(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 398
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator$4;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    #getter for: Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-static {v1}, Lcom/android/launcher2/HotseatSwapAnimator;->access$000(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->markCompleted()V

    .line 399
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator$4;->this$0:Lcom/android/launcher2/HotseatSwapAnimator;

    const/4 v2, 0x0

    #setter for: Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-static {v1, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->access$002(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)Lcom/android/launcher2/AnimationLayer$Anim;

    .line 401
    .end local v0           #overlay:Lcom/android/launcher2/AnimationLayer;
    :cond_0
    return-void
.end method
