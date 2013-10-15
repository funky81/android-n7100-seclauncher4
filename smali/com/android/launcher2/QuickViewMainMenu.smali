.class public Lcom/android/launcher2/QuickViewMainMenu;
.super Lcom/android/launcher2/QuickView;
.source "QuickViewMainMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickViewMainMenu$1;,
        Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final DEFAULT_NUM_COLS:I = 0x2

.field private static final SCROLL_DELAY:I = 0x258

.field private static final SCROLL_DOWN:I = 0x1

.field static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field static final SCROLL_UP:I = 0x0

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final SCROLL_ZONE:I = 0x50

.field private static final TAG:Ljava/lang/String; = "QuickViewMainMenu"


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

.field private mChildLeft:I

.field private mChildTop:I

.field protected mDvfsHelper:Landroid/os/DVFSHelper;

.field private mIsReadOnly:Z

.field private mIsSaved:Z

.field private mLastScroll:J

.field private mMaxDeltaY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNumCols:I

.field private mReadOnlyToastResId:I

.field private mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

.field mScrollState:I

.field private mScrollTop:I

.field mScroller:Landroid/widget/Scroller;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    .line 52
    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    .line 53
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    .line 68
    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    .line 69
    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 75
    new-instance v2, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-direct {v2, p0, v4}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;-><init>(Lcom/android/launcher2/QuickViewMainMenu;Lcom/android/launcher2/QuickViewMainMenu$1;)V

    iput-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    .line 83
    iput-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDvfsHelper:Landroid/os/DVFSHelper;

    .line 85
    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 118
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->QuickViewMainMenu:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mNumCols:I

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1, v4, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    .line 126
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 127
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMinimumVelocity:I

    .line 128
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaximumVelocity:I

    .line 130
    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewMainMenu;->setClipChildren(Z)V

    .line 131
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    return v0
.end method

.method private static calculateChildLeft(IIIIII)I
    .locals 10
    .parameter "halfQvWidth"
    .parameter "numCols"
    .parameter "childWidth"
    .parameter "childGapH"
    .parameter "minLeft"
    .parameter "rightLeftPadDif"

    .prologue
    .line 540
    if-gtz p1, :cond_0

    .line 569
    .end local p4
    :goto_0
    return p4

    .line 542
    .restart local p4
    :cond_0
    move v6, p0

    .line 544
    .local v6, calculatedLeft:I
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 545
    div-int/lit8 v0, p3, 0x2

    sub-int/2addr v6, v0

    .line 546
    sub-int/2addr v6, p2

    .line 547
    div-int/lit8 v9, p1, 0x2

    .line 554
    .local v9, numColsPerSide:I
    :goto_1
    add-int/2addr v6, p5

    .line 557
    add-int v7, p2, p3

    .line 558
    .local v7, childLeftDelta:I
    const/4 v8, 0x1

    .local v8, i:I
    :goto_2
    if-ge v8, v9, :cond_2

    .line 560
    sub-int/2addr v6, v7

    .line 558
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 549
    .end local v7           #childLeftDelta:I
    .end local v8           #i:I
    .end local v9           #numColsPerSide:I
    :cond_1
    div-int/lit8 v0, p2, 0x2

    sub-int/2addr v6, v0

    .line 550
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v9, v0, 0x2

    .restart local v9       #numColsPerSide:I
    goto :goto_1

    .line 563
    .restart local v7       #childLeftDelta:I
    .restart local v8       #i:I
    :cond_2
    const/4 v0, 0x0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 566
    add-int/lit8 v1, p1, -0x1

    move v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/QuickViewMainMenu;->calculateChildLeft(IIIIII)I

    move-result p4

    goto :goto_0

    :cond_3
    move p4, v6

    .line 569
    goto :goto_0
.end method

.method private drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V
    .locals 26
    .parameter "canvas"
    .parameter "view"
    .parameter "isAnimating"
    .parameter "progress"

    .prologue
    .line 913
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/QuickView;->mScrollY:I

    .line 914
    .local v9, pTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getBottom()I

    move-result v23

    add-int v8, v9, v23

    .line 916
    .local v8, pBottom:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    if-gt v0, v8, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v23

    move/from16 v0, v23

    if-ge v0, v9, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v19

    .local v19, viewWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v18

    .line 923
    .local v18, viewHeight:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v7, v23, v24

    .local v7, halfViewWidth:F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v6, v23, v24

    .line 925
    .local v6, halfViewHeight:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v20, v23, v7

    .line 926
    .local v20, viewXCenter:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v21, v23, v6

    .line 929
    .local v21, viewYCenter:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_3

    .line 930
    const v14, 0x3f933333

    .line 936
    .local v14, scaleFactor:F
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 938
    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0017

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v22, v23, v24

    .line 941
    .local v22, widgetLandscapeLeftPadding:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 943
    sub-float v23, v20, v22

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 947
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 948
    neg-float v0, v7

    move/from16 v23, v0

    neg-float v0, v6

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 950
    if-eqz p3, :cond_6

    .line 951
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    :cond_2
    move/from16 v5, p4

    .line 956
    .local v5, bgAlpha:F
    :goto_3
    const/16 v23, 0x0

    const/high16 v24, 0x3f80

    move/from16 v0, v24

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v24

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/high16 v24, 0x437f

    mul-float v24, v24, v5

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 961
    .end local v5           #bgAlpha:F
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v19

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 964
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 968
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 969
    .local v17, tag:Ljava/lang/Object;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v23, v0

    check-cast v17, Ljava/lang/Integer;

    .end local v17           #tag:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-interface/range {v23 .. v24}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getPage(I)Landroid/view/View;

    move-result-object v10

    .line 973
    .local v10, page:Landroid/view/View;
    if-eqz v10, :cond_0

    .line 975
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v12

    .local v12, pageWidth:I
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 977
    .local v11, pageHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v23, v19, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v12

    move/from16 v24, v0

    div-float v15, v23, v24

    .line 978
    .local v15, scaleH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v23, v18, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v11

    move/from16 v24, v0

    div-float v16, v23, v24

    .line 979
    .local v16, scaleV:F
    cmpl-float v23, v16, v15

    if-lez v23, :cond_7

    move v13, v15

    .line 980
    .local v13, scale:F
    :goto_5
    mul-float/2addr v13, v14

    .line 982
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v23, v23, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x4000

    div-float v24, v24, v25

    add-float v24, v24, v21

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 988
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v13}, Landroid/graphics/Canvas;->scale(FF)V

    .line 989
    neg-int v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    neg-int v0, v11

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x4000

    div-float v24, v24, v25

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 991
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 993
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 995
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 932
    .end local v10           #page:Landroid/view/View;
    .end local v11           #pageHeight:I
    .end local v12           #pageWidth:I
    .end local v13           #scale:F
    .end local v14           #scaleFactor:F
    .end local v15           #scaleH:F
    .end local v16           #scaleV:F
    .end local v22           #widgetLandscapeLeftPadding:F
    :cond_3
    const/high16 v14, 0x3f80

    .restart local v14       #scaleFactor:F
    goto/16 :goto_1

    .line 945
    .restart local v22       #widgetLandscapeLeftPadding:F
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2

    .line 951
    :cond_5
    const/high16 v23, 0x3f80

    sub-float v5, v23, p4

    goto/16 :goto_3

    .line 959
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/16 v24, 0xff

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_4

    .restart local v10       #page:Landroid/view/View;
    .restart local v11       #pageHeight:I
    .restart local v12       #pageWidth:I
    .restart local v15       #scaleH:F
    .restart local v16       #scaleV:F
    :cond_7
    move/from16 v13, v16

    .line 979
    goto/16 :goto_5
.end method

.method private fling(I)V
    .locals 9
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 677
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    iget v2, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    iget v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 682
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 684
    :cond_0
    return-void
.end method

.method private initDVFSHelper()V
    .locals 5

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDvfsHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 626
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const-wide/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;IJ)V

    iput-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDvfsHelper:Landroid/os/DVFSHelper;

    .line 628
    :cond_0
    return-void
.end method

.method private savemenupage()V
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    .line 691
    :cond_0
    return-void
.end method

.method private scroll(II)V
    .locals 4
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x0

    .line 514
    if-gez p2, :cond_3

    .line 515
    iget v1, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    if-lez v1, :cond_2

    .line 516
    iget v1, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    add-int/2addr v1, p2

    if-gez v1, :cond_1

    .line 517
    iget v1, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(II)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    invoke-virtual {p0, v3, p2}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    .line 522
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0

    .line 524
    :cond_3
    if-lez p2, :cond_0

    .line 525
    iget v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    iget v2, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    sub-int v0, v1, v2

    .line 526
    .local v0, availableToScroll:I
    if-lez v0, :cond_5

    .line 527
    if-le v0, p2, :cond_4

    .line 528
    invoke-virtual {p0, v3, p2}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    .line 530
    :cond_4
    invoke-virtual {p0, v3, v0}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    .line 533
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public static zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V
    .locals 4
    .parameter "vg"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 89
    if-ne p1, p2, :cond_0

    .line 105
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 93
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 96
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x1

    .line 97
    .local v0, bound:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 98
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 97
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 509
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->close()V

    .line 510
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewMainMenu;->savemenupage()V

    .line 511
    return-void
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-nez v8, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 700
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v2

    .line 706
    .local v2, index:I
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollTop:I

    .line 708
    iget v8, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    if-nez v8, :cond_2

    iget v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollTop:I

    iget v9, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildTop:I

    if-le v8, v9, :cond_2

    .line 709
    iget v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollTop:I

    iget v9, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    .line 713
    .end local v2           #index:I
    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 714
    iget v3, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    .line 715
    .local v3, oldX:I
    iget v4, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    .line 716
    .local v4, oldY:I
    iget-object v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 717
    .local v6, x:I
    iget-object v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 718
    .local v7, y:I
    iput v6, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    .line 719
    iput v7, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    .line 721
    iget v8, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    if-ne v3, v8, :cond_3

    iget v8, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    if-eq v4, v8, :cond_4

    .line 722
    :cond_3
    iget v8, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    iget v9, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    invoke-virtual {p0, v8, v9, v3, v4}, Lcom/android/launcher2/QuickViewMainMenu;->onScrollChanged(IIII)V

    .line 725
    :cond_4
    iget v8, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 726
    iget v8, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    sub-int v1, v8, v4

    .line 727
    .local v1, deltaY:I
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    .line 728
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_5

    .line 729
    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mTmpRect:Landroid/graphics/Rect;

    .line 730
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 731
    iget v8, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 732
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 734
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 738
    .end local v0           #child:Landroid/view/View;
    .end local v1           #deltaY:I
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 783
    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 784
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v1

    .line 785
    .local v1, count:I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getWidth()I

    move-result v7

    .line 786
    .local v7, width:I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getHeight()I

    move-result v4

    .line 788
    .local v4, height:I
    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    iget v8, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 795
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_3

    .line 796
    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 799
    .local v0, child:Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eq v0, v8, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v0, v8, v9}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    .line 795
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 801
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, p1, v8, v9, v10}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    .line 802
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->postInvalidate()V

    goto :goto_0

    .line 806
    .end local v5           #i:I
    :cond_4
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    packed-switch v8, :pswitch_data_0

    .line 849
    :goto_2
    :pswitch_0
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    packed-switch v8, :pswitch_data_1

    .line 904
    :pswitch_1
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v1, :cond_0

    .line 905
    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 906
    .restart local v0       #child:Landroid/view/View;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v0, v8, v9}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    .line 904
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 808
    .end local v0           #child:Landroid/view/View;
    .end local v5           #i:I
    :pswitch_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    .line 809
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    .line 810
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 811
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    .line 815
    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickViewMainMenu;->setOpenStartRect(I)V

    .line 816
    new-array v8, v1, [Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    .line 817
    new-array v8, v1, [Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 818
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_4
    if-ge v5, v1, :cond_6

    .line 819
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v5

    .line 820
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 821
    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    if-ne v5, v8, :cond_5

    .line 822
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollTop:I

    .line 824
    :cond_5
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v5

    .line 818
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 826
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->requestLayout()V

    goto :goto_2

    .line 829
    .end local v5           #i:I
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    .line 830
    const/4 v8, 0x4

    iput v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 831
    iget v8, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    iput v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    .line 836
    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickViewMainMenu;->setCloseEndRect(I)V

    .line 837
    new-array v8, v1, [Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    .line 838
    new-array v8, v1, [Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 839
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5
    if-ge v5, v1, :cond_7

    .line 840
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v5

    .line 841
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 842
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v5

    .line 839
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 844
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->requestLayout()V

    .line 845
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewCloseAnimationStarted()V

    goto/16 :goto_2

    .line 852
    .end local v5           #i:I
    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    sub-long v2, v8, v10

    .line 855
    .local v2, current:J
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-ltz v8, :cond_b

    .line 857
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_a

    .line 858
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewCloseAnimationCompleted()V

    .line 859
    const/16 v8, 0x8

    iput v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 864
    :goto_6
    const/high16 v6, 0x3f80

    .line 869
    .local v6, progress:F
    :goto_7
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v10, v11, v6}, Lcom/android/launcher2/AnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 870
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    if-nez v8, :cond_c

    .line 871
    const-string v8, "QuickViewMainMenu"

    const-string v9, "Failed to get current rectangles from animation engine"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->postInvalidate()V

    .line 899
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_9

    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 900
    :cond_9
    const-string v8, "QuickViewMainMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ElapsedTime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->referenceTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/launcher2/QuickView;->mTimeStore:J

    sub-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 861
    .end local v6           #progress:F
    :cond_a
    const/4 v8, 0x7

    iput v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    goto :goto_6

    .line 866
    :cond_b
    long-to-float v8, v2

    iget v9, p0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .restart local v6       #progress:F
    goto :goto_7

    .line 874
    :cond_c
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_9
    if-ge v5, v1, :cond_f

    .line 875
    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    if-ne v5, v8, :cond_e

    .line 874
    :cond_d
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 876
    :cond_e
    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 877
    .restart local v0       #child:Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v5

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v11, v11, v5

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 883
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget v9, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher2/QuickViewMainMenu;->isAvailableRect(Landroid/graphics/Rect;I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 884
    const/4 v8, 0x1

    invoke-direct {p0, p1, v0, v8, v6}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    goto :goto_a

    .line 887
    .end local v0           #child:Landroid/view/View;
    :cond_f
    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    if-ltz v8, :cond_8

    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    if-ge v8, v1, :cond_8

    .line 888
    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 889
    .restart local v0       #child:Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v11, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    aget-object v10, v10, v11

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    aget-object v11, v11, v12

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 895
    const/4 v8, 0x1

    invoke-direct {p0, p1, v0, v8, v6}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    goto/16 :goto_8

    .line 806
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 849
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected getYOffset()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    return v0
.end method

.method public initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V
    .locals 12
    .parameter "provider"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 574
    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->init(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 576
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewMainMenu;->initDVFSHelper()V

    .line 578
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v3

    .line 587
    .local v3, screenCount:I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 590
    .local v0, context:Landroid/content/Context;
    new-instance v6, Landroid/widget/Scroller;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v10}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    .line 591
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 592
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 600
    .local v5, v:Landroid/view/View;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 602
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 603
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 611
    invoke-virtual {v5, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 613
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 614
    const v4, 0x7f0e0060

    .line 617
    .local v4, stringId:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 618
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 619
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    .end local v4           #stringId:I
    :cond_0
    const v4, 0x7f0e005f

    .restart local v4       #stringId:I
    goto :goto_1

    .line 621
    .end local v4           #stringId:I
    .end local v5           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected isValidTag(Ljava/lang/Object;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 466
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadLayoutParameters()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1002
    iget-object v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1003
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->reloadLayoutParameters()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 1005
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v3

    .line 1006
    .local v3, screenCount:I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v0

    .line 1007
    .local v0, childCount:I
    sub-int v5, v3, v0

    .line 1009
    .local v5, viewCountDelta:I
    if-lez v5, :cond_0

    .line 1010
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 1011
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1012
    .local v4, v:Landroid/view/View;
    invoke-virtual {p0, v4, v7}, Lcom/android/launcher2/QuickViewMainMenu;->addView(Landroid/view/View;I)V

    .line 1013
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1014
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1010
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1016
    .end local v1           #i:I
    .end local v4           #v:Landroid/view/View;
    :cond_0
    if-gez v5, :cond_1

    .line 1017
    move v1, v5

    .restart local v1       #i:I
    :goto_1
    if-gez v1, :cond_1

    .line 1018
    invoke-virtual {p0, v7}, Lcom/android/launcher2/QuickViewMainMenu;->removeViewAt(I)V

    .line 1017
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1022
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v0

    .line 1024
    new-array v6, v0, [Lcom/android/launcher2/QuickView$Animate;

    iput-object v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    .line 1025
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 1026
    iget-object v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v7, Lcom/android/launcher2/QuickView$Animate;

    invoke-direct {v7, p0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v7, v6, v1

    .line 1027
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1028
    .restart local v4       #v:Landroid/view/View;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1029
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1035
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1025
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1037
    .end local v4           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->isAnimStateOkayForClickEvents()Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 488
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    .line 489
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 230
    const/4 v11, 0x1

    .line 313
    :goto_0
    return v11

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 234
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 236
    .local v7, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 313
    :cond_1
    :goto_1
    iget v11, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    goto :goto_0

    .line 238
    :sswitch_0
    iget-boolean v11, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-eqz v11, :cond_4

    iget-boolean v11, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    if-eqz v11, :cond_4

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_3

    .line 240
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 242
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float v11, v7, v11

    float-to-int v2, v11

    .line 243
    .local v2, dy:I
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    sub-float v11, v5, v11

    float-to-int v1, v11

    .line 245
    .local v1, dx:I
    mul-int v11, v2, v2

    mul-int v12, v1, v1

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v11, v11

    iget v12, p0, Lcom/android/launcher2/QuickView;->mTouchPointDistance:I

    sub-int v3, v11, v12

    .line 247
    .local v3, pinchDelta:I
    const/16 v11, 0x1e

    if-le v3, v11, :cond_1

    .line 248
    iget v11, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    invoke-virtual {p0, v11}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, childOnPinch:Landroid/view/View;
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 250
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    .line 251
    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 255
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->postInvalidate()V

    .line 257
    const/4 v11, 0x1

    goto :goto_0

    .line 254
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 260
    .end local v0           #childOnPinch:Landroid/view/View;
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #pinchDelta:I
    :cond_3
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 261
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    goto :goto_1

    .line 264
    :cond_4
    iget v11, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    sub-float/2addr v11, v7

    float-to-int v9, v11

    .line 265
    .local v9, yDiff:I
    iget v4, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    .line 266
    .local v4, touchSlop:I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v4, :cond_6

    const/4 v10, 0x1

    .line 267
    .local v10, yMoved:Z
    :goto_2
    iget v11, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v11, :cond_5

    .line 268
    if-eqz v10, :cond_5

    .line 269
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 270
    const/4 v11, 0x0

    invoke-direct {p0, v11, v9}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(II)V

    .line 271
    iput v5, p0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    .line 272
    iput v7, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    .line 276
    :cond_5
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    goto/16 :goto_1

    .line 266
    .end local v10           #yMoved:Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 281
    .end local v4           #touchSlop:I
    .end local v9           #yDiff:I
    :sswitch_1
    iput v5, p0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    .line 282
    iput v7, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    .line 283
    iget-object v11, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v11, 0x1

    :goto_3
    iput v11, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    goto/16 :goto_1

    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 287
    :sswitch_2
    iget-boolean v11, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-eqz v11, :cond_8

    .line 288
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 289
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    goto/16 :goto_1

    .line 291
    :cond_8
    iget v11, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->endDrag()V

    goto/16 :goto_1

    .line 297
    :sswitch_3
    iget v11, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v11, :cond_1

    iget-boolean v11, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-nez v11, :cond_1

    .line 298
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 300
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 301
    .local v6, x1:F
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 303
    .local v8, y1:F
    float-to-int v11, v5

    float-to-int v12, v7

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v11

    float-to-int v12, v6

    float-to-int v13, v8

    invoke-virtual {p0, v12, v13}, Lcom/android/launcher2/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v12

    if-ne v11, v12, :cond_1

    .line 304
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    .line 305
    sub-float v11, v7, v8

    float-to-int v2, v11

    .line 306
    .restart local v2       #dy:I
    sub-float v11, v5, v6

    float-to-int v1, v11

    .line 307
    .restart local v1       #dx:I
    mul-int v11, v2, v2

    mul-int v12, v1, v1

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v11, v11

    iput v11, p0, Lcom/android/launcher2/QuickView;->mTouchPointDistance:I

    .line 308
    float-to-int v11, v5

    float-to-int v12, v7

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v11

    iput v11, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    goto/16 :goto_1

    .line 313
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v6           #x1:F
    .end local v8           #y1:F
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 236
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->isChangingOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/QuickView;->mEnabledChildAnimation:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    const/16 v22, 0x1

    .line 137
    .local v22, shouldAnimate:Z
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/QuickViewMainMenu;->updateParamsIfNeeded(Z)V

    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getPaddingTop()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildTop:I

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getMeasuredWidth()I

    move-result v19

    .line 141
    .local v19, qvWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v17

    .line 142
    .local v17, lp:Landroid/widget/FrameLayout$LayoutParams;
    div-int/lit8 v1, v19, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/QuickViewMainMenu;->mNumCols:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getPaddingLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v6, v6, v24

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/QuickViewMainMenu;->calculateChildLeft(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    .line 151
    .end local v17           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v19           #qvWidth:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    move/from16 v18, v0

    .line 153
    .local v18, oldMaxDeltaY:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v12

    .line 155
    .local v12, count:I
    const/4 v1, 0x1

    if-ge v12, v1, :cond_2

    .line 224
    :goto_1
    return-void

    .line 135
    .end local v12           #count:I
    .end local v18           #oldMaxDeltaY:I
    .end local v22           #shouldAnimate:Z
    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    .line 157
    .restart local v12       #count:I
    .restart local v18       #oldMaxDeltaY:I
    .restart local v22       #shouldAnimate:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v1, v1

    if-eq v1, v12, :cond_4

    .line 158
    :cond_3
    new-array v1, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    .line 161
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    array-length v1, v1

    if-eq v1, v12, :cond_7

    .line 162
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    if-eqz v1, :cond_6

    .line 163
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    array-length v1, v1

    if-ge v15, v1, :cond_6

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Lcom/android/launcher2/QuickView$Animate;->stop()V

    .line 163
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 166
    .end local v15           #i:I
    :cond_6
    new-array v1, v12, [Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    .line 167
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_3
    if-ge v15, v12, :cond_7

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v2, Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v2, v1, v15

    .line 167
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 171
    .end local v15           #i:I
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 172
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 173
    .local v11, childWidth:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 175
    .local v8, childHeight:I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v20, v1, v2

    .line 177
    .local v20, rightLeftPadDif:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getMeasuredWidth()I

    move-result v19

    .line 178
    .restart local v19       #qvWidth:I
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 180
    .local v14, hitRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    .line 181
    .local v9, childLeft:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildTop:I

    .line 182
    .local v10, childTop:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_4
    if-ge v15, v12, :cond_d

    .line 183
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 184
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 182
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 186
    :cond_8
    add-int v1, v9, v11

    move/from16 v0, v19

    if-le v1, v0, :cond_9

    .line 187
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    add-int/2addr v1, v8

    add-int/2addr v10, v1

    .line 188
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    .line 191
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v15

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v15

    .line 192
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v15

    add-int v2, v9, v11

    add-int v3, v10, v8

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 194
    invoke-virtual {v7, v14}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 196
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v22, :cond_c

    .line 197
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v1, v1, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v15

    invoke-virtual {v1, v7, v2}, Lcom/android/launcher2/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 204
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    add-int/2addr v1, v11

    sub-int v1, v1, v20

    add-int/2addr v9, v1

    goto :goto_5

    .line 201
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v15

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v15

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v15

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v15

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    .line 206
    :cond_d
    sub-int v13, p5, p3

    .line 207
    .local v13, height:I
    add-int v1, v10, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getPaddingBottom()I

    move-result v2

    add-int v16, v1, v2

    .line 208
    .local v16, lastChildPaddedBottom:I
    move/from16 v0, v16

    if-le v0, v13, :cond_e

    .line 215
    sub-int v1, v16, v13

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    .line 221
    :goto_7
    if-nez v18, :cond_f

    const/16 v21, 0x0

    .line 222
    .local v21, scrollYProgress:F
    :goto_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    int-to-float v1, v1

    mul-float v23, v1, v21

    .line 223
    .local v23, topY:F
    const/4 v1, 0x0

    move/from16 v0, v23

    float-to-int v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->scrollTo(II)V

    goto/16 :goto_1

    .line 217
    .end local v21           #scrollYProgress:F
    .end local v23           #topY:F
    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    goto :goto_7

    .line 221
    :cond_f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickView;->mScrollY:I

    int-to-float v1, v1

    move/from16 v0, v18

    int-to-float v2, v0

    div-float v21, v1, v2

    goto :goto_8
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 471
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->isAnimStateOkayForClickEvents()Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v2

    .line 474
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 475
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewMainMenu;->startDrag(Landroid/view/View;)V

    .line 476
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewMainMenu;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "ev"

    .prologue
    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->isAnimating()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 319
    const/16 v17, 0x0

    .line 461
    :goto_0
    return v17

    .line 322
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 323
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    .line 324
    .local v14, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    .line 327
    .local v15, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 328
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 330
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 332
    packed-switch v4, :pswitch_data_0

    .line 461
    :cond_2
    :goto_1
    const/16 v17, 0x1

    goto :goto_0

    .line 350
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDvfsHelper:Landroid/os/DVFSHelper;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDvfsHelper:Landroid/os/DVFSHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/DVFSHelper;->acquire()V

    .line 355
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_4

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->computeScroll()V

    .line 360
    :cond_4
    const/high16 v17, 0x42a0

    cmpg-float v17, v15, v17

    if-ltz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getHeight()I

    move-result v17

    add-int/lit8 v17, v17, -0x50

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-lez v17, :cond_6

    .line 361
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 364
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    goto :goto_1

    .line 368
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v6, v0

    .line 369
    .local v6, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    move/from16 v17, v0

    sub-float v17, v17, v15

    move/from16 v0, v17

    float-to-int v7, v0

    .line 371
    .local v7, deltaY:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    .line 372
    .local v11, touchSlop:I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_8

    const/16 v16, 0x1

    .line 374
    .local v16, yMoved:Z
    :goto_2
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 375
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 378
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 379
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(II)V

    .line 380
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    .line 381
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    goto/16 :goto_1

    .line 372
    .end local v16           #yMoved:Z
    :cond_8
    const/16 v16, 0x0

    goto :goto_2

    .line 382
    .restart local v16       #yMoved:Z
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 383
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    .line 384
    .local v5, child:Landroid/view/View;
    if-eqz v5, :cond_a

    .line 385
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/QuickView;->mTmpRect:Landroid/graphics/Rect;

    .line 386
    .local v10, r:Landroid/graphics/Rect;
    invoke-virtual {v5, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 387
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 388
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v17, v17, v7

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 389
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 390
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v17, v17, v7

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 392
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->postInvalidate()V

    .line 395
    .end local v10           #r:Landroid/graphics/Rect;
    :cond_a
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    .line 396
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    .line 398
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    .line 399
    .local v12, v:Landroid/view/View;
    float-to-int v0, v14

    move/from16 v17, v0

    float-to-int v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v8

    .line 400
    .local v8, index:I
    if-eqz v12, :cond_b

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v8, v0, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_b

    .line 402
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/QuickViewMainMenu;->removeView(Landroid/view/View;)V

    .line 403
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lcom/android/launcher2/QuickViewMainMenu;->addView(Landroid/view/View;I)V

    .line 404
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 405
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    .line 407
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 408
    const/16 v17, 0x6458

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->performHapticFeedback(II)Z

    .line 412
    :cond_b
    const/high16 v17, 0x42a0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_c

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 414
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->setDirection(I)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 418
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getHeight()I

    move-result v17

    add-int/lit8 v17, v17, -0x50

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-lez v17, :cond_2

    .line 419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 420
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->setDirection(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 429
    .end local v5           #child:Landroid/view/View;
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v8           #index:I
    .end local v11           #touchSlop:I
    .end local v12           #v:Landroid/view/View;
    .end local v16           #yMoved:Z
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 430
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 431
    .local v13, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 432
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    .line 434
    .local v9, initialVelocity:I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v17

    if-lez v17, :cond_d

    .line 436
    neg-int v0, v9

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->fling(I)V

    .line 439
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    .line 441
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 443
    :cond_e
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 448
    .end local v9           #initialVelocity:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    .line 449
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->postInvalidate()V

    .line 452
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->endDrag()V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDvfsHelper:Landroid/os/DVFSHelper;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDvfsHelper:Landroid/os/DVFSHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_1

    .line 444
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 445
    float-to-int v0, v14

    move/from16 v17, v0

    float-to-int v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->drop(II)V

    goto :goto_3

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public open()V
    .locals 2

    .prologue
    .line 502
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->open()V

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    .line 505
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e0022

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 506
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .parameter "readOnly"

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    .line 495
    return-void
.end method

.method public setReadOnlyToastId(I)V
    .locals 0
    .parameter "aId"

    .prologue
    .line 498
    iput p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    .line 499
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 749
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLastScroll:J

    sub-long v0, v2, v4

    .line 750
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 751
    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    iget v4, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 753
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 760
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLastScroll:J

    .line 761
    return-void

    .line 755
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 756
    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 758
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/QuickViewMainMenu;->scrollBy(II)V

    goto :goto_0
.end method

.method protected swapScreen(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumSecretPages()I

    move-result v0

    .line 647
    .local v0, secretCount:I
    iget-boolean v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    if-eqz v1, :cond_1

    .line 648
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    invoke-static {p0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V

    .line 649
    iget v1, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    iput v1, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 650
    iget v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 651
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-static {p0, v1, p1}, Lcom/android/launcher2/QuickViewMainMenu;->zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V

    .line 663
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    iget v2, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    invoke-interface {v1, v2, p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->movePage(II)V

    .line 664
    iput p1, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 665
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->updateTags()V

    goto :goto_0
.end method

.method protected updateTags()V
    .locals 4

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v1

    .line 633
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 634
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 638
    .local v0, child:Landroid/view/View;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 633
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 640
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method
