.class Lcom/android/launcher2/FolderAnimator$4;
.super Ljava/lang/Object;
.source "FolderAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;

.field final synthetic val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$animateScale:Z

.field final synthetic val$from:[I

.field final synthetic val$fromAlpha:F

.field final synthetic val$fromDarken:F

.field final synthetic val$fromPlate:Z

.field final synthetic val$isHover:Z

.field final synthetic val$offset:[I

.field final synthetic val$pos:I

.field final synthetic val$scale:F

.field final synthetic val$toAlpha:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;Z[I[IZFFFIZF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$4;->this$0:Lcom/android/launcher2/FolderAnimator;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-boolean p3, p0, Lcom/android/launcher2/FolderAnimator$4;->val$fromPlate:Z

    iput-object p4, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from:[I

    iput-object p5, p0, Lcom/android/launcher2/FolderAnimator$4;->val$offset:[I

    iput-boolean p6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$animateScale:Z

    iput p7, p0, Lcom/android/launcher2/FolderAnimator$4;->val$scale:F

    iput p8, p0, Lcom/android/launcher2/FolderAnimator$4;->val$fromAlpha:F

    iput p9, p0, Lcom/android/launcher2/FolderAnimator$4;->val$toAlpha:F

    iput p10, p0, Lcom/android/launcher2/FolderAnimator$4;->val$pos:I

    iput-boolean p11, p0, Lcom/android/launcher2/FolderAnimator$4;->val$isHover:Z

    iput p12, p0, Lcom/android/launcher2/FolderAnimator$4;->val$fromDarken:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12
    .parameter "animation"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 520
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 521
    .local v3, progress:F
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->this$0:Lcom/android/launcher2/FolderAnimator;

    #calls: Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I
    invoke-static {v6}, Lcom/android/launcher2/FolderAnimator;->access$800(Lcom/android/launcher2/FolderAnimator;)[I

    move-result-object v0

    .line 523
    .local v0, loc:[I
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-nez v6, :cond_0

    .line 524
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$4;->this$0:Lcom/android/launcher2/FolderAnimator;

    #calls: Lcom/android/launcher2/FolderAnimator;->getNewImageView()Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/launcher2/FolderAnimator;->access$900(Lcom/android/launcher2/FolderAnimator;)Landroid/widget/ImageView;

    move-result-object v7

    iput-object v7, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 525
    :cond_0
    iget-boolean v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$fromPlate:Z

    if-eqz v6, :cond_4

    .line 526
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from:[I

    aget v7, v7, v10

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from:[I

    aget v8, v8, v10

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator$4;->val$offset:[I

    aget v9, v9, v10

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v7, v8, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 527
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from:[I

    aget v7, v7, v11

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from:[I

    aget v8, v8, v11

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator$4;->val$offset:[I

    aget v9, v9, v11

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v7, v8, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 540
    :goto_0
    const/high16 v2, 0x3f80

    .line 541
    .local v2, parentScale:F
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v6}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 542
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v6}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 543
    .local v1, p:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 544
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #p:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 545
    .restart local v1       #p:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 546
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    .line 551
    .end local v1           #p:Landroid/view/View;
    :cond_1
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getAppIconScaleFactor()F

    move-result v6

    mul-float v4, v2, v6

    .line 552
    .local v4, s:F
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/launcher2/FolderAnimator$4;->val$scale:F

    invoke-static {v7, v4, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 553
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/launcher2/FolderAnimator$4;->val$scale:F

    invoke-static {v7, v4, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 554
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/launcher2/FolderAnimator$4;->val$fromAlpha:F

    iget v8, p0, Lcom/android/launcher2/FolderAnimator$4;->val$toAlpha:F

    invoke-static {v7, v8, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 555
    iget v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$pos:I

    const/4 v7, 0x4

    if-ge v6, v7, :cond_3

    iget v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$pos:I

    if-lez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$isHover:Z

    if-nez v6, :cond_3

    .line 556
    iget v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$pos:I

    int-to-float v6, v6

    const v7, 0x3dcccccd

    mul-float v5, v6, v7

    .line 557
    .local v5, to:F
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget v7, p0, Lcom/android/launcher2/FolderAnimator$4;->val$fromDarken:F

    invoke-static {v7, v5, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v7

    iput v7, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    .line 558
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_2

    .line 559
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 560
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    invoke-static {v6, v7}, Lcom/android/launcher2/FolderIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    .line 563
    .end local v5           #to:F
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->invalidate()V

    .line 564
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;
    invoke-static {v6}, Lcom/android/launcher2/FolderAnimator;->access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 565
    return-void

    .line 529
    .end local v2           #parentScale:F
    .end local v4           #s:F
    :cond_4
    iget-boolean v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$animateScale:Z

    if-nez v6, :cond_5

    .line 532
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v7, v0, v10

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from:[I

    aget v8, v8, v10

    add-int/2addr v7, v8

    int-to-float v7, v7

    aget v8, v0, v10

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator$4;->val$offset:[I

    aget v9, v9, v10

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v7, v8, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 533
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v7, v0, v11

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from:[I

    aget v8, v8, v11

    add-int/2addr v7, v8

    int-to-float v7, v7

    aget v8, v0, v11

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator$4;->val$offset:[I

    aget v9, v9, v11

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v7, v8, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto/16 :goto_0

    .line 535
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from:[I

    aget v7, v7, v10

    int-to-float v7, v7

    aget v8, v0, v10

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator$4;->val$offset:[I

    aget v9, v9, v10

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v7, v8, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 536
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$4;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$4;->val$from:[I

    aget v7, v7, v11

    int-to-float v7, v7

    aget v8, v0, v11

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator$4;->val$offset:[I

    aget v9, v9, v11

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v7, v8, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto/16 :goto_0
.end method
