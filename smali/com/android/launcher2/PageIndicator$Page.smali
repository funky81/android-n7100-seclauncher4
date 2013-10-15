.class public Lcom/android/launcher2/PageIndicator$Page;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Page"
.end annotation


# instance fields
.field protected mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mDrawState:I

.field private mIsDraggedOn:Z

.field private mPrevDrawState:I

.field final synthetic this$0:Lcom/android/launcher2/PageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/PageIndicator;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 678
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 668
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    .line 669
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    .line 671
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 672
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationDuration:I

    .line 676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mIsDraggedOn:Z

    .line 679
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)Z
    .locals 8
    .parameter "canvas"

    .prologue
    .line 701
    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v0, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v0, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/high16 v5, 0x3f80

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator$Page;->getScale()F

    move-result v6

    const/4 v0, 0x3

    new-array v7, v0, [Z

    fill-array-data v7, :array_0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;IIIFF[Z)Z

    move-result v0

    return v0

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method draw(Landroid/graphics/Canvas;IIIFF[Z)Z
    .locals 9
    .parameter "canvas"
    .parameter "index"
    .parameter "width"
    .parameter "height"
    .parameter "previewAlpha"
    .parameter "scale"
    .parameter "indicator"

    .prologue
    .line 707
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mGrowBy:F
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$100(Lcom/android/launcher2/PageIndicator;)F

    move-result v4

    mul-float/2addr v4, p6

    float-to-int v2, v4

    .line 708
    .local v2, grow:I
    const/4 v1, 0x0

    .line 710
    .local v1, focus:Z
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$200(Lcom/android/launcher2/PageIndicator;)Lcom/android/launcher2/ScalarAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    .line 711
    .local v3, modeFactor:F
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mIsHiding:Z
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$300(Lcom/android/launcher2/PageIndicator;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, p6

    .line 712
    .local v0, alpha:F
    :goto_0
    mul-float/2addr v0, p5

    .line 713
    if-lez v2, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v4

    const/16 v5, 0x258

    if-lt v4, v5, :cond_3

    .line 714
    const/4 v4, 0x0

    aget-boolean v4, p7, v4

    if-eqz v4, :cond_2

    .line 715
    const/4 v1, 0x1

    .line 716
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$400(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 717
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$400(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 718
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$400(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/high16 v5, 0x437f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 756
    :goto_1
    if-nez v1, :cond_0

    .line 757
    const/4 v4, 0x1

    aget-boolean v4, p7, v4

    if-eqz v4, :cond_a

    .line 758
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 770
    :cond_0
    :goto_2
    iget v4, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_e

    const/4 v4, 0x1

    :goto_3
    return v4

    .line 711
    .end local v0           #alpha:F
    :cond_1
    const/high16 v4, 0x3f00

    mul-float/2addr v4, p6

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v5, v3

    mul-float v0, v4, v5

    goto :goto_0

    .line 720
    .restart local v0       #alpha:F
    :cond_2
    const/4 v1, 0x1

    .line 721
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$500(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 722
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$500(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 723
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$500(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/high16 v5, 0x437f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 726
    :cond_3
    const/4 v4, 0x1

    aget-boolean v4, p7, v4

    if-eqz v4, :cond_4

    .line 727
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 728
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    const/4 v6, -0x3

    add-int v7, p3, v2

    add-int/lit8 v8, p4, -0x3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 729
    :cond_4
    const/4 v4, 0x0

    aget-boolean v4, p7, v4

    if-eqz v4, :cond_6

    .line 731
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v4

    const/16 v5, 0x258

    if-lt v4, v5, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Launcher_DisableTranslucency"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 733
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 737
    :goto_4
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p3, v2

    add-int v8, p4, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 735
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4

    .line 738
    :cond_6
    const/4 v4, 0x2

    aget-boolean v4, p7, v4

    if-eqz v4, :cond_7

    .line 739
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 740
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p3, v2

    add-int v8, p4, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 741
    :cond_7
    const/4 v4, 0x3

    aget-boolean v4, p7, v4

    if-eqz v4, :cond_8

    .line 742
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mUserCustomPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 743
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mUserCustomPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p3, v2

    add-int v8, p4, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 746
    :cond_8
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v4

    const/16 v5, 0x258

    if-lt v4, v5, :cond_9

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Launcher_DisableTranslucency"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 748
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 752
    :goto_5
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p3, v2

    add-int v8, p4, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 750
    :cond_9
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_5

    .line 759
    :cond_a
    const/4 v4, 0x0

    aget-boolean v4, p7, v4

    if-eqz v4, :cond_b

    .line 760
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 761
    :cond_b
    const/4 v4, 0x2

    aget-boolean v4, p7, v4

    if-eqz v4, :cond_c

    .line 762
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 763
    :cond_c
    const/4 v4, 0x3

    aget-boolean v4, p7, v4

    if-eqz v4, :cond_d

    .line 764
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mUserCustomPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 766
    :cond_d
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 770
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method endAnimation()V
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 698
    return-void
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 774
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v0

    return v0
.end method

.method public getScale(J)F
    .locals 8
    .parameter "currentTime"

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x2

    const/high16 v6, 0x3f80

    .line 777
    const/4 v1, 0x0

    .line 778
    .local v1, value:F
    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 779
    iput-wide p1, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    .line 780
    iput v4, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 783
    :cond_0
    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    if-ne v2, v4, :cond_3

    .line 784
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationDuration:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 785
    .local v0, normalized:F
    cmpl-float v2, v0, v6

    if-ltz v2, :cond_1

    .line 786
    iput v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 788
    :cond_1
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 790
    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    iget v3, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationTo:F

    iget v4, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    .line 794
    .end local v0           #normalized:F
    :cond_2
    :goto_0
    return v1

    .line 791
    :cond_3
    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    if-ne v2, v7, :cond_2

    .line 792
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    aget v1, v2, v3

    goto :goto_0
.end method

.method initDrawState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 682
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    .line 683
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    .line 684
    return-void
.end method

.method public isDraggedOn()Z
    .locals 1

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mIsDraggedOn:Z

    return v0
.end method

.method public setDraggedOn(Z)V
    .locals 0
    .parameter "isDraggedOn"

    .prologue
    .line 802
    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator$Page;->mIsDraggedOn:Z

    .line 803
    return-void
.end method

.method setDrawState(I)V
    .locals 2
    .parameter "drawState"

    .prologue
    .line 687
    iget v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    .line 688
    iput p1, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    .line 690
    iget v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    if-eq v0, v1, :cond_0

    .line 691
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 692
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationTo:F

    .line 693
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    .line 695
    :cond_0
    return-void
.end method
