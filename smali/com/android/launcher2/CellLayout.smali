.class public abstract Lcom/android/launcher2/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/android/launcher2/DragReceivable;
.implements Lcom/android/launcher2/DragOrigin;
.implements Lcom/android/launcher2/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$5;,
        Lcom/android/launcher2/CellLayout$CellInfo;,
        Lcom/android/launcher2/CellLayout$LayoutParams;,
        Lcom/android/launcher2/CellLayout$CellLayoutAnimationController;,
        Lcom/android/launcher2/CellLayout$SpanRect;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "CellLayout"

.field private static isItemApp:Z

.field public static isWidgetResized:Z


# instance fields
.field private final ENABLE_TILT:Z

.field private final TILT_SHADOW_OFFSET_DP:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAcceptsDrops:Z

.field public mAnimateChildInstantly:Z

.field private mBackgroundAlpha:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mCellWidth:I

.field mChildren:Lcom/android/launcher2/CellLayoutChildren;

.field private mChildrenAlpha:F

.field private mCountX:I

.field private mCountY:I

.field private mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrosshairsVisibility:F

.field protected final mDragCell:[I

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Rect;

.field private mDragState:Lcom/android/launcher2/DragState;

.field mDragging:Z

.field protected mDrawDragOutlines:Z

.field private mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mEmptyMessage:Landroid/view/View;

.field private mFingerMovedOnDrag:Z

.field private mForegroundAlpha:I

.field private mForegroundPadding:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field private mGapX:I

.field private mGapY:I

.field private mGlowBackgroundAlpha:F

.field private mGlowBackgroundRect:Landroid/graphics/Rect;

.field private mGlowBackgroundScale:F

.field private mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

.field protected mHomeView:Lcom/android/launcher2/HomeView;

.field mIgnoreOccupied:Z

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIsDefaultDropTarget:Z

.field private mIsDragOccuring:Z

.field private mIsDragOverlapping:Z

.field protected mIsPaused:Z

.field private mLastDownOnOccupiedCell:Z

.field private mLastVisualize:[I

.field private mLastXY:[F

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field private mPageType:I

.field final mPositioner:Lcom/android/launcher2/CellPositioner;

.field private mShadowOffset:F

.field private mStateAnimationFinished:Z

.field mTempLocation:[I

.field private final mTmpPoint:[I

.field protected final mTmpXY:[I

.field final mVisualizer:Lcom/android/launcher2/DeltaVisualizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    .line 161
    sput-boolean v1, Lcom/android/launcher2/CellLayout;->isWidgetResized:Z

    .line 2177
    sput-boolean v1, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 177
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->ENABLE_TILT:Z

    .line 69
    const/4 v12, 0x6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->TILT_SHADOW_OFFSET_DP:I

    .line 70
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    .line 81
    new-instance v12, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v12}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 87
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 88
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    .line 89
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    .line 91
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 92
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIgnoreOccupied:Z

    .line 96
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 97
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 109
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    .line 111
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 112
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    .line 113
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    .line 117
    const/4 v12, 0x4

    new-array v12, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 118
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    .line 119
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    new-array v12, v12, [Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 123
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 124
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 128
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 130
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    .line 133
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    .line 135
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 140
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    .line 141
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mPageType:I

    .line 144
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 151
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsPaused:Z

    .line 515
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mShadowOffset:F

    .line 1162
    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mChildrenAlpha:F

    .line 1184
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    .line 1305
    const/4 v12, 0x4

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    .line 2069
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 2070
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2071
    const/4 v12, 0x2

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    const/4 v14, -0x1

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 186
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setWillNotDraw(Z)V

    .line 188
    sget-object v12, Lcom/sec/android/app/launcher/R$styleable;->CellLayout:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 190
    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 191
    const/4 v12, 0x1

    const/16 v13, 0xa

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 192
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    .line 193
    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    .line 194
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 195
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 197
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 203
    .local v9, res:Landroid/content/res/Resources;
    const v12, 0x7f0200b8

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    .line 204
    const v12, 0x7f0200b9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    .line 205
    const v12, 0x7f0c0065

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    .line 210
    const v12, 0x7f020029

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 211
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x4020

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 214
    const v12, 0x7f0a000d

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 215
    .local v5, animDuration:I
    new-instance v12, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v13, v5

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    invoke-direct/range {v12 .. v16}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 216
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/launcher2/CellLayout$1;-><init>(Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v15, 0x1

    const/16 v16, -0x1

    aput v16, v14, v15

    aput v16, v12, v13

    .line 226
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    if-ge v8, v12, :cond_0

    .line 227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v13, v12, v8

    .line 226
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 234
    :cond_0
    const v12, 0x7f0a000e

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 235
    .local v6, duration:I
    const/4 v7, 0x0

    .line 236
    .local v7, fromAlphaValue:F
    const v12, 0x7f0a000f

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-float v11, v12

    .line 238
    .local v11, toAlphaValue:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/util/Arrays;->fill([FF)V

    .line 240
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v12, v12

    if-ge v8, v12, :cond_1

    .line 241
    new-instance v4, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v12, v6

    const/4 v14, 0x0

    invoke-direct {v4, v12, v13, v14, v11}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 243
    .local v4, anim:Lcom/android/launcher2/InterruptibleInOutAnimator;
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 244
    move v10, v8

    .line 245
    .local v10, thisIndex:I
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4, v10}, Lcom/android/launcher2/CellLayout$2;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 263
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lcom/android/launcher2/CellLayout$3;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aput-object v4, v12, v8

    .line 240
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 274
    .end local v4           #anim:Lcom/android/launcher2/InterruptibleInOutAnimator;
    .end local v10           #thisIndex:I
    :cond_1
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 275
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    .line 276
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    .line 277
    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setHoverScale(F)V

    .line 278
    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setHoverAlpha(F)V

    .line 280
    new-instance v12, Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/launcher2/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 281
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIII)V

    .line 282
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->newCellPositioner()Lcom/android/launcher2/CellPositioner;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    .line 285
    new-instance v12, Lcom/android/launcher2/DeltaVisualizer;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/launcher2/DeltaVisualizer;-><init>(Lcom/android/launcher2/CellLayout;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    .line 286
    return-void

    .line 1305
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayout;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/CellLayout;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    return-object v0
.end method

.method private cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V
    .locals 7
    .parameter "dragState"

    .prologue
    .line 2164
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    .line 2165
    .local v4, view:Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 2167
    .local v1, item:Lcom/android/launcher2/BaseItem;
    instance-of v5, v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-ne v5, v6, :cond_0

    .line 2168
    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v2

    .line 2169
    .local v2, spanX:I
    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v3

    .local v3, spanY:I
    move-object v0, v4

    .line 2170
    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2171
    .local v0, hostview:Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->bitmapNeedsUpdated(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2172
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v5

    invoke-virtual {v0, p0, v2, v3, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->updateBitmapForSpan(Lcom/android/launcher2/CellLayout;IILcom/android/launcher2/ShadowBuilder;)Landroid/graphics/Bitmap;

    .line 2175
    .end local v0           #hostview:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v2           #spanX:I
    .end local v3           #spanY:I
    :cond_0
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1699
    const/4 v4, 0x0

    .local v4, y:I
    :goto_0
    if-ge v4, p4, :cond_7

    .line 1700
    const/4 v3, 0x0

    .local v3, x:I
    :goto_1
    if-ge v3, p3, :cond_6

    .line 1701
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_1

    move v0, v5

    .line 1702
    .local v0, available:Z
    :goto_2
    move v1, v3

    .local v1, i:I
    :goto_3
    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    if-ge v3, p3, :cond_0

    .line 1703
    move v2, v4

    .local v2, j:I
    :goto_4
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_4

    if-ge v4, p4, :cond_4

    .line 1704
    if-eqz v0, :cond_2

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_2

    move v0, v5

    .line 1705
    :goto_5
    if-nez v0, :cond_3

    .line 1709
    .end local v2           #j:I
    :cond_0
    if-eqz v0, :cond_5

    .line 1710
    aput v3, p0, v6

    .line 1711
    aput v4, p0, v5

    .line 1717
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v3           #x:I
    :goto_6
    return v5

    .restart local v3       #x:I
    :cond_1
    move v0, v6

    .line 1701
    goto :goto_2

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_2
    move v0, v6

    .line 1704
    goto :goto_5

    .line 1703
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1702
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1700
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1699
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3           #x:I
    :cond_7
    move v5, v6

    .line 1717
    goto :goto_6
.end method

.method static heightInLandscape(Landroid/content/res/Resources;I)I
    .locals 4
    .parameter "r"
    .parameter "numCells"

    .prologue
    .line 365
    const v2, 0x7f0c0053

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 366
    .local v0, cellHeight:I
    const v2, 0x7f0c0054

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0c0055

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 369
    .local v1, minGap:I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method

.method private invalidateVisualize()V
    .locals 3

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1489
    return-void
.end method

.method public static isItemApp()Z
    .locals 1

    .prologue
    .line 2180
    sget-boolean v0, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    return v0
.end method

.method private onLauncherTiltChanged(F)V
    .locals 3
    .parameter "xProgress"

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 549
    .local v0, density:F
    neg-float v1, p1

    const/high16 v2, 0x40c0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mShadowOffset:F

    .line 550
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 551
    return-void
.end method

.method private setChildrenAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 1165
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mChildrenAlpha:F

    .line 1166
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 1167
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1168
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1170
    :cond_0
    return-void
.end method

.method private updateGlowRect()V
    .locals 8

    .prologue
    .line 451
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v0, v3, v4

    .line 452
    .local v0, marginFraction:F
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v1, v3

    .line 453
    .local v1, marginX:I
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 454
    .local v2, marginY:I
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 456
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 457
    return-void
.end method

.method private updateMinSpan([II[I)V
    .locals 3
    .parameter "outSpans"
    .parameter "resizeMode"
    .parameter "inSpans"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2081
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v2, :cond_0

    .line 2082
    aget v0, p3, v1

    aput v0, p1, v1

    .line 2084
    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2085
    aget v0, p3, v2

    aput v0, p1, v2

    .line 2087
    :cond_1
    return-void
.end method

.method static widthInPortrait(Landroid/content/res/Resources;I)I
    .locals 4
    .parameter "r"
    .parameter "numCells"

    .prologue
    .line 354
    const v2, 0x7f0c0052

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 355
    .local v0, cellWidth:I
    const v2, 0x7f0c0054

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0c0055

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 358
    .local v1, minGap:I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 412
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/CellLayout;->addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;I)V

    .line 413
    return-void
.end method

.method public addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;I)V
    .locals 1
    .parameter "v"
    .parameter "index"

    .prologue
    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;I)V

    .line 418
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-nez v0, :cond_0

    .line 421
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 423
    :cond_0
    return-void
.end method

.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 2009
    const/4 v0, 0x0

    .line 2010
    .local v0, c:Z
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/PagedView;

    if-eqz v2, :cond_1

    .line 2011
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedView;

    .line 2012
    .local v1, v:Lcom/android/launcher2/PagedView;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->isPageConstructed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2013
    const/4 v0, 0x1

    .line 2018
    .end local v1           #v:Lcom/android/launcher2/PagedView;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher2/CellLayoutChildren;->addItem(Lcom/android/launcher2/BaseItem;Z)Z

    move-result v2

    return v2

    .line 2016
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "childId"
    .parameter "params"
    .parameter "markCells"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 587
    move-object v0, p4

    .line 591
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    .line 594
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 595
    :cond_0
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 597
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 599
    const/4 v1, 0x1

    .line 601
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZ)Z
    .locals 9
    .parameter "child"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "duration"
    .parameter "delay"
    .parameter "instant"

    .prologue
    const/4 v6, 0x1

    .line 1192
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    .line 1193
    .local v0, clc:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    .line 1195
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1197
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 1198
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 1199
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eq v7, v8, :cond_0

    .line 1200
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Tried to animate a item to an occupied cell. Failed to swap item positions because the inbound item belonged to a different cell layout."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1203
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1204
    .local v4, slp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-boolean v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1205
    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1206
    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1207
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 1210
    .end local v4           #slp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    iput-boolean v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1211
    iput p2, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1212
    iput p3, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1213
    if-eqz p6, :cond_2

    .line 1214
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1228
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :goto_0
    return v6

    .line 1219
    .restart local v3       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v5       #v:Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 1220
    .local v1, info:Lcom/android/launcher2/BaseItem;
    instance-of v7, v1, Lcom/android/launcher2/HomeItem;

    if-eqz v7, :cond_3

    move-object v2, v1

    .line 1221
    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 1222
    .local v2, item:Lcom/android/launcher2/HomeItem;
    iput p2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1223
    iput p3, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1226
    .end local v2           #item:Lcom/android/launcher2/HomeItem;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->CLIP_BY_DEFAULT()Z

    move-result v7

    invoke-virtual {p0, p1, p4, v6, v7}, Lcom/android/launcher2/CellLayout;->animateIcon(Landroid/view/View;IZZ)Z

    move-result v6

    goto :goto_0

    .line 1228
    .end local v1           #info:Lcom/android/launcher2/BaseItem;
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public animateIcon(Landroid/view/View;IZZ)Z
    .locals 11
    .parameter "child"
    .parameter "duration"
    .parameter "copyBitmap"
    .parameter "clip"

    .prologue
    .line 1232
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    if-eqz v1, :cond_0

    .line 1233
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1234
    const/4 v1, 0x1

    .line 1265
    :goto_0
    return v1

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 1238
    .local v0, l:Lcom/android/launcher2/AnimationLayer;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p4}, Lcom/android/launcher2/AnimationLayer;->updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1239
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1240
    .local v4, b:Landroid/graphics/Bitmap;
    if-nez v4, :cond_1

    .line 1241
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 1242
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1243
    if-nez v4, :cond_1

    .line 1244
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1245
    const/4 v1, 0x0

    goto :goto_0

    .line 1249
    :cond_1
    if-eqz p3, :cond_2

    .line 1250
    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1251
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 1254
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v4, v1}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v5

    .line 1255
    .local v5, from:[I
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    move-object v3, p1

    .line 1257
    check-cast v3, Lcom/android/launcher2/AppIconView;

    .line 1258
    .local v3, icon:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/AnimationLayer;->animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v10

    .line 1259
    .local v10, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer$Anim;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1260
    if-eqz p4, :cond_3

    .line 1261
    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer$Anim;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v6, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    neg-int v6, v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1262
    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer$Anim;->enableClipping()V

    .line 1265
    .end local v3           #icon:Lcom/android/launcher2/AppIconView;
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v5           #from:[I
    .end local v10           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method buildChildrenLayer()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->buildLayer()V

    .line 687
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 561
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 564
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 565
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 566
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 567
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 565
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 5
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 856
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 858
    .local v1, vStartPadding:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    .line 859
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    .line 860
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1803
    instance-of v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1478
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    .line 1479
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1480
    .local v0, oldIndex:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1481
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1482
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    aput v3, v1, v2

    .line 1483
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 1484
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 1485
    return-void
.end method

.method public clearTagCellInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 793
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 794
    .local v0, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 795
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 796
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 797
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 798
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 799
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_0

    .line 800
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellX:I

    .line 801
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellY:I

    .line 803
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 804
    return-void
.end method

.method commitDeltas()V
    .locals 11

    .prologue
    .line 2515
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2516
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/PositionDelta;

    .line 2517
    .local v8, d:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->changed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2518
    iget-object v10, v8, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    check-cast v10, Lcom/android/launcher2/HomeItem;

    .line 2519
    .local v10, item:Lcom/android/launcher2/HomeItem;
    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v1

    iput v1, v10, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 2520
    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v1

    iput v1, v10, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 2521
    new-instance v0, Lcom/android/launcher2/DragState;

    iget-object v1, v8, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V

    .line 2523
    .local v0, dummyDrag:Lcom/android/launcher2/DragState;
    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v4

    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    goto :goto_0

    .line 2526
    .end local v0           #dummyDrag:Lcom/android/launcher2/DragState;
    .end local v8           #d:Lcom/android/launcher2/PositionDelta;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #item:Lcom/android/launcher2/HomeItem;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    invoke-virtual {v1}, Lcom/android/launcher2/DeltaVisualizer;->reset()V

    .line 2527
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    .line 2528
    return-void
.end method

.method public createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 3
    .parameter "item"

    .prologue
    .line 2548
    sget-object v1, Lcom/android/launcher2/CellLayout$5;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2558
    const/4 v1, 0x0

    .end local p1
    :goto_0
    return-object v1

    .line 2551
    .restart local p1
    :pswitch_0
    invoke-static {p1}, Lcom/android/launcher2/AppIconView;->getHomeIconLayout(Lcom/android/launcher2/BaseItem;)I

    move-result v0

    .line 2552
    .local v0, layout:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    .end local p1
    invoke-virtual {v1, p1, v0, p0}, Lcom/android/launcher2/HomeView;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 2555
    .end local v0           #layout:I
    .restart local p1
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/HomeFolderItem;

    .end local p1
    const v2, 0x7f03001f

    invoke-virtual {v1, p1, v2, p0}, Lcom/android/launcher2/HomeView;->createFolder(Lcom/android/launcher2/HomeFolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 2548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public destroyDummyPanel()V
    .locals 3

    .prologue
    .line 1105
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v1, v1, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-nez v1, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 1107
    .local v0, l:Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1109
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v1, v1, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->blockDraw:Z

    .line 1110
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    .line 1111
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto :goto_0
.end method

.method public disableHardwareLayers()V
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->disableHardwareLayers()V

    .line 1064
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 2502
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 2503
    .local v0, r:Z
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 2508
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2511
    .end local v0           #r:Z
    :cond_1
    :goto_0
    return v0

    .line 2509
    .restart local v0       #r:Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 518
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 520
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 521
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getLeft()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mShadowOffset:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 522
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v5, p1}, Lcom/android/launcher2/CellLayoutChildren;->drawShadows(Landroid/graphics/Canvas;)V

    .line 523
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 525
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 526
    iget-boolean v5, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    if-eqz v5, :cond_1

    .line 527
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 528
    .local v4, paint:Landroid/graphics/Paint;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 529
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    aget v0, v5, v2

    .line 530
    .local v0, alpha:F
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 531
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 532
    .local v1, b:Landroid/graphics/Bitmap;
    const/high16 v5, 0x3f00

    add-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 533
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    invoke-virtual {p1, v1, v7, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 528
    .end local v1           #b:Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    .end local v0           #alpha:F
    .end local v2           #i:I
    .end local v4           #paint:Landroid/graphics/Paint;
    :cond_1
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    if-lez v5, :cond_2

    .line 539
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 540
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 541
    .local v3, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 542
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 543
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 545
    .end local v3           #p:Landroid/graphics/Paint;
    :cond_2
    return-void
.end method

.method public drawChildren(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->draw(Landroid/graphics/Canvas;)V

    .line 683
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->enableHardwareLayers()V

    .line 1060
    return-void
.end method

.method estimateDropCell(IIII[I)V
    .locals 7
    .parameter "originX"
    .parameter "originY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1285
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1286
    .local v1, countX:I
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1290
    .local v2, countY:I
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher2/CellLayout;->pointToCellRounded(II[I)V

    .line 1293
    aget v4, p5, v5

    add-int/2addr v4, p3

    sub-int v3, v4, v1

    .line 1294
    .local v3, rightOverhang:I
    if-lez v3, :cond_0

    .line 1295
    aget v4, p5, v5

    sub-int/2addr v4, v3

    aput v4, p5, v5

    .line 1297
    :cond_0
    aget v4, p5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v5

    .line 1298
    aget v4, p5, v6

    add-int/2addr v4, p4

    sub-int v0, v4, v2

    .line 1299
    .local v0, bottomOverhang:I
    if-lez v0, :cond_1

    .line 1300
    aget v4, p5, v6

    sub-int/2addr v4, v0

    aput v4, p5, v6

    .line 1302
    :cond_1
    aget v4, p5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v6

    .line 1303
    return-void
.end method

.method existsEmptyCell()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1514
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method findCellForSpan([III)Z
    .locals 6
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v4, -0x1

    .line 1531
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersects([IIIII)Z
    .locals 15
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "intersectX"
    .parameter "intersectY"

    .prologue
    .line 1548
    const/4 v3, 0x0

    .line 1549
    .local v3, foundCell:Z
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    .line 1551
    :goto_0
    const/4 v6, 0x0

    .line 1552
    .local v6, startX:I
    if-ltz p4, :cond_0

    .line 1553
    add-int/lit8 v10, p2, -0x1

    sub-int v10, p4, v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1555
    :cond_0
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v11, p2, -0x1

    sub-int v1, v10, v11

    .line 1556
    .local v1, endX:I
    if-ltz p4, :cond_1

    .line 1557
    add-int/lit8 v10, p2, -0x1

    add-int v11, p4, v10

    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    add-int/2addr v10, v11

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1559
    :cond_1
    const/4 v7, 0x0

    .line 1560
    .local v7, startY:I
    if-ltz p5, :cond_2

    .line 1561
    add-int/lit8 v10, p3, -0x1

    sub-int v10, p5, v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1563
    :cond_2
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v11, p3, -0x1

    sub-int v2, v10, v11

    .line 1564
    .local v2, endY:I
    if-ltz p5, :cond_3

    .line 1565
    add-int/lit8 v10, p3, -0x1

    add-int v11, p5, v10

    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    add-int/2addr v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1568
    :cond_3
    move v9, v7

    .local v9, y:I
    :goto_3
    if-ge v9, v2, :cond_b

    if-nez v3, :cond_b

    .line 1570
    move v8, v6

    .local v8, x:I
    :goto_4
    if-ge v8, v1, :cond_a

    .line 1571
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    move/from16 v0, p2

    if-ge v4, v0, :cond_8

    .line 1572
    const/4 v5, 0x0

    .local v5, j:I
    :goto_6
    move/from16 v0, p3

    if-ge v5, v0, :cond_7

    .line 1573
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    add-int v11, v8, v4

    add-int v12, v9, v5

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-interface {v10, v11, v12, v13, v14}, Lcom/android/launcher2/CellPositioner;->deltaAt(IIII)Lcom/android/launcher2/PositionDelta;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 1576
    add-int/2addr v8, v4

    .line 1570
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1557
    .end local v2           #endY:I
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v7           #startY:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 1565
    .restart local v2       #endY:I
    .restart local v7       #startY:I
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 1572
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v8       #x:I
    .restart local v9       #y:I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1571
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1581
    .end local v5           #j:I
    :cond_8
    if-eqz p1, :cond_9

    .line 1582
    const/4 v10, 0x0

    aput v8, p1, v10

    .line 1583
    const/4 v10, 0x1

    aput v9, p1, v10

    .line 1585
    :cond_9
    const/4 v3, 0x1

    .line 1568
    .end local v4           #i:I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1589
    .end local v8           #x:I
    :cond_b
    const/4 v10, -0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_c

    const/4 v10, -0x1

    move/from16 v0, p5

    if-ne v0, v10, :cond_c

    .line 1600
    return v3

    .line 1594
    :cond_c
    const/16 p4, -0x1

    .line 1595
    const/16 p5, -0x1

    .line 1596
    goto/16 :goto_0
.end method

.method findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z
    .locals 7
    .parameter "dragState"
    .parameter "x"
    .parameter "y"
    .parameter "resXY"
    .parameter "resSpan"

    .prologue
    .line 2077
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[IZ)Z

    move-result v0

    return v0
.end method

.method findDragCell(Lcom/android/launcher2/DragState;II[I[IZ)Z
    .locals 17
    .parameter "dragState"
    .parameter "x"
    .parameter "y"
    .parameter "resXY"
    .parameter "resSpan"
    .parameter "preventIgnoreOccupied"

    .prologue
    .line 2093
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v3, 0x0

    move/from16 v0, p2

    int-to-float v4, v0

    aput v4, v1, v3

    .line 2094
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v3, 0x1

    move/from16 v0, p3

    int-to-float v4, v0

    aput v4, v1, v3

    .line 2096
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v13

    .line 2101
    .local v13, item:Lcom/android/launcher2/BaseItem;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v15

    .line 2103
    .local v15, t:[I
    const/4 v1, 0x0

    aget v1, v15, v1

    sub-int v1, p2, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v8, v1, v3

    .line 2104
    .local v8, _x:I
    const/4 v1, 0x1

    aget v1, v15, v1

    sub-int v1, p3, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int v9, v1, v3

    .line 2105
    .local v9, _y:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 2106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x0

    aget v10, v1, v3

    .line 2107
    .local v10, cell_x:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x1

    aget v11, v1, v3

    .line 2109
    .local v11, cell_y:I
    new-instance v2, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v2, v13}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/BaseItem;)V

    .line 2110
    .local v2, dragDelta:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v2, v10}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 2111
    invoke-virtual {v2, v11}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 2115
    if-nez p6, :cond_4

    iget-object v1, v13, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v3, :cond_0

    iget-object v1, v13, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, v13, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v3, :cond_1

    iget-object v1, v13, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, v13, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v3, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_4

    const/4 v7, 0x1

    .line 2121
    .local v7, ignoreOccupied:Z
    :goto_0
    const/4 v1, 0x2

    new-array v14, v1, [I

    const/4 v1, 0x0

    invoke-virtual {v13}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v3

    aput v3, v14, v1

    const/4 v1, 0x1

    invoke-virtual {v13}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v3

    aput v3, v14, v1

    .line 2122
    .local v14, minSpans:[I
    instance-of v1, v13, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v1, :cond_5

    .line 2123
    move-object v0, v13

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v16, v0

    .line 2124
    .local v16, temp:Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher2/HomeWidgetItem;->resizeMode:I

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/HomeWidgetItem;->getResizeSpans()[I

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1, v3}, Lcom/android/launcher2/CellLayout;->updateMinSpan([II[I)V

    .line 2135
    .end local v16           #temp:Lcom/android/launcher2/HomeWidgetItem;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v3, 0x0

    aget v3, v14, v3

    const/4 v4, 0x1

    aget v4, v14, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/android/launcher2/CellPositioner;->updateDeltasForDrag(Lcom/android/launcher2/PositionDelta;IIZZZ)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2137
    const/4 v1, 0x0

    const/4 v3, -0x1

    aput v3, p4, v1

    .line 2138
    const/4 v1, 0x1

    const/4 v3, -0x1

    aput v3, p4, v1

    .line 2139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    .line 2140
    const/4 v1, 0x0

    .line 2155
    .end local v2           #dragDelta:Lcom/android/launcher2/PositionDelta;
    .end local v7           #ignoreOccupied:Z
    .end local v8           #_x:I
    .end local v9           #_y:I
    .end local v10           #cell_x:I
    .end local v11           #cell_y:I
    .end local v14           #minSpans:[I
    .end local v15           #t:[I
    :goto_2
    return v1

    .line 2115
    .restart local v2       #dragDelta:Lcom/android/launcher2/PositionDelta;
    .restart local v8       #_x:I
    .restart local v9       #_y:I
    .restart local v10       #cell_x:I
    .restart local v11       #cell_y:I
    .restart local v15       #t:[I
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 2125
    .restart local v7       #ignoreOccupied:Z
    .restart local v14       #minSpans:[I
    :cond_5
    instance-of v1, v13, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v1, :cond_7

    .line 2126
    move-object v0, v13

    check-cast v0, Lcom/android/launcher2/HomePendingWidget;

    move-object/from16 v16, v0

    .line 2127
    .local v16, temp:Lcom/android/launcher2/HomePendingWidget;
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher2/HomePendingWidget;->resizeMode:I

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/HomePendingWidget;->getResizeSpans()[I

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1, v3}, Lcom/android/launcher2/CellLayout;->updateMinSpan([II[I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2151
    .end local v2           #dragDelta:Lcom/android/launcher2/PositionDelta;
    .end local v7           #ignoreOccupied:Z
    .end local v8           #_x:I
    .end local v9           #_y:I
    .end local v10           #cell_x:I
    .end local v11           #cell_y:I
    .end local v14           #minSpans:[I
    .end local v15           #t:[I
    .end local v16           #temp:Lcom/android/launcher2/HomePendingWidget;
    :catch_0
    move-exception v12

    .line 2152
    .local v12, e:Ljava/lang/NullPointerException;
    sget-boolean v1, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v1, :cond_6

    const-string v1, "CellLayout"

    const-string v3, "Null Pointer Exception Occurred"

    invoke-static {v1, v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2155
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 2128
    .end local v12           #e:Ljava/lang/NullPointerException;
    .restart local v2       #dragDelta:Lcom/android/launcher2/PositionDelta;
    .restart local v7       #ignoreOccupied:Z
    .restart local v8       #_x:I
    .restart local v9       #_y:I
    .restart local v10       #cell_x:I
    .restart local v11       #cell_y:I
    .restart local v14       #minSpans:[I
    .restart local v15       #t:[I
    :cond_7
    :try_start_1
    instance-of v1, v13, Lcom/android/launcher2/HomePendingSurfaceWidget;

    if-eqz v1, :cond_8

    .line 2129
    move-object v0, v13

    check-cast v0, Lcom/android/launcher2/HomePendingSurfaceWidget;

    move-object/from16 v16, v0

    .line 2130
    .local v16, temp:Lcom/android/launcher2/HomePendingSurfaceWidget;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget v1, v1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/HomePendingSurfaceWidget;->getResizeSpans()[I

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1, v3}, Lcom/android/launcher2/CellLayout;->updateMinSpan([II[I)V

    goto :goto_1

    .line 2131
    .end local v16           #temp:Lcom/android/launcher2/HomePendingSurfaceWidget;
    :cond_8
    instance-of v1, v13, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v1, :cond_3

    .line 2132
    move-object v0, v13

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetItem;

    move-object/from16 v16, v0

    .line 2133
    .local v16, temp:Lcom/android/launcher2/SurfaceWidgetItem;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget v1, v1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/SurfaceWidgetItem;->getResizeSpans()[I

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1, v3}, Lcom/android/launcher2/CellLayout;->updateMinSpan([II[I)V

    goto :goto_1

    .line 2142
    .end local v16           #temp:Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v3}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/DeltaVisualizer;->updateForDeltas(Ljava/util/List;)V

    .line 2144
    const/4 v1, 0x0

    invoke-virtual {v2}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v3

    aput v3, p4, v1

    .line 2145
    const/4 v1, 0x1

    invoke-virtual {v2}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    aput v3, p4, v1

    .line 2146
    const/4 v1, 0x0

    invoke-virtual {v2}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    aput v3, p5, v1

    .line 2147
    const/4 v1, 0x1

    invoke-virtual {v2}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    aput v3, p5, v1

    .line 2149
    const/4 v1, 0x0

    aget v1, p4, v1

    if-ne v1, v10, :cond_a

    const/4 v1, 0x1

    aget v1, p4, v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v1, v11, :cond_a

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 6
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 1508
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x0

    aget v1, v0, v3

    .line 1509
    .local v1, cell_x:I
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 1510
    .local v2, cell_y:I
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher2/CellPositioner;->findNearestVacantArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1798
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1808
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAbsMatrix(Landroid/graphics/Matrix;Landroid/view/ViewParent;)Landroid/graphics/Matrix;
    .locals 4
    .parameter "res"
    .parameter "stop"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 291
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 293
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 294
    .local v1, viewParent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_0

    if-eq p2, v1, :cond_0

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 295
    check-cast v0, Landroid/view/View;

    .line 296
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 298
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 299
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 300
    goto :goto_0

    .line 302
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return-object p1
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundBaseDarken()F
    .locals 3

    .prologue
    .line 1125
    const/4 v1, 0x0

    .line 1126
    .local v1, result:F
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1127
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v2, :cond_0

    .line 1128
    check-cast v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->getBaseDarken()F

    move-result v1

    .line 1130
    :cond_0
    return v1
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 867
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "i"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenAlpha()F
    .locals 1

    .prologue
    .line 1173
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mChildrenAlpha:F

    return v0
.end method

.method public getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    return-object v0
.end method

.method getContainer()Lcom/android/launcher2/CellLayoutContainer;
    .locals 2

    .prologue
    .line 2563
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2564
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutContainer;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2565
    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    goto :goto_0

    .line 2567
    :cond_0
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutContainer;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher2/CellLayoutContainer;

    .line 2568
    .end local v0           #parent:Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x65

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x64

    goto :goto_0
.end method

.method getContentRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .parameter "r"

    .prologue
    .line 879
    if-nez p1, :cond_0

    .line 880
    new-instance p1, Landroid/graphics/Rect;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 882
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 883
    .local v1, left:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    .line 884
    .local v3, top:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    sub-int v2, v4, v5

    .line 885
    .local v2, right:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 886
    .local v0, bottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 887
    return-object p1
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    return v0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 1

    .prologue
    .line 1781
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getDesiredHeightForRows(I)I

    move-result v0

    return v0
.end method

.method public getDesiredHeightForRows(I)I
    .locals 3
    .parameter "rows"

    .prologue
    .line 1772
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    add-int v0, v1, v2

    .line 1774
    .local v0, height:I
    if-lez p1, :cond_0

    .line 1775
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    sub-int/2addr v0, v1

    .line 1777
    :cond_0
    return v0
.end method

.method public getDesiredWidth()I
    .locals 1

    .prologue
    .line 1759
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getDesiredWidthForColumns(I)I

    move-result v0

    return v0
.end method

.method public getDesiredWidthForColumns(I)I
    .locals 3
    .parameter "columns"

    .prologue
    .line 1763
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    add-int v0, v1, v2

    .line 1765
    .local v0, width:I
    if-lez p1, :cond_0

    .line 1766
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    sub-int/2addr v0, v1

    .line 1768
    :cond_0
    return v0
.end method

.method public getEmptyMessageVisibility()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpandabilityArrayForView(Landroid/view/View;[I)V
    .locals 5
    .parameter "view"
    .parameter "expandability"

    .prologue
    .line 1726
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1728
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v1, 0x0

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aput v2, p2, v1

    .line 1729
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    aput v2, p2, v1

    .line 1730
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, p2, v1

    .line 1731
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, p2, v1

    .line 1733
    return-void
.end method

.method getGapX()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    return v0
.end method

.method getGapY()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    return v0
.end method

.method getHeightGap()I
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    return v0
.end method

.method public getHoverAlpha()F
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundAlpha:F

    return v0
.end method

.method public getHoverScale()F
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getItemAt(II)Lcom/android/launcher2/BaseItem;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(II)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    return-object v0
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 2580
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageItemCount()I
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageType()I
    .locals 1

    .prologue
    .line 2590
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mPageType:I

    return v0
.end method

.method getScreen()I
    .locals 1

    .prologue
    .line 2572
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 2573
    const/4 v0, -0x1

    .line 2575
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getTag()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 808
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellInfo;

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 2
    .parameter "item"

    .prologue
    .line 2047
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 2048
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 2049
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 2051
    :cond_0
    return-object v0
.end method

.method getWidthGap()I
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    return v0
.end method

.method public hide(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/CellLayoutChildren;->setItemVisibility(Lcom/android/launcher2/BaseItem;I)V

    .line 2034
    return-void
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public isOccupiedNoThrow(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1789
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge p2, v2, :cond_1

    .line 1790
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v2, p1, p2, v0, v0}, Lcom/android/launcher2/CellPositioner;->deltaAt(IIII)Lcom/android/launcher2/PositionDelta;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1792
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1790
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1792
    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsPaused:Z

    return v0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 1997
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method abstract newCellPositioner()Lcom/android/launcher2/CellPositioner;
.end method

.method protected noRoomForDrop(Lcom/android/launcher2/DragState;III)V
    .locals 0
    .parameter "dragState"
    .parameter "screen"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2602
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 691
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 692
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    .line 704
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 713
    return-void
.end method

.method onDragEnter()V
    .locals 1

    .prologue
    .line 1609
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-nez v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 1613
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_1

    .line 1614
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    .line 1621
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 1622
    return-void

    .line 1618
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    goto :goto_0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 37
    .parameter "event"

    .prologue
    .line 2188
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    .line 2189
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v30

    .line 2190
    .local v30, parent:Lcom/android/launcher2/CellLayoutContainer;
    if-nez v30, :cond_0

    const/4 v2, 0x0

    .line 2496
    :goto_0
    return v2

    .line 2192
    :cond_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-eqz v2, :cond_1

    .line 2193
    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 2196
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/DragState;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 2197
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragState;

    .line 2199
    .local v3, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v13

    .line 2202
    .local v13, action:I
    const/4 v2, 0x4

    if-eq v13, v2, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2203
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 2204
    const/4 v2, 0x1

    goto :goto_0

    .line 2207
    :cond_3
    const/4 v2, 0x4

    if-eq v13, v2, :cond_4

    const/4 v2, 0x3

    if-eq v13, v2, :cond_4

    const/4 v2, 0x1

    if-eq v13, v2, :cond_4

    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_4

    move-object/from16 v2, v30

    check-cast v2, Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2210
    const/4 v2, 0x1

    goto :goto_0

    .line 2213
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v4, v2

    .line 2214
    .local v4, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v5, v2

    .line 2216
    .local v5, y:I
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v34

    .line 2217
    .local v34, view:Landroid/view/View;
    const/4 v2, 0x1

    if-ne v13, v2, :cond_a

    .line 2218
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 2228
    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v17

    .line 2229
    .local v17, dragItem:Lcom/android/launcher2/BaseItem;
    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v24

    .line 2230
    .local v24, isWidget:Z
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v6, :cond_5

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v6, :cond_5

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v6, :cond_b

    :cond_5
    const/16 v23, 0x1

    .line 2233
    .local v23, isApp:Z
    :goto_2
    sput-boolean v23, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    .line 2241
    const/4 v2, 0x5

    if-ne v13, v2, :cond_6

    .line 2242
    iget-object v2, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_6

    iget-object v2, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v2, v2, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_6

    .line 2243
    iget-object v0, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/launcher2/CellLayout;

    .line 2244
    .local v26, l:Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2245
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2250
    .end local v26           #l:Lcom/android/launcher2/CellLayout;
    :cond_6
    const/16 v35, 0x1

    .line 2252
    .local v35, wasCellDraggedOverAvailable:Z
    packed-switch v13, :pswitch_data_0

    .line 2273
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x0

    aget v10, v2, v6

    .line 2274
    .local v10, spanX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x1

    aget v11, v2, v6

    .line 2276
    .local v11, spanY:I
    packed-switch v13, :pswitch_data_1

    .line 2295
    :cond_8
    :goto_4
    packed-switch v13, :pswitch_data_2

    .line 2495
    .end local v34           #view:Landroid/view/View;
    :cond_9
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDragEvent(Landroid/view/DragEvent;)Z

    .line 2496
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2226
    .end local v10           #spanX:I
    .end local v11           #spanY:I
    .end local v17           #dragItem:Lcom/android/launcher2/BaseItem;
    .end local v23           #isApp:Z
    .end local v24           #isWidget:Z
    .end local v35           #wasCellDraggedOverAvailable:Z
    .restart local v34       #view:Landroid/view/View;
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    goto :goto_1

    .line 2230
    .restart local v17       #dragItem:Lcom/android/launcher2/BaseItem;
    .restart local v24       #isWidget:Z
    :cond_b
    const/16 v23, 0x0

    goto :goto_2

    .line 2257
    .restart local v23       #isApp:Z
    .restart local v35       #wasCellDraggedOverAvailable:Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->getLocationInWindow([I)V

    .line 2258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    sub-int/2addr v4, v2

    .line 2259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x1

    aget v2, v2, v6

    sub-int/2addr v5, v2

    .line 2261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v6, 0x0

    int-to-float v7, v4

    aput v7, v2, v6

    .line 2262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v6, 0x1

    int-to-float v7, v5

    aput v7, v2, v6

    goto :goto_3

    .line 2265
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-nez v2, :cond_7

    .line 2271
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z

    move-result v35

    goto :goto_3

    .line 2279
    .restart local v10       #spanX:I
    .restart local v11       #spanY:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2280
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v31, v0

    .line 2281
    .local v31, r:[I
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/HomeItem;

    .line 2282
    .local v25, item:Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v2, v6, v1}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 2283
    const/4 v2, 0x0

    aget v2, v31, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int v4, v2, v6

    .line 2284
    const/4 v2, 0x1

    aget v2, v31, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int v5, v2, v6

    .line 2286
    move-object/from16 v0, v34

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v2, :cond_8

    .line 2287
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v29

    .line 2288
    .local v29, o:[I
    const/4 v2, 0x0

    aget v2, v29, v2

    add-int/2addr v4, v2

    .line 2289
    const/4 v2, 0x1

    aget v2, v29, v2

    add-int/2addr v5, v2

    goto/16 :goto_4

    .line 2297
    .end local v25           #item:Lcom/android/launcher2/HomeItem;
    .end local v29           #o:[I
    .end local v31           #r:[I
    :pswitch_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2298
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    if-ne v2, v6, :cond_c

    .line 2299
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 2300
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2303
    :cond_c
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragStartedWithItem(Landroid/view/View;)V

    .line 2304
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    goto/16 :goto_5

    .line 2308
    :pswitch_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2330
    iget-object v2, v3, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v2, :cond_e

    .line 2331
    const/16 v18, 0x1

    .line 2332
    .local v18, drawOutline:Z
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/FolderItem;

    if-nez v2, :cond_d

    .line 2333
    if-nez v24, :cond_d

    .line 2334
    if-eqz v35, :cond_d

    .line 2335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/FolderIconView;

    if-nez v2, :cond_f

    const/16 v18, 0x1

    .line 2340
    :cond_d
    :goto_6
    if-eqz v18, :cond_10

    .line 2341
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v6, p0

    move-object/from16 v7, v34

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    .line 2347
    .end local v18           #drawOutline:Z
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-nez v2, :cond_9

    .line 2350
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2351
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    goto/16 :goto_5

    .line 2335
    .restart local v18       #drawOutline:Z
    :cond_f
    const/16 v18, 0x0

    goto :goto_6

    .line 2342
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    if-eqz v2, :cond_e

    .line 2343
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    goto :goto_7

    .line 2356
    .end local v18           #drawOutline:Z
    :pswitch_6
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v19

    .line 2357
    .local v19, folder:Lcom/android/launcher2/Folder;
    if-eqz v19, :cond_11

    .line 2358
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    .line 2360
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2361
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    goto/16 :goto_5

    .line 2364
    .end local v19           #folder:Lcom/android/launcher2/Folder;
    :pswitch_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2365
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2366
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 2367
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    .line 2368
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/CellLayout;->cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_5

    .line 2374
    :pswitch_8
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v2

    if-nez v2, :cond_22

    .line 2376
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v14

    .line 2377
    .local v14, container:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v12

    .line 2379
    .local v12, screen:I
    const-wide/16 v6, -0x65

    cmp-long v2, v14, v6

    if-nez v2, :cond_16

    const/16 v16, 0x1

    .line 2380
    .local v16, containerIsHotSeat:Z
    :goto_8
    if-eqz v16, :cond_13

    move-object/from16 v2, v30

    .line 2381
    check-cast v2, Lcom/android/launcher2/Hotseat;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v12

    .line 2384
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    const/4 v6, -0x1

    if-eq v2, v6, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x1

    aget v2, v2, v6

    const/4 v6, -0x1

    if-eq v2, v6, :cond_17

    const/16 v21, 0x1

    .line 2386
    .local v21, hasDroppableCell:Z
    :goto_9
    if-eqz v21, :cond_25

    .line 2387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_18

    const/16 v36, 0x1

    .line 2388
    .local v36, wasPageEmpty:Z
    :goto_a
    move-object/from16 v0, v34

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v2, :cond_14

    move-object/from16 v0, v34

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v2, :cond_1c

    .line 2390
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    if-nez v2, :cond_1b

    iget-object v2, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-ne v2, v0, :cond_1b

    .line 2391
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 2392
    move-object/from16 v0, v34

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v2, :cond_19

    .line 2394
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2395
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    iget v2, v2, Lcom/android/launcher2/SurfaceWidgetItem;->mScreen:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    if-ne v2, v6, :cond_15

    .line 2396
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {v2}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    .line 2398
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    check-cast v34, Lcom/android/launcher2/SurfaceWidgetView;

    .end local v34           #view:Landroid/view/View;
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/Workspace;->enterSurfaceWidgetResizeMode(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/CellLayout;)V

    .line 2399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    goto/16 :goto_5

    .line 2379
    .end local v16           #containerIsHotSeat:Z
    .end local v21           #hasDroppableCell:Z
    .end local v36           #wasPageEmpty:Z
    .restart local v34       #view:Landroid/view/View;
    :cond_16
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 2384
    .restart local v16       #containerIsHotSeat:Z
    :cond_17
    const/16 v21, 0x0

    goto :goto_9

    .line 2387
    .restart local v21       #hasDroppableCell:Z
    :cond_18
    const/16 v36, 0x0

    goto :goto_a

    .line 2403
    .restart local v36       #wasPageEmpty:Z
    :cond_19
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1a

    .line 2404
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/CellLayout;->isWidgetResized:Z

    .line 2405
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    check-cast v34, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .end local v34           #view:Landroid/view/View;
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    goto/16 :goto_5

    .line 2412
    .restart local v34       #view:Landroid/view/View;
    :cond_1b
    move-object/from16 v0, v34

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v2, :cond_1c

    .line 2413
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2415
    :cond_1c
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v25

    .line 2416
    .local v25, item:Lcom/android/launcher2/BaseItem;
    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_1d

    move-object/from16 v20, v25

    .line 2417
    check-cast v20, Lcom/android/launcher2/HomeItem;

    .line 2418
    .local v20, hItem:Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, v20

    iput v10, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 2419
    move-object/from16 v0, v20

    iput v11, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 2421
    .end local v20           #hItem:Lcom/android/launcher2/HomeItem;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v28

    .line 2422
    .local v28, mViewOverDragCell:Landroid/view/View;
    if-eqz v35, :cond_1e

    if-eqz v28, :cond_1e

    move-object/from16 v0, v28

    instance-of v2, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_1e

    .line 2423
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2429
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v8, v2, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x1

    aget v9, v2, v6

    move-object v6, v3

    move-object/from16 v7, p0

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2430
    move-object/from16 v0, v34

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_24

    .line 2431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    move-object/from16 v2, v34

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    invoke-virtual {v6, v2, v0}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2438
    :cond_1f
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->commitDeltas()V

    .line 2441
    :cond_20
    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_21

    if-eqz v36, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v2, v30

    .line 2444
    check-cast v2, Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->turnOffEmptyPageMsg()V

    .line 2447
    :cond_21
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 2449
    move-object/from16 v0, v34

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_22

    .line 2450
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Lcom/android/launcher2/CellLayout$LayoutParams;

    .local v27, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v32, v34

    .line 2451
    check-cast v32, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2452
    .local v32, resize_view:Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/HomeWidgetItem;

    .line 2454
    .local v22, info:Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    move-object/from16 v0, v27

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v27

    iget v7, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v22

    iget v9, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    .line 2463
    .end local v12           #screen:I
    .end local v14           #container:J
    .end local v16           #containerIsHotSeat:Z
    .end local v21           #hasDroppableCell:Z
    .end local v22           #info:Lcom/android/launcher2/HomeWidgetItem;
    .end local v25           #item:Lcom/android/launcher2/BaseItem;
    .end local v27           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v28           #mViewOverDragCell:Landroid/view/View;
    .end local v32           #resize_view:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v36           #wasPageEmpty:Z
    :cond_22
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_23

    .line 2464
    const/16 v2, 0x6457

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/launcher2/CellLayout;->performHapticFeedback(II)Z

    .line 2466
    :cond_23
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 2467
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v33

    .line 2468
    .local v33, tag:Ljava/lang/Object;
    move-object/from16 v0, v33

    instance-of v2, v0, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v2, :cond_26

    .line 2469
    check-cast v33, Lcom/android/launcher2/SamsungWidgetItem;

    .end local v33           #tag:Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnResume(Landroid/content/Context;)V

    goto/16 :goto_5

    .line 2434
    .restart local v12       #screen:I
    .restart local v14       #container:J
    .restart local v16       #containerIsHotSeat:Z
    .restart local v21       #hasDroppableCell:Z
    .restart local v25       #item:Lcom/android/launcher2/BaseItem;
    .restart local v28       #mViewOverDragCell:Landroid/view/View;
    .restart local v36       #wasPageEmpty:Z
    :cond_24
    move-object/from16 v0, v34

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v2, :cond_1f

    .line 2436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    move-object/from16 v2, v34

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v0, p0

    invoke-virtual {v6, v2, v0}, Lcom/android/launcher2/Workspace;->enterSurfaceWidgetResizeMode(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_b

    .line 2460
    .end local v25           #item:Lcom/android/launcher2/BaseItem;
    .end local v28           #mViewOverDragCell:Landroid/view/View;
    .end local v36           #wasPageEmpty:Z
    :cond_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v4, v5}, Lcom/android/launcher2/CellLayout;->noRoomForDrop(Lcom/android/launcher2/DragState;III)V

    goto :goto_c

    .line 2470
    .end local v12           #screen:I
    .end local v14           #container:J
    .end local v16           #containerIsHotSeat:Z
    .end local v21           #hasDroppableCell:Z
    .restart local v33       #tag:Ljava/lang/Object;
    :cond_26
    move-object/from16 v0, v33

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v2, :cond_9

    move-object/from16 v2, v33

    .line 2471
    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    iget v2, v2, Lcom/android/launcher2/SurfaceWidgetItem;->mScreen:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    if-ne v2, v6, :cond_9

    .line 2472
    check-cast v33, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v33           #tag:Ljava/lang/Object;
    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto/16 :goto_5

    .line 2478
    :pswitch_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2479
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 2481
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2482
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2483
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 2484
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 2485
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 2486
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/CellLayout;->cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V

    .line 2487
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v2, :cond_9

    .line 2488
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2489
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    iget v2, v2, Lcom/android/launcher2/SurfaceWidgetItem;->mScreen:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    if-ne v2, v6, :cond_9

    .line 2490
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {v2}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto/16 :goto_5

    .line 2252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2276
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    .line 2295
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method onDragExit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1628
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    invoke-virtual {v0}, Lcom/android/launcher2/DeltaVisualizer;->reset()V

    .line 1633
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    .line 1634
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 1637
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 1639
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_1

    .line 1640
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1649
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v1, v0, v2

    .line 1650
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v1, v0, v3

    .line 1651
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1652
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1654
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 1656
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v0, v3}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    .line 1657
    return-void

    .line 1644
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 484
    iget-object v9, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->postInvalidate()V

    .line 490
    :cond_0
    iget v9, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 491
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 492
    .local v1, countX:I
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 494
    .local v2, countY:I
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 495
    .local v3, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 496
    .local v6, width:I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 498
    .local v4, height:I
    const/high16 v9, 0x437f

    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 500
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    div-int/lit8 v10, v6, 0x2

    sub-int v7, v9, v10

    .line 501
    .local v7, x:I
    iget v9, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v10, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v9, v10

    add-int/2addr v7, v9

    .line 502
    const/4 v0, 0x1

    .local v0, col:I
    :goto_0
    add-int/lit8 v9, v1, -0x1

    if-gt v0, v9, :cond_2

    .line 503
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    div-int/lit8 v10, v4, 0x2

    sub-int v8, v9, v10

    .line 504
    .local v8, y:I
    iget v9, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v10, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    .line 505
    const/4 v5, 0x1

    .local v5, row:I
    :goto_1
    add-int/lit8 v9, v2, -0x1

    if-gt v5, v9, :cond_1

    .line 506
    add-int v9, v7, v6

    add-int v10, v8, v4

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 507
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 508
    iget v9, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v10, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    .line 505
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 510
    :cond_1
    iget v9, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v10, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v9, v10

    add-int/2addr v7, v9

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    .end local v0           #col:I
    .end local v1           #countX:I
    .end local v2           #countY:I
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #height:I
    .end local v5           #row:I
    .end local v6           #width:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_2
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1667
    if-eqz p1, :cond_0

    .line 1668
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1669
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 1670
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1672
    .end local v0           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 2024
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 895
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 896
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    const v0, 0x7f0700c1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    .line 899
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 771
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 773
    .local v0, action:I
    if-nez v0, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    const/4 v1, 0x1

    .line 789
    :goto_0
    return v1

    .line 780
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 789
    :goto_1
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 782
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->setTagToCellInfoForPoint(II)V

    goto :goto_1

    .line 786
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    goto :goto_1

    .line 780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 993
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 994
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 995
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v4, :cond_0

    .line 996
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    sub-int v6, p4, p2

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    sub-int/2addr v6, v7

    sub-int v7, p5, p3

    iget v8, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    sub-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 993
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 999
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1000
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v8, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1003
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v16

    .line 924
    .local v16, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v10

    .line 926
    .local v10, height:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 927
    .local v17, widthMode:I
    if-nez v17, :cond_3

    .line 928
    const/high16 v17, -0x8000

    .line 939
    :cond_0
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 940
    .local v11, heightMode:I
    if-nez v11, :cond_5

    .line 941
    const/high16 v11, -0x8000

    .line 952
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 956
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    move/from16 v18, v0

    sub-int v18, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v7, v18, v19

    .line 957
    .local v7, childWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    move/from16 v18, v0

    sub-int v18, v10, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 959
    .local v5, childHeight:I
    move/from16 v0, v17

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 960
    .local v8, childWidthSpec:I
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 962
    .local v6, childHeightSpec:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v9

    .line 963
    .local v9, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v9, :cond_7

    .line 964
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 965
    .local v4, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v4, v0, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 966
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    .line 963
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 930
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childHeight:I
    .end local v6           #childHeightSpec:I
    .end local v7           #childWidth:I
    .end local v8           #childWidthSpec:I
    .end local v9           #count:I
    .end local v11           #heightMode:I
    .end local v12           #i:I
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 931
    .local v15, specWidth:I
    sget-boolean v18, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v18, :cond_4

    move/from16 v0, v16

    if-le v0, v15, :cond_4

    .line 932
    const-string v18, "CellLayout"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".onMeasure. Parent maxWidth: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; setting to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_4
    const/high16 v18, 0x4000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move/from16 v0, v16

    if-ge v0, v15, :cond_0

    .line 936
    move/from16 v16, v15

    goto/16 :goto_0

    .line 943
    .end local v15           #specWidth:I
    .restart local v11       #heightMode:I
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 944
    .local v14, specHeight:I
    sget-boolean v18, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v18, :cond_6

    if-le v10, v14, :cond_6

    .line 945
    const-string v18, "CellLayout"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".onMeasure. Parent maxHeight: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; setting to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_6
    const/high16 v18, 0x4000

    move/from16 v0, v18

    if-ne v11, v0, :cond_1

    if-ge v10, v14, :cond_1

    .line 949
    move v10, v14

    goto/16 :goto_1

    .line 971
    .end local v14           #specHeight:I
    .restart local v5       #childHeight:I
    .restart local v6       #childHeightSpec:I
    .restart local v7       #childWidth:I
    .restart local v8       #childWidthSpec:I
    .restart local v9       #count:I
    .restart local v12       #i:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v18, v0

    const/high16 v19, -0x8000

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/high16 v20, -0x8000

    move/from16 v0, v20

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->measureChild(Landroid/view/View;II)V

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 983
    .local v13, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 985
    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    move/from16 v18, v0

    sub-int v18, v10, v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 986
    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    move/from16 v18, v0

    sub-int v18, v16, v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 988
    .end local v13           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_8
    return-void
.end method

.method public onPreDeltaVisualize(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .parameter "v"
    .parameter "item"

    .prologue
    .line 1273
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1152
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x0

    .line 1007
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1008
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1009
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1011
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->updateGlowRect()V

    .line 1012
    return-void
.end method

.method public onStateAnimationEnd(Lcom/android/launcher2/Workspace$State;)V
    .locals 10
    .parameter "state"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2055
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p1, v0, :cond_0

    .line 2056
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v7

    .line 2057
    .local v7, parent:Lcom/android/launcher2/CellLayoutContainer;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 2058
    .local v6, inv:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2059
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2060
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    aget v0, v0, v9

    float-to-int v2, v0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    aget v0, v0, v8

    float-to-int v3, v0

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z

    .line 2061
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/launcher2/CellLayoutContainer;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    aget v4, v0, v9

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    aget v5, v0, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    .line 2064
    .end local v6           #inv:Landroid/graphics/Matrix;
    .end local v7           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_0
    iput-boolean v8, p0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    .line 2065
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 2066
    return-void
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 10
    .parameter "child"

    .prologue
    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeItem;

    .line 607
    .local v8, item:Lcom/android/launcher2/HomeItem;
    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 608
    const-wide/16 v0, -0x64

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget v3, v8, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, v8, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v5, v8, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v6, v8, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v7

    .line 612
    .local v7, childId:I
    invoke-virtual {p1, v7}, Landroid/view/View;->setId(I)V

    .line 616
    .end local v7           #childId:I
    .end local v8           #item:Lcom/android/launcher2/HomeItem;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 617
    .local v9, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    .line 618
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 812
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[IIIII)V

    .line 813
    return-void
.end method

.method pointToCellExact(II[IIIII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "result"
    .parameter "x_lower_bound"
    .parameter "x_upper_bound"
    .parameter "y_lower_bound"
    .parameter "y_upper_bound"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 824
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 825
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 827
    .local v1, vStartPadding:I
    sub-int v2, p1, v0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    aput v2, p3, v5

    .line 828
    sub-int v2, p2, v1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    aput v2, p3, v6

    .line 830
    aget v2, p3, v5

    if-ge v2, p4, :cond_0

    aput p4, p3, v5

    .line 831
    :cond_0
    aget v2, p3, v5

    if-lt v2, p5, :cond_1

    add-int/lit8 v2, p5, -0x1

    aput v2, p3, v5

    .line 832
    :cond_1
    aget v2, p3, v6

    if-ge v2, p6, :cond_2

    aput p6, p3, v6

    .line 833
    :cond_2
    aget v2, p3, v6

    if-lt v2, p7, :cond_3

    add-int/lit8 v2, p7, -0x1

    aput v2, p3, v6

    .line 834
    :cond_3
    return-void
.end method

.method pointToCellRounded(II[I)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    .line 843
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 844
    return-void
.end method

.method realRemoveView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 658
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 659
    return-void
.end method

.method refreshCellDimension()V
    .locals 5

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIII)V

    .line 326
    return-void
.end method

.method public removeAllItems()V
    .locals 1

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllItems()V

    .line 2043
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 634
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllItems()V

    .line 641
    :cond_0
    return-void
.end method

.method public removeAllViewsOnPage()V
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 1041
    return-void
.end method

.method public removeChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .locals 4

    .prologue
    .line 398
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 399
    .local v2, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 400
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 401
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 402
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 403
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_1

    .line 404
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 408
    :cond_0
    return-object v2

    .line 402
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 649
    instance-of v0, p1, Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 651
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewAt(I)V

    .line 664
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    .line 669
    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewAt(I)V

    .line 1046
    return-void
.end method

.method public removeViewWithoutMarkingCells(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 645
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViews(II)V

    .line 674
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViewsInLayout(II)V

    .line 679
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    invoke-virtual {v0}, Lcom/android/launcher2/DeltaVisualizer;->reset()V

    .line 2536
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    .line 2537
    return-void
.end method

.method public setAcceptsDrops(Z)V
    .locals 1
    .parameter "acceptsDrops"

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    if-eq v0, p1, :cond_0

    .line 626
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    .line 627
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 629
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1159
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout;->setChildrenAlpha(F)V

    .line 1160
    return-void
.end method

.method public setBackgroundAlpha(FF)V
    .locals 1
    .parameter "alpha"
    .parameter "backgroundDarken"

    .prologue
    .line 1067
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 1068
    return-void
.end method

.method public setBackgroundAlpha(FFZ)V
    .locals 2
    .parameter "alpha"
    .parameter "backgroundDarken"
    .parameter "blend"

    .prologue
    .line 1074
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 1075
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1076
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1077
    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1078
    instance-of v1, v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1079
    check-cast v1, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v1, p2}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBackgroundDarken(F)V

    .line 1080
    check-cast v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p3}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBlend(Z)V

    .line 1081
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    if-eqz v1, :cond_0

    .line 1082
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {v1}, Lcom/android/launcher2/DummyPanelView;->invalidate()V

    .line 1086
    :cond_0
    return-void
.end method

.method public setBackgroundBaseDarken(F)V
    .locals 2
    .parameter "a"

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1134
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v1, :cond_0

    .line 1135
    check-cast v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBaseDarken(F)V

    .line 1137
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 1143
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1144
    if-nez p1, :cond_0

    .line 1146
    :goto_0
    return-void

    .line 1145
    :cond_0
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method setCellSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 306
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 307
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 308
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 1017
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1022
    return-void
.end method

.method public setCrosshairsVisibility(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->cancel()V

    .line 347
    :cond_0
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    .line 348
    return-void
.end method

.method setDummyPanelProperties(FI)V
    .locals 1
    .parameter "baseDarken"
    .parameter "alpha"

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v0, v0, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-nez v0, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    const/4 v0, -0x1

    if-eq v0, p2, :cond_2

    .line 1117
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v0, v0, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setAlpha(I)V

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v0, v0, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBaseDarken(F)V

    .line 1121
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {v0}, Lcom/android/launcher2/DummyPanelView;->invalidate()V

    goto :goto_0
.end method

.method public setEmptyMessageVisibility(I)V
    .locals 1
    .parameter "show"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :cond_0
    return-void
.end method

.method setGaps(II)V
    .locals 0
    .parameter "gapX"
    .parameter "gapY"

    .prologue
    .line 311
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    .line 312
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    .line 313
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    .line 314
    return-void
.end method

.method public setGridSize(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 373
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-eq v0, p2, :cond_1

    .line 374
    :cond_0
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 375
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 376
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    .line 377
    sget-boolean v0, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "CellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGridSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_1
    return-void
.end method

.method public setHomeView(Lcom/android/launcher2/HomeView;)V
    .locals 0
    .parameter "home"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 148
    return-void
.end method

.method public setHoverAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 478
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundAlpha:F

    .line 479
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 480
    return-void
.end method

.method public setHoverScale(F)V
    .locals 1
    .parameter "scaleFactor"

    .prologue
    .line 460
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 461
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    .line 462
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->updateGlowRect()V

    .line 463
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 467
    :cond_0
    return-void
.end method

.method public setIsDefaultDropTarget(Z)V
    .locals 1
    .parameter "isDefaultDropTarget"

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    if-eq v0, p1, :cond_0

    .line 427
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    .line 428
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 430
    :cond_0
    return-void
.end method

.method setIsDragOccuring(Z)V
    .locals 1
    .parameter "isDragOccuring"

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    if-eq v0, p1, :cond_0

    .line 434
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    .line 435
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 437
    :cond_0
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1
    .parameter "isDragOverlapping"

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 441
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 442
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 444
    :cond_0
    return-void
.end method

.method public setIsPaused(Z)V
    .locals 0
    .parameter "isPaused"

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsPaused:Z

    .line 159
    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V
    .locals 11
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "screen"
    .parameter "container"

    .prologue
    .line 1738
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    move-object v1, p1

    .line 1740
    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 1742
    .local v1, hitem:Lcom/android/launcher2/HomeItem;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    move-wide/from16 v2, p7

    move/from16 v4, p6

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    .line 1745
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v10

    .line 1746
    .local v10, v:Landroid/view/View;
    if-eqz v10, :cond_0

    .line 1747
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1748
    .local v9, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v0, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1749
    iget v0, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1750
    iget v0, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 1751
    iget v0, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 1752
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    .line 1753
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->requestLayout()V

    .line 1756
    .end local v1           #hitem:Lcom/android/launcher2/HomeItem;
    .end local v9           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v10           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 622
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2542
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 2543
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 2544
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 573
    return-void
.end method

.method setOverScrollAmount(FZ)V
    .locals 2
    .parameter "r"
    .parameter "left"

    .prologue
    .line 382
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 383
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 388
    :cond_0
    :goto_0
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 389
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 390
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 391
    return-void

    .line 384
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setPageType(I)V
    .locals 0
    .parameter "pageType"

    .prologue
    .line 2585
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mPageType:I

    .line 2586
    return-void
.end method

.method public setTagToCellInfoForPoint(II)V
    .locals 13
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 716
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 718
    .local v0, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    iget v9, p0, Lcom/android/launcher2/CellLayout;->mScrollX:I

    add-int/2addr v9, p1

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getScrollX()I

    move-result v10

    add-int v7, v9, v10

    .line 719
    .local v7, x:I
    iget v9, p0, Lcom/android/launcher2/CellLayout;->mScrollY:I

    add-int/2addr v9, p2

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getScrollY()I

    move-result v10

    add-int v8, v9, v10

    .line 720
    .local v8, y:I
    iget-object v9, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 722
    .local v3, count:I
    const/4 v4, 0x0

    .line 723
    .local v4, found:Z
    add-int/lit8 v5, v3, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_1

    .line 724
    iget-object v9, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v9, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 725
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 726
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_4

    :cond_0
    iget-boolean v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v9, :cond_4

    .line 732
    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/CellLayout$LayoutParams;->containsPt(II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 733
    iput-object v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 734
    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 735
    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 736
    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 737
    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 738
    const/4 v4, 0x1

    .line 744
    .end local v2           #child:Landroid/view/View;
    .end local v6           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 746
    if-nez v4, :cond_2

    .line 747
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 748
    .local v1, cellXY:[I
    invoke-virtual {p0, v7, v8, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 750
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 751
    aget v9, v1, v12

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 752
    aget v9, v1, v11

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 753
    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 754
    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 757
    .end local v1           #cellXY:[I
    :cond_2
    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v9, :cond_3

    .line 758
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 759
    .restart local v1       #cellXY:[I
    invoke-virtual {p0, v7, v8, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 760
    aget v9, v1, v12

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellX:I

    .line 761
    aget v9, v1, v11

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellY:I

    .line 763
    .end local v1           #cellXY:[I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 764
    return-void

    .line 723
    .restart local v2       #child:Landroid/view/View;
    .restart local v6       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method

.method public setupDummyPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1089
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    if-nez v1, :cond_0

    .line 1090
    new-instance v1, Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/DummyPanelView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    .line 1091
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iput-object p0, v1, Lcom/android/launcher2/DummyPanelView;->layout:Lcom/android/launcher2/CellLayout;

    .line 1093
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v1, v1, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v1, :cond_2

    .line 1102
    :cond_1
    :goto_0
    return-void

    .line 1094
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    iput-object v1, v2, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    .line 1096
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v1, v1, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v1, :cond_1

    .line 1098
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v1, v1, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    iput-boolean v3, v1, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->blockDraw:Z

    .line 1099
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 1100
    .local v0, l:Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1101
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/CellLayoutChildren;->setItemVisibility(Lcom/android/launcher2/BaseItem;I)V

    .line 2029
    return-void
.end method

.method public spanToPixel(II)[I
    .locals 5
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1471
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V
    .locals 34
    .parameter "v"
    .parameter "dragOutline"
    .parameter "nearest"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1309
    sget-boolean v26, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v26, :cond_1

    .line 1310
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 1468
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1314
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    .line 1315
    .local v14, l:[I
    const/16 v26, 0x0

    aget v26, p3, v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    const/16 v26, 0x1

    aget v26, p3, v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 1316
    const/16 v26, 0x0

    aget v26, v14, v26

    const/16 v27, 0x0

    aget v27, p3, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    const/16 v26, 0x1

    aget v26, v14, v26

    const/16 v27, 0x1

    aget v27, p3, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    const/16 v26, 0x2

    aget v26, v14, v26

    move/from16 v0, v26

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    const/16 v26, 0x3

    aget v26, v14, v26

    move/from16 v0, v26

    move/from16 v1, p5

    if-eq v0, v1, :cond_0

    .line 1319
    :cond_2
    const/16 v26, 0x0

    const/16 v27, 0x0

    aget v27, p3, v27

    aput v27, v14, v26

    .line 1320
    const/16 v26, 0x1

    const/16 v27, 0x1

    aget v27, p3, v27

    aput v27, v14, v26

    .line 1321
    const/16 v26, 0x2

    aput p4, v14, v26

    .line 1322
    const/16 v26, 0x3

    aput p5, v14, v26

    .line 1324
    if-nez p2, :cond_3

    if-nez p1, :cond_3

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto :goto_0

    .line 1331
    :cond_3
    if-eqz p2, :cond_7

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    move-object/from16 v22, v0

    .line 1334
    .local v22, topLeft:[I
    const/16 v26, 0x0

    aget v26, p3, v26

    const/16 v27, 0x1

    aget v27, p3, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 1336
    const/16 v26, 0x0

    aget v15, v22, v26

    .line 1337
    .local v15, left:I
    const/16 v26, 0x1

    aget v21, v22, v26

    .line 1338
    .local v21, top:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    .local v25, width:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1344
    .local v9, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 1345
    .local v7, dm:Landroid/util/DisplayMetrics;
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    const/16 v27, 0xf0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 1346
    const/4 v13, 0x0

    .local v13, iw:I
    const/4 v12, 0x0

    .line 1347
    .local v12, ih:I
    const/16 v24, 0x0

    .local v24, vw:I
    const/16 v23, 0x0

    .line 1349
    .local v23, vh:I
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v26, v0

    if-nez v26, :cond_4

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v26, v0

    if-eqz v26, :cond_d

    .line 1350
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v19

    .line 1351
    .local v19, parent:Lcom/android/launcher2/CellLayoutContainer;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher2/Hotseat;

    move/from16 v26, v0

    if-eqz v26, :cond_a

    .line 1352
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, arr$:[Landroid/graphics/drawable/Drawable;
    array-length v0, v5

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    aget-object v6, v5, v11

    .line 1353
    .local v6, d:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_8

    .line 1354
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 1355
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 1359
    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 1360
    .local v20, res:Landroid/content/res/Resources;
    const v26, 0x7f0c0071

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1361
    const v26, 0x7f0c0072

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1362
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_9

    .line 1364
    sub-int v26, v23, v12

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v21, v21, v26

    .line 1451
    .end local v5           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v11           #i$:I
    .end local v12           #ih:I
    .end local v13           #iw:I
    .end local v16           #len$:I
    .end local v19           #parent:Lcom/android/launcher2/CellLayoutContainer;
    .end local v20           #res:Landroid/content/res/Resources;
    .end local v23           #vh:I
    .end local v24           #vw:I
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v17, v0

    .line 1452
    .local v17, oldIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v26, v0

    aget-object v26, v26, v17

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1453
    add-int/lit8 v26, v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    rem-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    add-int v27, v15, v25

    add-int v28, v21, v9

    move-object/from16 v0, v26

    move/from16 v1, v21

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    .line 1462
    .end local v7           #dm:Landroid/util/DisplayMetrics;
    .end local v9           #height:I
    .end local v15           #left:I
    .end local v17           #oldIndex:I
    .end local v21           #top:I
    .end local v22           #topLeft:[I
    .end local v25           #width:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1463
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 1464
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayout;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1465
    const/16 v26, 0x6458

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->performHapticFeedback(II)Z

    goto/16 :goto_0

    .line 1352
    .restart local v5       #arr$:[Landroid/graphics/drawable/Drawable;
    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    .restart local v7       #dm:Landroid/util/DisplayMetrics;
    .restart local v9       #height:I
    .restart local v11       #i$:I
    .restart local v12       #ih:I
    .restart local v13       #iw:I
    .restart local v15       #left:I
    .restart local v16       #len$:I
    .restart local v19       #parent:Lcom/android/launcher2/CellLayoutContainer;
    .restart local v21       #top:I
    .restart local v22       #topLeft:[I
    .restart local v23       #vh:I
    .restart local v24       #vw:I
    .restart local v25       #width:I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1367
    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    .restart local v20       #res:Landroid/content/res/Resources;
    :cond_9
    sub-int v26, v24, v13

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v15, v15, v26

    goto/16 :goto_2

    .end local v5           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v11           #i$:I
    .end local v16           #len$:I
    .end local v20           #res:Landroid/content/res/Resources;
    .restart local p1
    :cond_a
    move-object/from16 v26, p1

    .line 1372
    check-cast v26, Landroid/widget/TextView;

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5       #arr$:[Landroid/graphics/drawable/Drawable;
    array-length v0, v5

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_b

    aget-object v6, v5, v11

    .line 1373
    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_c

    .line 1374
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 1375
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 1379
    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 1380
    .restart local v20       #res:Landroid/content/res/Resources;
    const v26, 0x7f0c0052

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1381
    const v26, 0x7f0c0053

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1383
    sub-int v26, v24, v13

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v15, v15, v26

    .line 1384
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-int v28, v23, v12

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3feb333333333333L

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v21, v0

    goto/16 :goto_2

    .line 1372
    .end local v20           #res:Landroid/content/res/Resources;
    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    .restart local p1
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1387
    .end local v5           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    .end local v11           #i$:I
    .end local v16           #len$:I
    .end local v19           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v26, v0

    mul-int v26, v26, p4

    add-int/lit8 v27, p4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    add-int v25, v26, v27

    .line 1388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v26, v0

    mul-int v26, v26, p5

    add-int/lit8 v27, p5, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    add-int v9, v26, v27

    .line 1390
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 1392
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    int-to-float v0, v9

    move/from16 v27, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1394
    .local v6, d:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v6

    move/from16 v0, v26

    float-to-int v9, v0

    goto/16 :goto_2

    .line 1402
    .end local v6           #d:F
    .end local v12           #ih:I
    .end local v13           #iw:I
    .end local v23           #vh:I
    .end local v24           #vw:I
    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v19

    .line 1404
    .restart local v19       #parent:Lcom/android/launcher2/CellLayoutContainer;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher2/Hotseat;

    move/from16 v26, v0

    if-eqz v26, :cond_f

    .line 1405
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c000d

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1406
    .local v10, hotseaticon_topToTopOffset:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v26

    add-int v18, v26, v10

    .line 1407
    .local v18, p:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v26

    add-int v15, v15, v26

    .line 1408
    add-int/lit8 v26, v18, -0x6

    add-int v21, v21, v26

    .line 1409
    goto/16 :goto_2

    .line 1411
    .end local v10           #hotseaticon_topToTopOffset:I
    .end local v18           #p:I
    :cond_f
    const/4 v8, 0x0

    .line 1412
    .local v8, foldericon_topToTopOffset:I
    const/4 v4, 0x0

    .line 1413
    .local v4, appIcon_leftMargin:I
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v26, v0

    if-eqz v26, :cond_11

    .line 1414
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c00c6

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1415
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    move/from16 v26, v0

    if-eqz v26, :cond_10

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c0023

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    add-int v15, v15, v26

    .line 1430
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v26

    sget v27, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    add-int v26, v26, v27

    add-int v18, v26, v8

    .line 1431
    .restart local v18       #p:I
    add-int/lit8 v26, v18, -0x3

    add-int v21, v21, v26

    goto/16 :goto_2

    .line 1418
    .end local v18           #p:I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c0025

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    add-int v15, v15, v26

    goto :goto_4

    .line 1421
    :cond_11
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    move/from16 v26, v0

    if-eqz v26, :cond_12

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c0022

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1428
    :goto_5
    sget v26, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    add-int/lit8 v26, v26, -0x3

    add-int v26, v26, v4

    add-int v15, v15, v26

    goto :goto_4

    .line 1424
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c0024

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_5

    .line 1434
    .end local v4           #appIcon_leftMargin:I
    .end local v8           #foldericon_topToTopOffset:I
    .end local v19           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_13
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v26, v0

    if-nez v26, :cond_6

    .line 1438
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v26, v0

    mul-int v26, v26, p4

    add-int/lit8 v27, p4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    add-int v25, v26, v27

    .line 1439
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v26, v0

    mul-int v26, v26, p5

    add-int/lit8 v27, p5, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    add-int v9, v26, v27

    .line 1441
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 1443
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    int-to-float v0, v9

    move/from16 v27, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1445
    .restart local v6       #d:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v6

    move/from16 v0, v26

    float-to-int v9, v0

    goto/16 :goto_2
.end method
