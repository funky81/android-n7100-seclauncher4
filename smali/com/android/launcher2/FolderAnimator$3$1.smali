.class Lcom/android/launcher2/FolderAnimator$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator$3;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/FolderAnimator$3;

.field final synthetic val$iconView:Lcom/android/launcher2/AppIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator$3;Lcom/android/launcher2/AppIconView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator$3$1;->val$iconView:Lcom/android/launcher2/AppIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/4 v5, 0x0

    .line 431
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget-object v0, v0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget-object v1, v1, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 432
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget-object v0, v0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$200(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget-object v1, v1, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 433
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$3$1;->val$iconView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0, v5}, Lcom/android/launcher2/AppIconView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget v0, v0, Lcom/android/launcher2/FolderAnimator$3;->val$count:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$3$1;->val$iconView:Lcom/android/launcher2/AppIconView;

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const-wide/16 v3, 0x5a

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/ScalarAnimator;->start(FFJ)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$3$1;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget-object v0, v0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #setter for: Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z
    invoke-static {v0, v5}, Lcom/android/launcher2/FolderAnimator;->access$302(Lcom/android/launcher2/FolderAnimator;Z)Z

    .line 439
    return-void
.end method
