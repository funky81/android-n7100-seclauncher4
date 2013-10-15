.class Lcom/android/launcher2/AnimationLayer$Anim$5;
.super Ljava/lang/Object;
.source "AnimationLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AnimationLayer$Anim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AnimationLayer$Anim;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12
    .parameter "animation"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 919
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_3

    move v4, v8

    .line 920
    .local v4, isViewDetached:Z
    :goto_0
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_1

    :cond_0
    if-eqz v4, :cond_4

    .line 921
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 945
    :cond_2
    :goto_1
    return-void

    .end local v4           #isViewDetached:Z
    :cond_3
    move v4, v9

    .line 919
    goto :goto_0

    .line 924
    .restart local v4       #isViewDetached:Z
    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v6

    .line 925
    .local v6, to:[I
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v3

    .line 926
    .local v3, from:[I
    aget v7, v6, v9

    aget v10, v3, v9

    sub-int/2addr v7, v10

    int-to-float v1, v7

    .line 927
    .local v1, dx:F
    aget v7, v6, v8

    aget v10, v3, v8

    sub-int/2addr v7, v10

    int-to-float v2, v7

    .line 928
    .local v2, dy:F
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 929
    .local v5, p:F
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v10, v3, v9

    int-to-float v10, v10

    mul-float v11, v1, v5

    add-float/2addr v10, v11

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 930
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v10, v3, v8

    int-to-float v10, v10

    mul-float v11, v2, v5

    add-float/2addr v10, v11

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 931
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v10, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 932
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v10, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 934
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->invalidate()V

    .line 935
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 937
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    #getter for: Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z
    invoke-static {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->access$300(Lcom/android/launcher2/AnimationLayer$Anim;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    instance-of v7, v7, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_2

    .line 938
    mul-float v7, v1, v1

    mul-float v10, v2, v2

    add-float/2addr v7, v10

    const/high16 v10, 0x44c8

    cmpl-float v7, v7, v10

    if-lez v7, :cond_5

    const/high16 v0, 0x3f80

    .line 939
    .local v0, d:F
    :goto_2
    cmpl-float v7, v5, v0

    if-ltz v7, :cond_2

    .line 940
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    #setter for: Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z
    invoke-static {v7, v8}, Lcom/android/launcher2/AnimationLayer$Anim;->access$302(Lcom/android/launcher2/AnimationLayer$Anim;Z)Z

    .line 941
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 942
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer$Anim$5;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    check-cast v7, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v7}, Lcom/android/launcher2/AppIconView;->startFadeShadow()V

    goto/16 :goto_1

    .line 938
    .end local v0           #d:F
    :cond_5
    const v0, 0x3f19999a

    goto :goto_2
.end method
