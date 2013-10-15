.class public abstract Lcom/android/launcher2/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedView$HoverScrollHandler;,
        Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;,
        Lcom/android/launcher2/PagedView$DelaySnapToPage;,
        Lcom/android/launcher2/PagedView$LayerOptions;,
        Lcom/android/launcher2/PagedView$SavedState;,
        Lcom/android/launcher2/PagedView$ScrollInterpolator;,
        Lcom/android/launcher2/PagedView$PageSwitchListener;,
        Lcom/android/launcher2/PagedView$PageInfo;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field private static final CAMERA_INTENT:Landroid/content/Intent; = null

.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field public static final DIR_LEFT:I = 0x2

.field public static final DIR_RIGHT:I = 0x3

.field public static final DIR_SHORTEST:I = 0x1

.field private static final HOVERSCROLL_SPEED:J = 0xc8L

.field public static final INVALID_DIR:I = 0x0

.field protected static final INVALID_PAGE:I = -0x80000000

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MINIMUM_SNAP_VELOCITY:I = 0x898

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_SCROLLX_CAMERA_CUT:I = -0x32

.field private static final MOTION_ENGINE_LOG:Ljava/lang/String; = "MotionEngine"

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field public static final PAGE_BG_ALPHA:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/PagedView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAGE_HOVER_SCROLL:I = 0x1

.field public static final PAGE_ZOOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/PagedView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PANNING_THRESHOLD_MULTIPLIER:I = 0xf

.field private static final PANNING_THRESHOLD_SHIFTER:I = 0x28

.field protected static final SNAP_STATE_ADJACENT:I = 0x0

.field protected static final SNAP_STATE_FIRST_TO_LAST:I = 0x1

.field protected static final SNAP_STATE_LAST_TO_FIRST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Launcher.PagedView"

.field protected static final TOUCH_STATE_DRIFTING:I = 0x4

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static final chipset:Ljava/lang/String;

.field private static cpuBooster:Landroid/os/DVFSHelper;

.field private static cpuMaxBooster:Landroid/os/DVFSHelper;

.field private static gpuBooster:Landroid/os/DVFSHelper;

.field private static mHoverScrollVerticalPaddingMatchParent:I

.field private static mIsPageFastMoving:Z

.field private static sInclusivePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsMotionEngineEnabled:Z


# instance fields
.field protected final ENABLE_DVFS_ONSCROLL:Z

.field private final MIN_LENGTH_FOR_FLING:I

.field protected final PAGE_SNAP_ANIMATION_DURATION:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field protected isShowCamera:Z

.field private mAccumulatedDelta:D

.field private mAccumulatedDx:I

.field private mAccumulatedDy:I

.field private mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field protected mBlockHardwareLayers:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCellGapX:I

.field protected mCellGapY:I

.field protected mContentIsRefreshable:Z

.field private mCurrentPage:I

.field protected mCurrentRotation:I

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field private final mDelaySnapToPage:Lcom/android/launcher2/PagedView$DelaySnapToPage;

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field protected mDriftSlop:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field private mHardwarePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mHideItems:Z

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mHoverScrollBottom:I

.field private mHoverScrollDir:I

.field private mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

.field private mHoverScrollRightPadding:I

.field private mHoverScrollTop:I

.field private mHoverScrollVerticalPadding:I

.field private mHoverScrollWidth:I

.field mIgnoreSecretPage:Z

.field protected mIsDataReady:Z

.field protected mIsOverScrolled:Z

.field protected mIsPageMoving:Z

.field private mLaidOutAfterViewTreeDirty:Z

.field private mLastFocusDir:I

.field private mLastHit:I

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field protected mLastPageNotify:I

.field private mLastScreenCenter:I

.field mLastScrollX:I

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field private mMotionListenerRegistered:Z

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field protected mNextPage:I

.field protected mPageBackgroundAlpha:F

.field private mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

.field protected mPageIndicatorTop:I

.field protected mPagePaddingBottom:I

.field protected mPagePaddingLeft:I

.field protected mPagePaddingRight:I

.field protected mPagePaddingTop:I

.field private final mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

.field protected mPageSpacing:I

.field protected mPageSpacingHint:I

.field private mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

.field protected mPageTransformsDirty:Z

.field protected mPageZoom:F

.field protected mPagesPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PagedView$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPagingTouchSlop:I

.field protected mPanningBasis:D

.field protected mPanningStopDelta:D

.field protected mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

.field private mScrollByHover:Z

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSmoothingTime:F

.field protected mSnapState:I

.field private mSnapToPageAfterLayout:I

.field private mSnapToPageAfterLayoutDir:I

.field private mSnapToPageAfterLayoutDur:I

.field private mSnapToPageAfterLayoutMustAnim:Z

.field protected mSnapVelocity:I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVisibleAllCounts:I

.field protected mVisiblePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PagedView$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private motionTrackingIsCurrent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    .line 97
    sput-object v1, Lcom/android/launcher2/PagedView;->cpuBooster:Landroid/os/DVFSHelper;

    .line 98
    sput-object v1, Lcom/android/launcher2/PagedView;->cpuMaxBooster:Landroid/os/DVFSHelper;

    .line 99
    sput-object v1, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    .line 100
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sput-object v0, Lcom/android/launcher2/PagedView;->chipset:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/android/launcher2/PagedView$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "pageZoom"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/PagedView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/PagedView;->PAGE_ZOOM:Landroid/util/Property;

    .line 110
    new-instance v0, Lcom/android/launcher2/PagedView$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "pageBackgroundAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/PagedView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/PagedView;->PAGE_BG_ALPHA:Landroid/util/Property;

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/android/launcher2/PagedView;->CAMERA_INTENT:Landroid/content/Intent;

    .line 272
    const v0, 0x7fffffff

    sput v0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPaddingMatchParent:I

    .line 280
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/PagedView;->mIsPageFastMoving:Z

    .line 2635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    .line 3309
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/PagedView;->sIsMotionEngineEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/high16 v8, -0x8000

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 302
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    .line 136
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 137
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->ENABLE_DVFS_ONSCROLL:Z

    .line 140
    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    .line 141
    iput v8, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 153
    iput v10, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 163
    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 167
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 180
    iput v9, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 181
    iput v9, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 182
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    .line 184
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    .line 185
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 213
    iput v8, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    .line 214
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    .line 215
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    .line 225
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 228
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    .line 232
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    .line 236
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    .line 238
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 239
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    .line 242
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 248
    iput v8, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 249
    iput v7, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDir:I

    .line 250
    iput v9, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDur:I

    .line 251
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutMustAnim:Z

    .line 259
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 265
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 266
    iput v9, p0, Lcom/android/launcher2/PagedView;->mHoverScrollDir:I

    .line 267
    iput v9, p0, Lcom/android/launcher2/PagedView;->mHoverScrollWidth:I

    .line 268
    iput v9, p0, Lcom/android/launcher2/PagedView;->mHoverScrollTop:I

    .line 269
    iput v9, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    .line 270
    iput v9, p0, Lcom/android/launcher2/PagedView;->mHoverScrollRightPadding:I

    .line 271
    iput v9, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    .line 277
    iput v9, p0, Lcom/android/launcher2/PagedView;->mVisibleAllCounts:I

    .line 282
    new-instance v5, Lcom/android/launcher2/PagedView$DelaySnapToPage;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/launcher2/PagedView$DelaySnapToPage;-><init>(Lcom/android/launcher2/PagedView;Lcom/android/launcher2/PagedView$1;)V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mDelaySnapToPage:Lcom/android/launcher2/PagedView$DelaySnapToPage;

    .line 283
    new-instance v5, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-direct {v5, p0}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;-><init>(Lcom/android/launcher2/PagedView;)V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    .line 284
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 896
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mIgnoreSecretPage:Z

    .line 2212
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 2235
    iput v7, p0, Lcom/android/launcher2/PagedView;->mLastFocusDir:I

    .line 3105
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    .line 3119
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    .line 3130
    iput v10, p0, Lcom/android/launcher2/PagedView;->mLastHit:I

    .line 3310
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 3311
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    .line 3312
    const-wide/high16 v5, 0x404e

    iput-wide v5, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    .line 3313
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 3314
    iput v9, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDy:I

    .line 3315
    iput v9, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDx:I

    .line 3316
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/launcher2/PagedView;->mPanningStopDelta:D

    .line 3481
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    .line 304
    sget-object v5, Lcom/sec/android/app/launcher/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v5, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 306
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 307
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 308
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    .line 309
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    .line 311
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingBottom:I

    .line 313
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingLeft:I

    .line 315
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingRight:I

    .line 317
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    .line 319
    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    .line 322
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 323
    .local v4, pageIndicatorTop:I
    const/16 v5, 0xa

    const/16 v6, 0xa

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 324
    .local v2, pageIndicatorGap:I
    const/16 v5, 0xb

    const/16 v6, 0xb

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 325
    .local v3, pageIndicatorMaxVisible:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 327
    iput v4, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    .line 328
    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 330
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 331
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 332
    new-instance v5, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/android/launcher2/PagedView$ScrollInterpolator;

    invoke-direct {v7}, Lcom/android/launcher2/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v5, v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 333
    iput v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 335
    sget-object v5, Lcom/android/launcher2/PagedView;->CAMERA_INTENT:Landroid/content/Intent;

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.app.camera"

    const-string v8, "com.sec.android.app.camera.Camera"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 336
    sget-object v5, Lcom/android/launcher2/PagedView;->CAMERA_INTENT:Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    sget-object v5, Lcom/android/launcher2/PagedView;->CAMERA_INTENT:Landroid/content/Intent;

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    .line 342
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 343
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0061

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    .line 344
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0062

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    .line 345
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    .line 346
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    .line 348
    invoke-virtual {p0, p0, v4, v2, v3}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager(Lcom/android/launcher2/PagedView;III)Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    .line 350
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00e9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    .line 351
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPaddingMatchParent:I

    .line 353
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getCpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v5

    sput-object v5, Lcom/android/launcher2/PagedView;->cpuBooster:Landroid/os/DVFSHelper;

    .line 354
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getCpuMaxBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v5

    sput-object v5, Lcom/android/launcher2/PagedView;->cpuMaxBooster:Landroid/os/DVFSHelper;

    .line 355
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getGpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v5

    sput-object v5, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    .line 357
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c005f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->MIN_LENGTH_FOR_FLING:I

    .line 358
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0060

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    .line 359
    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setSaveEnabled(Z)V

    .line 360
    sget-boolean v5, Lcom/android/launcher2/PagedView;->sIsMotionEngineEnabled:Z

    if-eqz v5, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->getMotionSensor()V

    .line 363
    :cond_0
    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/PagedView;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;->snapToPageInternal(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/PagedView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/PagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollDir:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/PagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    return v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2196
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2198
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2199
    return-void
.end method

.method private canOverScroll()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 2363
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 2364
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 2365
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V
    .locals 3
    .parameter "canvas"
    .parameter "pageInfo"
    .parameter "drawingTime"

    .prologue
    .line 1374
    iget v1, p2, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1375
    .local v0, page:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1380
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Draw page is NULL. Report this."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1382
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1383
    const-string v1, "Launcher.PagedView"

    const-string v2, "Page visibility not in sync with list of visible pages. This MUST be investigated"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :goto_0
    return-void

    .line 1386
    :cond_1
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    if-eqz v1, :cond_2

    .line 1387
    invoke-direct {p0, p2, p3, p4}, Lcom/android/launcher2/PagedView;->transformPage(Lcom/android/launcher2/PagedView$PageInfo;J)V

    .line 1389
    :cond_2
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method private dumpScroller()Ljava/lang/String;
    .locals 2

    .prologue
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollerStartX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerCurrX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerFinalX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerDur "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollingFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpVisiblePages()V
    .locals 0

    .prologue
    .line 1351
    return-void
.end method

.method private findPageIndicatorHit(Landroid/view/DragEvent;)I
    .locals 10
    .parameter "event"

    .prologue
    .line 3276
    const/4 v4, -0x1

    .line 3277
    .local v4, result:I
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v8}, Lcom/android/launcher2/PageIndicatorManager;->getPreviewRects()[Landroid/graphics/Rect;

    move-result-object v3

    .line 3278
    .local v3, rects:[Landroid/graphics/Rect;
    if-nez v3, :cond_0

    move v5, v4

    .line 3294
    .end local v4           #result:I
    .local v5, result:I
    :goto_0
    return v5

    .line 3282
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 3283
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 3286
    .local v7, y:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v8

    array-length v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3287
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 3288
    aget-object v2, v3, v0

    .line 3289
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3290
    move v4, v0

    .end local v2           #r:Landroid/graphics/Rect;
    :cond_1
    move v5, v4

    .line 3294
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_0

    .line 3287
    .end local v5           #result:I
    .restart local v2       #r:Landroid/graphics/Rect;
    .restart local v4       #result:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getCenterOfViewRelative(Landroid/view/View;)I
    .locals 7
    .parameter "page"

    .prologue
    .line 2273
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2274
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    .line 2275
    .local v3, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2276
    .local v4, width:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 2277
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v4

    .line 2280
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2282
    .local v1, left:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v5

    const/16 v6, 0x320

    if-ne v5, v6, :cond_1

    .line 2283
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    div-int/lit8 v6, v4, 0xa

    add-int v1, v5, v6

    .line 2285
    :cond_1
    sub-int v5, v1, v3

    div-int/lit8 v6, v4, 0x2

    add-int v2, v5, v6

    .line 2289
    .local v2, res:I
    return v2
.end method

.method private getLowerBoundForScrollX(I)I
    .locals 5
    .parameter "scrollX"

    .prologue
    .line 917
    const/4 v0, 0x0

    .line 918
    .local v0, adjustedScrollX:I
    const/4 v2, 0x0

    .line 919
    .local v2, res:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v1

    .line 921
    .local v1, pageTotWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 922
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 923
    div-int v3, v0, v1

    mul-int v2, v3, v1

    .line 932
    :goto_0
    return v2

    .line 925
    :cond_0
    move v0, p1

    .line 926
    if-gez v0, :cond_1

    .line 927
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v1

    neg-int v2, v3

    goto :goto_0

    .line 929
    :cond_1
    div-int v3, v0, v1

    mul-int v2, v3, v1

    goto :goto_0
.end method

.method private getMotionSensor()V
    .locals 2

    .prologue
    .line 3362
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    .line 3363
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 3366
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_1

    .line 3367
    sget-boolean v0, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "MotionEngine"

    const-string v1, "Cannot get Motion Sensor Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    :cond_1
    return-void
.end method

.method private getNearestScrollXForPage(III)I
    .locals 9
    .parameter "pageIndex"
    .parameter "scrollX"
    .parameter "dir"

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v4

    .line 810
    .local v4, pageTotWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 811
    mul-int v5, p1, v4

    .line 841
    :cond_0
    :goto_0
    return v5

    .line 813
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v6

    .line 814
    .local v6, startScrollX:I
    const/4 v1, 0x0

    .line 815
    .local v1, multiplier:I
    packed-switch p3, :pswitch_data_0

    .line 827
    add-int/2addr v6, v4

    .line 828
    const/4 v1, 0x1

    .line 831
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    .line 832
    .local v3, pageCount:I
    move v5, p2

    .line 833
    .local v5, res:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 834
    mul-int v8, v0, v4

    mul-int/2addr v8, v1

    add-int v7, v6, v8

    .line 835
    .local v7, temp:I
    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v2

    .line 836
    .local v2, pageAtSlot:I
    if-ne v2, p1, :cond_2

    .line 837
    move v5, v7

    .line 838
    goto :goto_0

    .line 817
    .end local v0           #i:I
    .end local v2           #pageAtSlot:I
    .end local v3           #pageCount:I
    .end local v5           #res:I
    .end local v7           #temp:I
    :pswitch_0
    const/4 v1, -0x1

    .line 818
    goto :goto_1

    .line 833
    .restart local v0       #i:I
    .restart local v2       #pageAtSlot:I
    .restart local v3       #pageCount:I
    .restart local v5       #res:I
    .restart local v7       #temp:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 815
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getScrollXForPageIndex(III)I
    .locals 8
    .parameter "pageIndex"
    .parameter "scrollX"
    .parameter "dir"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 849
    const/4 v3, 0x0

    .line 850
    .local v3, res:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 851
    packed-switch p3, :pswitch_data_0

    .line 890
    :goto_0
    return v3

    .line 853
    :pswitch_0
    invoke-direct {p0, p1, p2, v6}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v3

    .line 858
    goto :goto_0

    .line 861
    :pswitch_1
    invoke-direct {p0, p1, p2, v7}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v3

    .line 866
    goto :goto_0

    .line 869
    :pswitch_2
    invoke-direct {p0, p1, p2, v7}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v4

    .line 870
    .local v4, rightScrollX:I
    invoke-direct {p0, p1, p2, v6}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v2

    .line 871
    .local v2, leftScrollX:I
    sub-int v5, p2, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 872
    .local v0, delta1:I
    sub-int v5, v4, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 873
    .local v1, delta2:I
    if-ge v0, v1, :cond_0

    .line 874
    move v3, v2

    goto :goto_0

    .line 876
    :cond_0
    move v3, v4

    goto :goto_0

    .line 887
    .end local v0           #delta1:I
    .end local v1           #delta2:I
    .end local v2           #leftScrollX:I
    .end local v4           #rightScrollX:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    goto :goto_0

    .line 851
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSlotForScrollX(I)I
    .locals 4
    .parameter "scrollX"

    .prologue
    .line 753
    const/4 v1, 0x0

    .line 754
    .local v1, res:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v0

    .line 756
    .local v0, pageTotWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 757
    if-gez p1, :cond_0

    .line 758
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    .line 765
    :goto_0
    return v1

    .line 760
    :cond_0
    div-int v1, p1, v0

    goto :goto_0

    .line 763
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int v1, v2, v0

    goto :goto_0
.end method

.method private isLoopingDisabledInCSC()Z
    .locals 3

    .prologue
    .line 725
    const/4 v0, 0x0

    .line 727
    .local v0, cscLauncherDisabledLooping:Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Launcher_DisablePageRotation"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-boolean v1, v1, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 730
    :goto_0
    return v0

    .line 727
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNewPageIndex(I)Z
    .locals 1
    .parameter "i"

    .prologue
    .line 3266
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jumpToPageInternal(I)V
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 511
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v0

    .line 512
    .local v0, newX:I
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 513
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 520
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 521
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 522
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 523
    return-void
.end method

.method private loadAssociatedPages(IZ)V
    .locals 6
    .parameter "page"
    .parameter "immediateAndOnly"

    .prologue
    const/4 v5, 0x1

    .line 2597
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v3, :cond_1

    .line 2598
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 2599
    .local v0, count:I
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2600
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2599
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2608
    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getInclusivePages(I)V

    .line 2611
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedView;->syncPageItemsInternal(IZ)V

    .line 2614
    if-eqz p2, :cond_2

    .line 2630
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void

    .line 2615
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 2616
    if-ne p1, v1, :cond_3

    .line 2615
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2617
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Page;

    .line 2618
    .local v2, layout:Lcom/android/launcher2/Page;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->isPageInclusive(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2619
    invoke-interface {v2}, Lcom/android/launcher2/Page;->getPageItemCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 2620
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->clearLayout(Lcom/android/launcher2/Page;)V

    .line 2622
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2623
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2625
    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/launcher2/PagedView;->syncPageItemsInternal(IZ)V

    goto :goto_2
.end method

.method static mix(FFF)F
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "mix"

    .prologue
    .line 2913
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private newPageInfo()Lcom/android/launcher2/PagedView$PageInfo;
    .locals 3

    .prologue
    .line 713
    const/4 v0, 0x0

    .line 714
    .local v0, res:Lcom/android/launcher2/PagedView$PageInfo;
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #res:Lcom/android/launcher2/PagedView$PageInfo;
    check-cast v0, Lcom/android/launcher2/PagedView$PageInfo;

    .line 719
    .restart local v0       #res:Lcom/android/launcher2/PagedView$PageInfo;
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher2/PagedView$PageInfo;->reset()V

    .line 720
    return-object v0

    .line 717
    :cond_0
    new-instance v0, Lcom/android/launcher2/PagedView$PageInfo;

    .end local v0           #res:Lcom/android/launcher2/PagedView$PageInfo;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/PagedView$PageInfo;-><init>(Lcom/android/launcher2/PagedView;Lcom/android/launcher2/PagedView$1;)V

    .restart local v0       #res:Lcom/android/launcher2/PagedView$PageInfo;
    goto :goto_0
.end method

.method private notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 527
    iget v0, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    .line 529
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .parameter "f"

    .prologue
    const/high16 v1, 0x3f80

    .line 1896
    sub-float/2addr p1, v1

    .line 1897
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2203
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2206
    :cond_0
    return-void
.end method

.method private scrollToNonLooped(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    .line 675
    if-gez p1, :cond_1

    .line 676
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 677
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->canOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 679
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_2

    .line 682
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 683
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->canOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 685
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    goto :goto_0

    .line 688
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method private snapToPageInternal(III)V
    .locals 9
    .parameter "whichPage"
    .parameter "duration"
    .parameter "dir"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2436
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result p1

    .line 2441
    iget v0, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-direct {p0, p1, v0, p3}, Lcom/android/launcher2/PagedView;->getScrollXForPageIndex(III)I

    move-result v6

    .line 2442
    .local v6, dstScrollX:I
    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v3, v6, v0

    .line 2444
    .local v3, delta:I
    if-nez v3, :cond_0

    .line 2445
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 2500
    :goto_0
    return-void

    .line 2456
    :cond_0
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 2457
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2458
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    if-lez v3, :cond_4

    .line 2459
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    .line 2469
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 2470
    .local v7, focusedChild:Landroid/view/View;
    if-eqz v7, :cond_1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v7, v0, :cond_1

    .line 2472
    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    .line 2475
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 2476
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->awakenScrollBars(I)Z

    .line 2477
    if-nez p2, :cond_2

    .line 2478
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 2481
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2482
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2487
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2491
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-eqz v0, :cond_7

    .line 2492
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 2497
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 2498
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 2460
    .end local v7           #focusedChild:Landroid/view/View;
    :cond_4
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez v0, :cond_5

    if-gez v3, :cond_5

    .line 2461
    iput v8, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    goto :goto_1

    .line 2463
    :cond_5
    iput v2, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    goto :goto_1

    .line 2466
    :cond_6
    iput v2, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    goto :goto_1

    .line 2494
    .restart local v7       #focusedChild:Landroid/view/View;
    :cond_7
    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    goto :goto_2
.end method

.method private syncPageItemsInternal(IZ)V
    .locals 5
    .parameter "page"
    .parameter "immediateAndOnly"

    .prologue
    const/4 v4, 0x0

    .line 2699
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2700
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedView;->syncPageItems(IZ)V

    .line 2701
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2702
    .local v2, itemContainer:Landroid/view/ViewGroup;
    if-nez v2, :cond_1

    .line 2731
    .end local v2           #itemContainer:Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 2704
    .restart local v2       #itemContainer:Landroid/view/ViewGroup;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2705
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2708
    .local v0, dragReceiver:Landroid/view/View;
    instance-of v3, v0, Lcom/android/launcher2/DragReceivable;

    if-eqz v3, :cond_2

    .line 2715
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 2716
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2717
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2704
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2728
    .end local v0           #dragReceiver:Landroid/view/View;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2729
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private transformPage(Lcom/android/launcher2/PagedView$PageInfo;J)V
    .locals 4
    .parameter "pageInfo"
    .parameter "drawingTime"

    .prologue
    const/4 v3, 0x0

    .line 1355
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    if-nez v2, :cond_1

    .line 1370
    :cond_0
    :goto_0
    return-void

    .line 1356
    :cond_1
    iget v2, p1, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1358
    .local v0, page:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1360
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v1

    .line 1361
    .local v1, scrollProgress:F
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1362
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1364
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->updatePageTransform(Landroid/view/View;F)V

    .line 1366
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1367
    iget v2, p1, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1368
    iget v2, p1, Lcom/android/launcher2/PagedView$PageInfo;->mTransY:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private updateMotionTracking(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 2225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 2226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    .line 2227
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 2228
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2229
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2230
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 2231
    return-void
.end method


# virtual methods
.method public CheckFolderOpen()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2844
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 2845
    .local v0, mWorkspace:Lcom/android/launcher2/Workspace;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2847
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 2849
    :cond_0
    return-void
.end method

.method protected abortScroll()V
    .locals 2

    .prologue
    .line 3675
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 3681
    .local v0, running:Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v1, :cond_1

    .line 3682
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3683
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    .line 3685
    :cond_1
    return-void
.end method

.method protected acceleratedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1901
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1905
    .local v2, screenSize:I
    const/high16 v3, 0x4000

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1907
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1921
    :goto_0
    return-void

    .line 1910
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1911
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1914
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1915
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1916
    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 1920
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 1918
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1520
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1521
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1522
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    .line 1523
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    .line 1524
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1532
    :cond_0
    :goto_0
    return-void

    .line 1526
    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 1527
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1528
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 2522
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "v"
    .parameter "r"
    .parameter "onFinishAnimationRunnable"

    .prologue
    .line 1759
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f04000a

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1761
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1762
    new-instance v1, Lcom/android/launcher2/PagedView$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/launcher2/PagedView$3;-><init>(Lcom/android/launcher2/PagedView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1773
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1774
    return-void
.end method

.method public cancelClicksOnChildrenForCurrentPage()V
    .locals 6

    .prologue
    .line 3567
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 3568
    .local v3, page:Lcom/android/launcher2/CellLayout;
    if-nez v3, :cond_1

    .line 3569
    const-string v4, "Launcher.PagedView"

    const-string v5, "cancelClicksOnChildrenForCurrentPage, page is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    :cond_0
    return-void

    .line 3573
    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 3574
    .local v1, clChildren:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 3575
    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3576
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 3574
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1865
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v1, :cond_0

    .line 1866
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1870
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1871
    .local v0, currentPage:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1872
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1875
    .end local v0           #currentPage:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 372
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method public clampCurrentPage()V
    .locals 3

    .prologue
    .line 3484
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    .line 3485
    .local v0, currentPage:I
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3486
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3487
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setCurrentPageIfNotSnapping(I)V

    .line 3489
    :cond_0
    return-void
.end method

.method public clearLayout(Lcom/android/launcher2/Page;)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 2734
    invoke-interface {p1}, Lcom/android/launcher2/Page;->removeAllViewsOnPage()V

    .line 2735
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    .line 1086
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 7

    .prologue
    const/high16 v6, -0x8000

    const/4 v4, 0x0

    .line 1033
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 1034
    .local v1, pageCount:I
    const/4 v5, 0x1

    if-ge v1, v5, :cond_1

    move v2, v4

    .line 1080
    :cond_0
    :goto_0
    return v2

    .line 1038
    :cond_1
    const/4 v2, 0x0

    .line 1039
    .local v2, res:Z
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1041
    iget v4, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 1042
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 1044
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 1045
    const/4 v2, 0x1

    goto :goto_0

    .line 1046
    :cond_4
    iget v5, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v5, v6, :cond_0

    .line 1047
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1051
    iput v6, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1052
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 1055
    iget-boolean v5, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v5, :cond_5

    .line 1056
    iget v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 1057
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 1062
    :cond_5
    iget v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v5, :cond_6

    .line 1063
    iget v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    .line 1064
    .local v3, temp:I
    iget v5, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    invoke-virtual {p0, v3, v5}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 1065
    iput v4, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    .line 1066
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageEndMoving()V

    .line 1067
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 1071
    .end local v3           #temp:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1072
    const/16 v4, 0x1000

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1074
    .local v0, ev:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1077
    .end local v0           #ev:Landroid/view/accessibility/AccessibilityEvent;
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1924
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1926
    .local v2, screenSize:I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1928
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1943
    :goto_0
    return-void

    .line 1929
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1932
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1933
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1936
    :cond_1
    const v3, 0x3e0f5c29

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1937
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1938
    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 1942
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 1940
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1777
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1778
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 11
    .parameter "ev"
    .parameter "touchSlopScale"

    .prologue
    .line 1789
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1790
    .local v4, x:F
    iget v9, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v5, v9

    .line 1795
    .local v5, xDiff:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v9, v9

    mul-float/2addr v9, p2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1796
    .local v3, touchSlop:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    int-to-float v9, v9

    mul-float/2addr v9, p2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1798
    .local v1, driftSlop:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    if-le v5, v9, :cond_3

    const/4 v7, 0x1

    .line 1799
    .local v7, xPaged:Z
    :goto_0
    iget v9, p0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    if-lez v9, :cond_5

    if-le v5, v1, :cond_4

    const/4 v6, 0x1

    .line 1801
    .local v6, xMoved:Z
    :goto_1
    if-gtz v1, :cond_8

    .line 1802
    if-nez v6, :cond_0

    if-eqz v7, :cond_2

    .line 1803
    :cond_0
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v9, :cond_7

    if-eqz v7, :cond_1

    .line 1805
    :goto_2
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1806
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1807
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1808
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1809
    iget v9, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v9, v9

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1810
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1811
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1814
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    .line 1862
    :cond_2
    :goto_3
    return-void

    .line 1798
    .end local v6           #xMoved:Z
    .end local v7           #xPaged:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 1799
    .restart local v7       #xPaged:Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    if-le v5, v3, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 1803
    .restart local v6       #xMoved:Z
    :cond_7
    if-eqz v6, :cond_1

    goto :goto_2

    .line 1817
    :cond_8
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v9, :cond_c

    if-eqz v7, :cond_b

    .line 1818
    :goto_4
    const/4 v9, 0x4

    iget v10, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v9, v10, :cond_9

    .line 1819
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1822
    :cond_9
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float v2, v9, v10

    .line 1823
    .local v2, motionX:F
    int-to-float v9, v3

    cmpl-float v9, v2, v9

    if-lez v9, :cond_d

    const/4 v8, 0x1

    .line 1824
    .local v8, xTraveled:Z
    :goto_5
    if-lt v3, v5, :cond_a

    if-eqz v8, :cond_e

    :cond_a
    const/4 v9, 0x1

    :goto_6
    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1826
    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v9, v10, :cond_b

    .line 1828
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    .line 1831
    .end local v2           #motionX:F
    .end local v8           #xTraveled:Z
    :cond_b
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_f

    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_f

    .line 1832
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1833
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1834
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1835
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1836
    iget v9, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v9, v9

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    goto :goto_3

    .line 1817
    :cond_c
    if-eqz v6, :cond_b

    goto :goto_4

    .line 1823
    .restart local v2       #motionX:F
    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 1824
    .restart local v8       #xTraveled:Z
    :cond_e
    const/4 v9, 0x4

    goto :goto_6

    .line 1837
    .end local v2           #motionX:F
    .end local v8           #xTraveled:Z
    :cond_f
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_10

    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 1839
    :cond_10
    iget v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v9, v10

    sub-float v0, v9, v4

    .line 1841
    .local v0, deltaX:F
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1846
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f80

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_12

    .line 1847
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    add-float/2addr v9, v0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1848
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1849
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-nez v9, :cond_11

    .line 1850
    float-to-int v9, v0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    .line 1855
    :goto_7
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1856
    float-to-int v9, v0

    int-to-float v9, v9

    sub-float v9, v0, v9

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_3

    .line 1853
    :cond_11
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_7

    .line 1858
    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto/16 :goto_3
.end method

.method public disableRollNavigation()V
    .locals 2

    .prologue
    .line 3353
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3354
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v0, p0}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 3355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    .line 3357
    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 3135
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/DragState;

    if-nez v3, :cond_1

    const/16 v20, 0x0

    .line 3260
    :cond_0
    :goto_0
    return v20

    .line 3137
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3252
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v20

    .line 3253
    .local v20, r:Z
    if-eqz v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 3258
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onDragEvent(Landroid/view/DragEvent;)Z

    goto :goto_0

    .line 3139
    .end local v20           #r:Z
    :pswitch_1
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher2/PagedView;->mLastHit:I

    goto :goto_1

    .line 3142
    :pswitch_2
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3143
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->findPageIndicatorHit(Landroid/view/DragEvent;)I

    move-result v18

    .line 3144
    .local v18, i:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mLastHit:I

    move/from16 v0, v18

    if-eq v0, v3, :cond_6

    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_6

    .line 3145
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastHit:I

    .line 3146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PageIndicatorManager;->onDragEnter(I)Z

    move-result v21

    .line 3147
    .local v21, result:Z
    if-eqz v21, :cond_5

    .line 3148
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 3149
    .local v20, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher2/PageIndicatorManager;->getHitRect(Landroid/graphics/Rect;I)V

    .line 3150
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->invalidate(Landroid/graphics/Rect;)V

    .line 3152
    .end local v20           #r:Landroid/graphics/Rect;
    :cond_5
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v3, :cond_6

    .line 3153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->snapTo(I)V

    .line 3157
    .end local v21           #result:Z
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mLastHit:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_8

    .line 3158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    .line 3159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mLastHit:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PageIndicatorManager;->onDragExit(I)Z

    move-result v21

    .line 3160
    .restart local v21       #result:Z
    if-eqz v21, :cond_7

    .line 3161
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 3162
    .restart local v20       #r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher2/PageIndicatorManager;->getHitRect(Landroid/graphics/Rect;I)V

    .line 3163
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->invalidate(Landroid/graphics/Rect;)V

    .line 3165
    .end local v20           #r:Landroid/graphics/Rect;
    :cond_7
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastHit:I

    .line 3168
    .end local v21           #result:Z
    :cond_8
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_2

    .line 3196
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 3197
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 3205
    .end local v18           #i:I
    :pswitch_3
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3206
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    .line 3207
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->findPageIndicatorHit(Landroid/view/DragEvent;)I

    move-result v14

    .line 3208
    .local v14, pageIndicatorHit:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_2

    .line 3209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v3, v14}, Lcom/android/launcher2/PageIndicatorManager;->onDrop(I)Z

    .line 3210
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/DragState;

    .line 3211
    .local v8, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {v8}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v17

    .line 3215
    .local v17, dragItem:Lcom/android/launcher2/BaseItem;
    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/android/launcher2/HomePendingItem;

    if-nez v3, :cond_d

    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_d

    const/16 v19, 0x1

    .line 3216
    .local v19, itemFromWorkspace:Z
    :goto_2
    if-eqz v19, :cond_a

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v14, v3, :cond_b

    :cond_a
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_e

    :cond_b
    const/16 v16, 0x1

    .line 3217
    .local v16, abortDrop:Z
    :goto_3
    if-nez v16, :cond_2

    .line 3223
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 3224
    .local v2, cl:Lcom/android/launcher2/CellLayout;
    if-eqz v2, :cond_c

    .line 3225
    const/4 v3, 0x2

    new-array v7, v3, [I

    .line 3226
    .local v7, res:[I
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v6

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    .line 3227
    const/4 v3, 0x0

    aget v3, v7, v3

    if-ltz v3, :cond_f

    const/4 v3, 0x1

    aget v3, v7, v3

    if-ltz v3, :cond_f

    .line 3229
    const/4 v3, 0x0

    aget v10, v7, v3

    const/4 v3, 0x1

    aget v11, v7, v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v12

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v13

    const/4 v15, 0x1

    move-object v9, v2

    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    .line 3231
    invoke-virtual {v8}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 3232
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v3

    if-eq v14, v3, :cond_c

    move-object/from16 v3, p0

    .line 3233
    check-cast v3, Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->removeCreatedPageForDrag()V

    .line 3234
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 3240
    .end local v7           #res:[I
    :cond_c
    :goto_4
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 3215
    .end local v2           #cl:Lcom/android/launcher2/CellLayout;
    .end local v16           #abortDrop:Z
    .end local v19           #itemFromWorkspace:Z
    :cond_d
    const/16 v19, 0x0

    goto :goto_2

    .line 3216
    .restart local v19       #itemFromWorkspace:Z
    :cond_e
    const/16 v16, 0x0

    goto :goto_3

    .line 3237
    .restart local v2       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v7       #res:[I
    .restart local v16       #abortDrop:Z
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v8, v14, v3, v4}, Lcom/android/launcher2/CellLayout;->noRoomForDrop(Lcom/android/launcher2/DragState;III)V

    goto :goto_4

    .line 3246
    .end local v2           #cl:Lcom/android/launcher2/CellLayout;
    .end local v7           #res:[I
    .end local v8           #dragState:Lcom/android/launcher2/DragState;
    .end local v14           #pageIndicatorHit:I
    .end local v16           #abortDrop:Z
    .end local v17           #dragItem:Lcom/android/launcher2/BaseItem;
    .end local v19           #itemFromWorkspace:Z
    :pswitch_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 3247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    goto/16 :goto_1

    .line 3137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 1401
    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 1403
    const/4 v11, 0x0

    .line 1404
    .local v11, skipDrawing:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    move-result v12

    if-nez v12, :cond_0

    const/4 v11, 0x1

    .line 1407
    :goto_0
    if-eqz v11, :cond_1

    .line 1464
    :goto_1
    return-void

    .line 1404
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 1411
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    if-nez v12, :cond_a

    .line 1412
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v7, v12, 0x2

    .line 1413
    .local v7, halfScreenSize:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int v10, v12, v7

    .line 1414
    .local v10, screenCenter:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    if-eq v10, v12, :cond_2

    .line 1415
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    .line 1416
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 1419
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->dumpVisiblePages()V

    .line 1421
    const/4 v2, 0x0

    .line 1423
    .local v2, centerOfScreen:Lcom/android/launcher2/PagedView$PageInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/PagedView$PageInfo;

    .line 1424
    .local v9, pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    .line 1426
    :cond_4
    move-object v2, v9

    goto :goto_2

    .line 1429
    .end local v9           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getDrawingTime()J

    move-result-wide v5

    .line 1431
    .local v5, drawingTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1432
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mScrollY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mRight:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mLeft:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mScrollY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mBottom:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTop:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1434
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1438
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1440
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/PagedView$PageInfo;

    .line 1441
    .restart local v9       #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    if-eq v9, v2, :cond_7

    .line 1444
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v5, v6}, Lcom/android/launcher2/PagedView;->drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V

    goto :goto_3

    .line 1446
    .end local v9           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_8
    if-eqz v2, :cond_9

    .line 1447
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/launcher2/PagedView;->drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V

    .line 1449
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1450
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1454
    .end local v2           #centerOfScreen:Lcom/android/launcher2/PagedView$PageInfo;
    .end local v5           #drawingTime:J
    .end local v7           #halfScreenSize:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #screenCenter:I
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1455
    .local v3, currentTime:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v3, v4}, Lcom/android/launcher2/PageIndicatorManager;->drawPageIndicator(Landroid/graphics/Canvas;J)V

    goto/16 :goto_1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 1504
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1505
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 1506
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1515
    :goto_0
    return v0

    .line 1509
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1510
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1511
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1515
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public enableRollNavigation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3326
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_panning"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 3330
    :cond_0
    sget-boolean v1, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "MotionEngine"

    const-string v2, "motion setting is turned off"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    :cond_1
    :goto_0
    return-void

    .line 3333
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3334
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentRotation:I

    .line 3335
    sget-boolean v1, Lcom/android/launcher2/PagedView;->sIsMotionEngineEnabled:Z

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    if-nez v1, :cond_1

    .line 3337
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 3338
    iput v3, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDy:I

    .line 3339
    iput v3, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDx:I

    .line 3340
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 3341
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    .line 3342
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_panning_sensitivity"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x28

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    .line 3346
    sget-boolean v1, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "MotionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableRollNavigation : mPanningBasis "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 1543
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1544
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 1546
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1547
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1557
    :cond_0
    return-void

    .line 1550
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1553
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1554
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1555
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 382
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 367
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 377
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getAdjustedPageIndex(I)I
    .locals 3
    .parameter "pageIndex"

    .prologue
    const/4 v1, 0x0

    .line 899
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 900
    .local v0, lastPageIndex:I
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIgnoreSecretPage:Z

    .line 901
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 904
    if-gez p1, :cond_0

    .line 911
    .end local v0           #lastPageIndex:I
    :goto_0
    return v0

    .line 906
    .restart local v0       #lastPageIndex:I
    :cond_0
    if-le p1, v0, :cond_1

    move v0, v1

    .line 907
    goto :goto_0

    :cond_1
    move v0, p1

    .line 909
    goto :goto_0

    .line 911
    :cond_2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 2744
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3
    .parameter "page"

    .prologue
    .line 2747
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 2748
    .local v0, count:I
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected getChildOffset(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 2264
    const/4 v1, 0x0

    .line 2265
    .local v1, offset:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2266
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2267
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2269
    :cond_0
    return v1
.end method

.method public getClosestPageForScrollX(I)I
    .locals 4
    .parameter "scrollX"

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 772
    .local v0, pageCount:I
    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 773
    .local v1, pageIndex:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 774
    rem-int/2addr v1, v0

    .line 776
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    .line 778
    return v1
.end method

.method getComingPage()I
    .locals 2

    .prologue
    .line 424
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected getHorizontalVisibilityExtension()I
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x0

    return v0
.end method

.method protected getInclusivePages(I)V
    .locals 11
    .parameter "currentPageIndex"

    .prologue
    .line 2645
    sget-object v9, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2646
    sget-object v2, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    .line 2648
    .local v2, inclusivePages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2650
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCacheSize()I

    move-result v0

    .line 2651
    .local v0, cacheSize:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    .line 2654
    .local v4, pageCount:I
    if-lt v0, v4, :cond_0

    .line 2655
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_8

    .line 2656
    sget-object v9, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2655
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2661
    .end local v1           #i:I
    :cond_0
    add-int/lit8 v8, v0, -0x1

    .line 2662
    .local v8, size:I
    int-to-float v9, v8

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 2663
    .local v5, pagesToLeft:I
    div-int/lit8 v6, v8, 0x2

    .line 2664
    .local v6, pagesToRight:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2665
    const/4 v1, 0x1

    .restart local v1       #i:I
    :goto_1
    if-gt v1, v5, :cond_2

    .line 2666
    sub-int v3, p1, v1

    .line 2667
    .local v3, leftIndex:I
    if-gez v3, :cond_1

    .line 2668
    add-int/2addr v3, v4

    .line 2671
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2665
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2674
    .end local v3           #leftIndex:I
    :cond_2
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v6, :cond_8

    .line 2675
    add-int v7, p1, v1

    .line 2676
    .local v7, rightIndex:I
    if-lt v7, v4, :cond_3

    .line 2677
    sub-int/2addr v7, v4

    .line 2679
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2674
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2682
    .end local v1           #i:I
    .end local v7           #rightIndex:I
    :cond_4
    const/4 v1, 0x1

    .restart local v1       #i:I
    :goto_3
    if-gt v1, v5, :cond_6

    .line 2683
    sub-int v3, p1, v1

    .line 2684
    .restart local v3       #leftIndex:I
    if-ltz v3, :cond_5

    .line 2685
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2682
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2689
    .end local v3           #leftIndex:I
    :cond_6
    const/4 v1, 0x1

    :goto_4
    if-gt v1, v6, :cond_8

    .line 2690
    add-int v7, p1, v1

    .line 2691
    .restart local v7       #rightIndex:I
    if-ge v7, v4, :cond_7

    .line 2692
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2689
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2696
    .end local v5           #pagesToLeft:I
    .end local v6           #pagesToRight:I
    .end local v7           #rightIndex:I
    .end local v8           #size:I
    :cond_8
    return-void
.end method

.method public getLeftPage()Landroid/view/View;
    .locals 1

    .prologue
    .line 3466
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez v0, :cond_0

    .line 3467
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3469
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected getNonLoopedMappedScrollX(I)I
    .locals 6
    .parameter "scrollX"

    .prologue
    .line 942
    move v0, p1

    .line 943
    .local v0, adjustedScrollX:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 944
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v2

    .line 945
    .local v2, lb:I
    sub-int v1, p1, v2

    .line 946
    .local v1, deltaScrollX:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v4

    .line 947
    .local v4, pg:I
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    .line 949
    .local v3, nonLoopedScrollXForPg:I
    add-int v0, v3, v1

    .line 956
    .end local v1           #deltaScrollX:I
    .end local v2           #lb:I
    .end local v3           #nonLoopedScrollXForPg:I
    .end local v4           #pg:I
    :cond_0
    return v0
.end method

.method public getNonLoopedScrollXForPageIndex(I)I
    .locals 1
    .parameter "pageIndex"

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageBackgroundAlpha()F
    .locals 1

    .prologue
    .line 3127
    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    return v0
.end method

.method public getPageCacheSize()I
    .locals 1

    .prologue
    .line 3540
    const/4 v0, 0x3

    return v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageIndexForItemId(J)I
    .locals 6
    .parameter "id"

    .prologue
    .line 3550
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 3551
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 3552
    .local v3, page:Lcom/android/launcher2/CellLayoutChildren;
    iget-object v4, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 3553
    .local v2, item:Lcom/android/launcher2/BaseItem;
    iget-wide v4, v2, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 3559
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/launcher2/BaseItem;
    .end local v3           #page:Lcom/android/launcher2/CellLayoutChildren;
    :goto_1
    return v0

    .line 3550
    .restart local v0       #i:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #page:Lcom/android/launcher2/CellLayoutChildren;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3559
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #page:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected getPageIndexForScrollX(I)I
    .locals 5
    .parameter "scrollX"

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 783
    .local v0, pageCount:I
    const/high16 v1, -0x8000

    .line 785
    .local v1, res:I
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->getSlotForScrollX(I)I

    move-result v2

    .line 786
    .local v2, slot:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 787
    if-gez p1, :cond_0

    .line 788
    add-int/lit8 v3, v0, -0x1

    rem-int v4, v2, v0

    sub-int v1, v3, v4

    .line 795
    :goto_0
    return v1

    .line 790
    :cond_0
    rem-int v1, v2, v0

    goto :goto_0

    .line 793
    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected getPageIndicatorManager(Lcom/android/launcher2/PagedView;III)Lcom/android/launcher2/PageIndicatorManager;
    .locals 1
    .parameter "pagedView"
    .parameter "pageIndicatorTop"
    .parameter "pageIndicatorGap"
    .parameter "pageIndicatorMaxVisible"

    .prologue
    .line 3672
    new-instance v0, Lcom/android/launcher2/PageIndicatorManager;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/launcher2/PageIndicatorManager;-><init>(Lcom/android/launcher2/PagedView;III)V

    return-object v0
.end method

.method public getPageNearestToCenterOfScreen()I
    .locals 15

    .prologue
    .line 2298
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v8

    .line 2299
    .local v8, pageWidth:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 2300
    .local v2, leftEdge:I
    iget v13, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int v10, v13, v8

    .line 2301
    .local v10, rightEdge:I
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v5

    .line 2302
    .local v5, pageLeftIndex:I
    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v7

    .line 2303
    .local v7, pageRightIndex:I
    const/high16 v0, -0x8000

    .line 2305
    .local v0, indexOfPageOnScreen:I
    if-ne v5, v7, :cond_1

    .line 2306
    move v0, v5

    .line 2340
    :cond_0
    :goto_0
    return v0

    .line 2308
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 2309
    .local v3, leftView:Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    .line 2310
    .local v11, rightView:Landroid/view/View;
    if-eqz v3, :cond_0

    if-eqz v11, :cond_0

    .line 2311
    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v13

    invoke-direct {p0, v3}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v14

    add-int v4, v13, v14

    .line 2312
    .local v4, pageLeftCenter:I
    invoke-direct {p0, v10}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v13

    invoke-direct {p0, v11}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v14

    add-int v6, v13, v14

    .line 2313
    .local v6, pageRightCenter:I
    iget v13, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    div-int/lit8 v14, v8, 0x2

    add-int v12, v13, v14

    .line 2314
    .local v12, screenCenter:I
    sub-int v13, v12, v4

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2315
    .local v1, leftDelta:I
    sub-int v13, v6, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 2318
    .local v9, rightDelta:I
    iget v13, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v13, v5, :cond_7

    .line 2319
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v13

    if-nez v13, :cond_3

    .line 2320
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0xa

    if-lt v1, v13, :cond_2

    move v0, v7

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    .line 2321
    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2322
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x2

    if-lt v1, v13, :cond_4

    move v0, v7

    :goto_2
    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_2

    .line 2324
    :cond_5
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x3

    if-lt v1, v13, :cond_6

    move v0, v7

    :goto_3
    goto :goto_0

    :cond_6
    move v0, v5

    goto :goto_3

    .line 2328
    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2329
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x2

    if-lt v9, v13, :cond_8

    move v0, v5

    :goto_4
    goto :goto_0

    :cond_8
    move v0, v7

    goto :goto_4

    .line 2331
    :cond_9
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x3

    if-lt v9, v13, :cond_a

    move v0, v5

    :goto_5
    goto/16 :goto_0

    :cond_a
    move v0, v7

    goto :goto_5
.end method

.method public getPageSpacing()I
    .locals 1

    .prologue
    .line 2852
    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    return v0
.end method

.method public getPageSwitchListener()Lcom/android/launcher2/PagedView$PageSwitchListener;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    return-object v0
.end method

.method protected getPageTotWidth()I
    .locals 4

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int v1, v2, v3

    .line 744
    .local v1, result:I
    if-gtz v1, :cond_0

    .line 745
    const/16 v0, 0x13

    .line 746
    .local v0, RANDOM_NUMBER_WITH_NO_MEANING:I
    const/16 v1, 0x13

    .line 749
    .end local v0           #RANDOM_NUMBER_WITH_NO_MEANING:I
    :cond_0
    return v1
.end method

.method public getPageZoom()F
    .locals 1

    .prologue
    .line 3113
    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    return v0
.end method

.method protected getRelativeChildOffset(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 2252
    const/4 v1, 0x0

    .line 2253
    .local v1, offset:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2254
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2255
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 2257
    :cond_0
    return v1
.end method

.method public getRightPage()Landroid/view/View;
    .locals 2

    .prologue
    .line 3474
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3475
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3477
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F
    .locals 8
    .parameter "pageInfo"

    .prologue
    const/high16 v7, 0x3f80

    .line 1878
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    .line 1879
    .local v3, totalDistance:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 1880
    .local v1, screenLeft:I
    iget v4, p1, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    .line 1881
    .local v4, viewLeft:I
    sub-int v0, v1, v4

    .line 1882
    .local v0, delta:I
    int-to-float v5, v0

    int-to-float v6, v3

    mul-float/2addr v6, v7

    div-float v2, v5, v6

    .line 1883
    .local v2, scrollProgress:F
    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1884
    const/high16 v5, -0x4080

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1886
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1887
    const/4 v2, 0x0

    .line 1889
    :cond_0
    return v2
.end method

.method public getScroller()Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 3581
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method public getSecretPageCnt()I
    .locals 3

    .prologue
    .line 3720
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 3721
    .local v1, v:Landroid/view/View;
    const/4 v0, 0x0

    .line 3741
    .local v0, ret:I
    return v0
.end method

.method public handleScrollOnOrientationChange()V
    .locals 1

    .prologue
    .line 3530
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3531
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 3535
    :cond_0
    :goto_0
    return-void

    .line 3532
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v0, :cond_0

    .line 3533
    iget v0, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getClosestPageForScrollX(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method public hidePageIndicator(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 2945
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->hidePageIndicator(Z)V

    .line 2946
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1596
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1597
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    .line 1598
    .local v1, res:Z
    if-eqz v0, :cond_0

    .line 1599
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 1601
    :cond_0
    :goto_0
    return v1

    .line 1599
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1584
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1585
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    .line 1586
    .local v1, res:Z
    if-eqz v0, :cond_0

    .line 1587
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    const/4 v1, 0x1

    .line 1589
    :cond_0
    :goto_0
    return v1

    .line 1587
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 436
    return p1
.end method

.method protected initCurrentPage(I)V
    .locals 0
    .parameter "currentPage"

    .prologue
    .line 456
    iput p1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 457
    return-void
.end method

.method protected invalidatePageData()V
    .locals 2

    .prologue
    .line 2766
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 2767
    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1
    .parameter "currentPage"

    .prologue
    .line 2769
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 2770
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 6
    .parameter "currentPage"
    .parameter "immediateAndOnly"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x1

    .line 2772
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v2, :cond_1

    .line 2813
    :cond_0
    :goto_0
    return-void

    .line 2776
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v2, :cond_0

    .line 2777
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2786
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncPages()V

    .line 2789
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 2793
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedView;->measure(II)V

    .line 2796
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

    if-eqz v2, :cond_3

    .line 2797
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->restoreCurrentPageFromState(Lcom/android/launcher2/PagedView$SavedState;)V

    .line 2798
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

    .line 2804
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 2805
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 2806
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2805
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2799
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_3
    const/4 v2, -0x1

    if-le p1, v2, :cond_2

    .line 2800
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_1

    .line 2810
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_4
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-direct {p0, v2, p2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 2811
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    goto :goto_0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    return v0
.end method

.method public isEnabledFingerHovering()Z
    .locals 1

    .prologue
    .line 3062
    const/4 v0, 0x0

    return v0
.end method

.method isFastScrolling()Z
    .locals 1

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    return v0
.end method

.method public isHoveringAreaX(F)I
    .locals 3
    .parameter "x"

    .prologue
    .line 3066
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mHoverScrollRightPadding:I

    sub-int v0, v1, v2

    .line 3068
    .local v0, width:I
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollWidth:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 3070
    const/4 v1, 0x2

    .line 3076
    :goto_0
    return v1

    .line 3071
    :cond_0
    iget v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollWidth:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 3073
    const/4 v1, 0x3

    goto :goto_0

    .line 3076
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHoveringAreaY(F)Z
    .locals 1
    .parameter "y"

    .prologue
    .line 3080
    iget v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollTop:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 3081
    const/4 v0, 0x1

    .line 3084
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLoopingEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 734
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->isLoopingDisabledInCSC()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPageAddedForDrag(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 3716
    const/4 v0, 0x0

    return v0
.end method

.method public isPageConstructed(I)Z
    .locals 3
    .parameter "i"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2738
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-nez v0, :cond_0

    .line 2740
    :goto_0
    return v1

    .line 2739
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    move v1, v2

    goto :goto_0

    .line 2740
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public isPageFastMoving()Z
    .locals 1

    .prologue
    .line 629
    sget-boolean v0, Lcom/android/launcher2/PagedView;->mIsPageFastMoving:Z

    return v0
.end method

.method protected isPageInclusive(I)Z
    .locals 2
    .parameter "page"

    .prologue
    .line 2633
    sget-object v0, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method protected loadAssociatedPages(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 2594
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 2595
    return-void
.end method

.method protected maxOverScroll()F
    .locals 3

    .prologue
    .line 1952
    const/high16 v0, 0x3f80

    .line 1953
    .local v0, f:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1954
    const v1, 0x3e0f5c29

    mul-float/2addr v1, v0

    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 3519
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    .line 3521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 3522
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->handleOrientationChange()V

    .line 3523
    return-void
.end method

.method protected onDrawComplete(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1397
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 2167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 2168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2191
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 2173
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 2174
    const/4 v1, 0x0

    .line 2175
    .local v1, vscroll:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 2180
    .local v0, hscroll:F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 2181
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 2182
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    .line 2186
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 2177
    .end local v0           #hscroll:F
    .end local v1           #vscroll:F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 2178
    .restart local v1       #vscroll:F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0       #hscroll:F
    goto :goto_1

    .line 2184
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    goto :goto_2

    .line 2168
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2972
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 2975
    .local v1, toolType:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2990
    :cond_0
    :goto_0
    return v2

    .line 2977
    :cond_1
    if-ne v1, v3, :cond_3

    .line 2979
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isEnabledFingerHovering()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2981
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2982
    .local v0, isFingerHoveringOn:I
    if-eqz v0, :cond_0

    .end local v0           #isFingerHoveringOn:I
    :cond_2
    move v2, v3

    .line 2990
    goto :goto_0

    .line 2983
    :cond_3
    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    .line 2986
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2987
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->scrollByHover(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 2926
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2927
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2928
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2929
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2930
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2931
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2933
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2920
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2921
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2922
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2951
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.feature.hovering_ui"

    invoke-static {v4, v5}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2967
    :cond_0
    :goto_0
    return v2

    .line 2954
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 2955
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2956
    .local v1, isHoveringOn:I
    if-eqz v1, :cond_0

    .line 2958
    .end local v1           #isHoveringOn:I
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 2960
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2961
    .local v0, isFingerHoveringOn:I
    if-eqz v0, :cond_0

    .line 2964
    .end local v0           #isFingerHoveringOn:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->isHoveringAreaX(F)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->isHoveringAreaY(F)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 2967
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    .line 1607
    const/4 v3, 0x0

    .line 1608
    .local v3, touchOnPageIndicator:Z
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v3

    .line 1611
    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v7, :cond_5

    .line 1612
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_1

    .line 1613
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v7, v7, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1615
    const/4 v7, 0x0

    .line 1754
    :goto_0
    return v7

    .line 1618
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1622
    :cond_1
    sget-boolean v7, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    if-eqz v7, :cond_2

    .line 1623
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-static {v7}, Lcom/android/launcher2/guide/GuideFragment;->showCompleteDialog(Landroid/app/Activity;)V

    .line 1624
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v7

    sput v7, Lcom/android/launcher2/guide/GuideFragment;->currentPageToStopNavigation:I

    .line 1625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 1627
    :cond_3
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "navigation"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1628
    const/4 v7, 0x0

    goto :goto_0

    .line 1632
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1633
    const/4 v7, 0x0

    goto :goto_0

    .line 1637
    :cond_5
    iget-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    if-nez v7, :cond_6

    .line 1638
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->updateMotionTracking(Landroid/view/MotionEvent;)V

    .line 1644
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1647
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 1654
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1655
    .local v0, action:I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_8

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 1657
    const/4 v7, 0x1

    goto :goto_0

    .line 1660
    :cond_8
    const/4 v2, 0x0

    .line 1661
    .local v2, shouldInterceptForFastScroll:Z
    sget-object v7, Lcom/android/launcher2/PagedView;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v8, "Launcher_touch"

    invoke-virtual {v7, v8}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1663
    sget-object v7, Lcom/android/launcher2/PagedView;->cpuMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v1

    .line 1664
    .local v1, coreTable:[I
    if-eqz v1, :cond_9

    .line 1665
    sget-object v7, Lcom/android/launcher2/PagedView;->cpuMaxBooster:Landroid/os/DVFSHelper;

    const-string v8, "CORE_NUM"

    const/4 v9, 0x0

    aget v9, v1, v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1667
    :cond_9
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 1754
    :cond_a
    :goto_1
    :pswitch_0
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v7, :cond_b

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_c

    :cond_b
    if-eqz v2, :cond_17

    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1669
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1673
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1674
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1675
    .local v6, y:F
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v7, v4, v6}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v2

    .line 1676
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    .line 1679
    sget-object v7, Lcom/android/launcher2/PagedView;->chipset:Ljava/lang/String;

    const-string v8, "8930"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    sget-object v7, Lcom/android/launcher2/PagedView;->chipset:Ljava/lang/String;

    const-string v8, "piranha"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1680
    :cond_d
    sget-object v7, Lcom/android/launcher2/PagedView;->cpuMaxBooster:Landroid/os/DVFSHelper;

    const-string v8, "Launcher_touch"

    invoke-virtual {v7, v8}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    .line 1681
    sget-object v7, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v7

    if-eqz v7, :cond_e

    .line 1682
    sget-object v7, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->acquire()V

    .line 1690
    :cond_e
    :goto_2
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1691
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->isShowCamera:Z

    .line 1692
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1699
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getFinalX()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 1700
    .local v5, xDist:I
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_f

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    if-ge v5, v7, :cond_11

    .line 1701
    :cond_f
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1702
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1708
    :goto_3
    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v7, :cond_a

    .line 1713
    invoke-virtual {p0, v4, v6}, Lcom/android/launcher2/PagedView;->hitsPreviousPage(FF)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1714
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto/16 :goto_1

    .line 1686
    .end local v5           #xDist:I
    :cond_10
    sget-object v7, Lcom/android/launcher2/PagedView;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v8, "Launcher_touch"

    invoke-virtual {v7, v8}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    goto :goto_2

    .line 1704
    .restart local v5       #xDist:I
    :cond_11
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_3

    .line 1715
    :cond_12
    invoke-virtual {p0, v4, v6}, Lcom/android/launcher2/PagedView;->hitsNextPage(FF)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1716
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto/16 :goto_1

    .line 1722
    .end local v4           #x:F
    .end local v5           #xDist:I
    .end local v6           #y:F
    :pswitch_3
    sget-object v7, Lcom/android/launcher2/PagedView;->chipset:Ljava/lang/String;

    const-string v8, "8930"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    sget-object v7, Lcom/android/launcher2/PagedView;->chipset:Ljava/lang/String;

    const-string v8, "piranha"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1723
    :cond_13
    sget-object v7, Lcom/android/launcher2/PagedView;->cpuMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->release()V

    .line 1724
    sget-object v7, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v7

    if-eqz v7, :cond_14

    .line 1725
    sget-object v7, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->release()V

    .line 1731
    :cond_14
    :goto_4
    :pswitch_4
    const/4 v7, 0x4

    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v7, v8, :cond_15

    .line 1732
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1734
    :cond_15
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1735
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1736
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    .line 1737
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 1728
    :cond_16
    sget-object v7, Lcom/android/launcher2/PagedView;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->release()V

    goto :goto_4

    .line 1741
    :pswitch_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 1745
    :pswitch_6
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 1746
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1754
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 19
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1221
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v15, :cond_0

    .line 1311
    :goto_0
    return-void

    .line 1229
    :cond_0
    sub-int v14, p4, p2

    .line 1230
    .local v14, pageWidth:I
    sub-int v12, p5, p3

    .line 1231
    .local v12, pageHeight:I
    const/4 v13, 0x0

    .line 1232
    .local v13, pageLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    .line 1233
    .local v3, childCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v3, :cond_3

    .line 1234
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1235
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 1236
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 1237
    .local v11, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1238
    .local v7, childWidth:I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1240
    .local v4, childHeight:I
    iget v9, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1241
    .local v9, gravity:I
    const/4 v15, -0x1

    if-ne v9, v15, :cond_1

    .line 1242
    const/16 v9, 0x31

    .line 1245
    :cond_1
    and-int/lit8 v15, v9, 0x7

    packed-switch v15, :pswitch_data_0

    .line 1256
    :pswitch_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    sub-int v15, v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    sub-int v1, v15, v16

    .line 1257
    .local v1, availWidth:I
    sub-int v8, v1, v7

    .line 1258
    .local v8, extraWidth:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    add-int/2addr v15, v13

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    div-int/lit8 v16, v8, 0x2

    add-int v5, v15, v16

    .line 1261
    .end local v1           #availWidth:I
    .end local v8           #extraWidth:I
    .local v5, childLeft:I
    :goto_2
    and-int/lit8 v15, v9, 0x70

    sparse-switch v15, :sswitch_data_0

    .line 1270
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    move/from16 v16, v0

    sub-int v16, v12, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    sub-int v16, v16, v4

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v16, v0

    sub-int v6, v15, v16

    .line 1275
    .local v6, childTop:I
    :goto_3
    add-int v15, v5, v7

    add-int v16, v6, v4

    move/from16 v0, v16

    invoke-virtual {v2, v5, v6, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1282
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v15, v14

    add-int/2addr v13, v15

    .line 1233
    .end local v4           #childHeight:I
    .end local v5           #childLeft:I
    .end local v6           #childTop:I
    .end local v7           #childWidth:I
    .end local v9           #gravity:I
    .end local v11           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1247
    .restart local v4       #childHeight:I
    .restart local v7       #childWidth:I
    .restart local v9       #gravity:I
    .restart local v11       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    add-int/2addr v15, v13

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v0

    add-int v5, v15, v16

    .line 1248
    .restart local v5       #childLeft:I
    goto :goto_2

    .line 1250
    .end local v5           #childLeft:I
    :pswitch_2
    add-int v15, v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v15, v7

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    sub-int v5, v15, v16

    .line 1252
    .restart local v5       #childLeft:I
    goto :goto_2

    .line 1264
    :sswitch_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    sub-int v6, v15, v16

    .line 1265
    .restart local v6       #childTop:I
    goto :goto_3

    .line 1267
    .end local v6           #childTop:I
    :sswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    sub-int v15, v12, v15

    sub-int/2addr v15, v4

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v16, v0

    sub-int v6, v15, v16

    .line 1268
    .restart local v6       #childTop:I
    goto :goto_3

    .line 1286
    .end local v2           #child:Landroid/view/View;
    .end local v4           #childHeight:I
    .end local v5           #childLeft:I
    .end local v6           #childTop:I
    .end local v7           #childWidth:I
    .end local v9           #gravity:I
    .end local v11           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    if-nez v15, :cond_4

    .line 1287
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->setHoverScrollBoundary()V

    .line 1290
    :cond_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    .line 1291
    if-nez p1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v15, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v15, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 1292
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher2/PagedView;->jumpToPageInternal(I)V

    .line 1293
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->repositionOpenFolder()V

    .line 1294
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 1295
    sget-boolean v15, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v15, :cond_6

    const-string v15, "change_wallpaper"

    sget-object v16, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1297
    :cond_6
    const/high16 v15, -0x8000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 1299
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v15}, Lcom/android/launcher2/PageIndicatorManager;->layoutPageIndicator()V

    .line 1301
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    const/high16 v16, -0x8000

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 1302
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutMustAnim:Z

    if-eqz v15, :cond_9

    .line 1303
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/PagedView;->mDelaySnapToPage:Lcom/android/launcher2/PagedView$DelaySnapToPage;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDur:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDir:I

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/android/launcher2/PagedView$DelaySnapToPage;->setup(III)V

    .line 1307
    :goto_4
    const/high16 v15, -0x8000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 1309
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->setDirtyFlags()V

    goto/16 :goto_0

    .line 1305
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher2/PagedView;->jumpToPageInternal(I)V

    goto :goto_4

    .line 1245
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1261
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->checkPageIndicatorLongPress(FF)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 25
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1099
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 1100
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1200
    :goto_0
    return-void

    .line 1104
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    const/high16 v22, 0x4000

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    const/4 v4, 0x1

    .line 1105
    .local v4, checkMatchParentWidth:Z
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    const/high16 v22, 0x4000

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    const/4 v3, 0x1

    .line 1107
    .local v3, checkMatchParentHeight:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    move/from16 v22, v0

    add-int v20, v21, v22

    .line 1108
    .local v20, verticalPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    move/from16 v22, v0

    add-int v12, v21, v22

    .line 1109
    .local v12, horizontalPadding:I
    const/16 v16, 0x0

    .line 1110
    .local v16, maxWidth:I
    const/4 v15, 0x0

    .line 1111
    .local v15, maxHeight:I
    const/16 v17, 0x0

    .line 1113
    .local v17, mustMake2ndPass:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    .line 1114
    .local v5, childCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    if-ge v13, v5, :cond_b

    .line 1115
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1116
    .local v18, v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 1117
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1118
    .local v14, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x70

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    :cond_1
    const/16 v19, 0x1

    .line 1120
    .local v19, verticalGravityIsTop:Z
    :goto_4
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v8, v21, v22

    .line 1125
    .local v8, childHorizontalMargins:I
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v22, v0

    const/16 v23, 0x0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v24, v0

    if-eqz v19, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    :goto_5
    sub-int v21, v24, v21

    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    add-int v9, v22, v21

    .line 1128
    .local v9, childVerticalMargins:I
    add-int v21, v12, v8

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    move/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v11

    .line 1131
    .local v11, childWidthMeasureSpec:I
    add-int v21, v20, v9

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v7

    .line 1134
    .local v7, childHeightMeasureSpec:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1139
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v10, v21, v8

    .line 1140
    .local v10, childWidth:I
    move/from16 v0, v16

    if-le v10, v0, :cond_2

    .line 1141
    move/from16 v16, v10

    .line 1143
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v6, v21, v9

    .line 1144
    .local v6, childHeight:I
    if-le v6, v15, :cond_3

    .line 1145
    move v15, v6

    .line 1147
    :cond_3
    if-eqz v4, :cond_4

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    :cond_4
    if-eqz v3, :cond_6

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1149
    :cond_5
    const/16 v17, 0x1

    .line 1114
    .end local v6           #childHeight:I
    .end local v7           #childHeightMeasureSpec:I
    .end local v8           #childHorizontalMargins:I
    .end local v9           #childVerticalMargins:I
    .end local v10           #childWidth:I
    .end local v11           #childWidthMeasureSpec:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v19           #verticalGravityIsTop:Z
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1104
    .end local v3           #checkMatchParentHeight:Z
    .end local v4           #checkMatchParentWidth:Z
    .end local v5           #childCount:I
    .end local v12           #horizontalPadding:I
    .end local v13           #i:I
    .end local v15           #maxHeight:I
    .end local v16           #maxWidth:I
    .end local v17           #mustMake2ndPass:Z
    .end local v18           #v:Landroid/view/View;
    .end local v20           #verticalPadding:I
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1105
    .restart local v4       #checkMatchParentWidth:Z
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1118
    .restart local v3       #checkMatchParentHeight:Z
    .restart local v5       #childCount:I
    .restart local v12       #horizontalPadding:I
    .restart local v13       #i:I
    .restart local v14       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v15       #maxHeight:I
    .restart local v16       #maxWidth:I
    .restart local v17       #mustMake2ndPass:Z
    .restart local v18       #v:Landroid/view/View;
    .restart local v20       #verticalPadding:I
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 1125
    .restart local v8       #childHorizontalMargins:I
    .restart local v19       #verticalGravityIsTop:Z
    :cond_a
    const/16 v21, 0x0

    goto :goto_5

    .line 1153
    .end local v8           #childHorizontalMargins:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v18           #v:Landroid/view/View;
    .end local v19           #verticalGravityIsTop:Z
    :cond_b
    add-int v16, v16, v12

    .line 1154
    add-int v15, v15, v20

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getSuggestedMinimumHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1160
    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/PagedView;->resolveSize(II)I

    move-result v21

    move/from16 v0, p2

    invoke-static {v15, v0}, Lcom/android/launcher2/PagedView;->resolveSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->setMeasuredDimension(II)V

    .line 1165
    if-eqz v17, :cond_11

    .line 1166
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v21

    sub-int v16, v21, v12

    .line 1167
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v21

    sub-int v15, v21, v20

    .line 1168
    const/4 v13, 0x0

    :goto_6
    if-ge v13, v5, :cond_11

    .line 1169
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1170
    .restart local v18       #v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    .line 1171
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1172
    .restart local v14       #lp:Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v4, :cond_c

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    :cond_c
    if-eqz v3, :cond_e

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 1178
    :cond_d
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 1179
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    sub-int v21, v16, v21

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const/high16 v22, 0x4000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1186
    .restart local v11       #childWidthMeasureSpec:I
    :goto_7
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 1187
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v21, v0

    sub-int v21, v15, v21

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const/high16 v22, 0x4000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1194
    .restart local v7       #childHeightMeasureSpec:I
    :goto_8
    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1168
    .end local v7           #childHeightMeasureSpec:I
    .end local v11           #childWidthMeasureSpec:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1182
    .restart local v14       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_f
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v21, v21, v12

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    move/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v11

    .restart local v11       #childWidthMeasureSpec:I
    goto :goto_7

    .line 1190
    :cond_10
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int v21, v21, v20

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v7

    .restart local v7       #childHeightMeasureSpec:I
    goto :goto_8

    .line 1199
    .end local v7           #childHeightMeasureSpec:I
    .end local v11           #childWidthMeasureSpec:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v18           #v:Landroid/view/View;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->setMaxScrollX()V

    goto/16 :goto_0
.end method

.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 12
    .parameter "motionEvent"

    .prologue
    const-wide/16 v10, 0x0

    .line 3372
    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    if-nez v6, :cond_1

    .line 3463
    :cond_0
    :goto_0
    return-void

    .line 3374
    :cond_1
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v6, :cond_0

    .line 3376
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 3378
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDx()I

    move-result v3

    .line 3379
    .local v3, dx:I
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDy()I

    move-result v4

    .line 3382
    .local v4, dy:I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDx:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDx:I

    .line 3383
    iget v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDy:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDy:I

    .line 3386
    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentRotation:I

    packed-switch v6, :pswitch_data_1

    .line 3397
    int-to-double v1, v3

    .line 3410
    .local v1, delta:D
    :goto_1
    sget-boolean v6, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v6, :cond_2

    const-string v6, "MotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMotionListener : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delta = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " acc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    :cond_2
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mPanningStopDelta:D

    cmpl-double v6, v6, v10

    if-lez v6, :cond_4

    .line 3414
    iget-wide v7, p0, Lcom/android/launcher2/PagedView;->mPanningStopDelta:D

    cmpl-double v6, v1, v10

    if-lez v6, :cond_3

    const/4 v6, -0x1

    :goto_2
    int-to-double v9, v6

    mul-double/2addr v9, v1

    add-double v6, v7, v9

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mPanningStopDelta:D

    goto :goto_0

    .line 3388
    .end local v1           #delta:D
    :pswitch_1
    neg-int v6, v4

    int-to-double v1, v6

    .line 3389
    .restart local v1       #delta:D
    goto :goto_1

    .line 3391
    .end local v1           #delta:D
    :pswitch_2
    neg-int v6, v3

    int-to-double v1, v6

    .line 3392
    .restart local v1       #delta:D
    goto :goto_1

    .line 3394
    .end local v1           #delta:D
    :pswitch_3
    int-to-double v1, v4

    .line 3395
    .restart local v1       #delta:D
    goto :goto_1

    .line 3414
    :cond_3
    const/4 v6, 0x1

    goto :goto_2

    .line 3418
    :cond_4
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    add-double/2addr v6, v1

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 3419
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    .line 3421
    .local v0, currentPage:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v6, v6, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    .line 3422
    .local v5, workspace:Lcom/android/launcher2/Workspace;
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    neg-double v8, v8

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_9

    .line 3423
    if-ltz v0, :cond_7

    .line 3425
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_5

    .line 3426
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3427
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 3429
    :cond_5
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 3431
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v6, v7, :cond_6

    .line 3432
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 3434
    :cond_6
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 3436
    sget-boolean v6, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "MotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMotionListener : panning left from page"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3438
    :cond_7
    sget-boolean v6, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v6, :cond_8

    const-string v6, "MotionEngine"

    const-string v7, "onMotionListener : accumulated delta is not considered, skip adding"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    :cond_8
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    sub-double/2addr v6, v1

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    goto/16 :goto_0

    .line 3441
    :cond_9
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    .line 3442
    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-gt v6, v7, :cond_c

    .line 3444
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_a

    .line 3445
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3446
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 3448
    :cond_a
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    sub-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 3450
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v6, v7, :cond_b

    .line 3451
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 3453
    :cond_b
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 3455
    sget-boolean v6, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "MotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMotionListener : panning right from page"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3457
    :cond_c
    sget-boolean v6, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v6, :cond_d

    const-string v6, "MotionEngine"

    const-string v7, "onMotionListener : accumulated delta is not considered, skip adding"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    :cond_d
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    sub-double/2addr v6, v1

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    goto/16 :goto_0

    .line 3376
    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch

    .line 3386
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPageBeginMoving()V
    .locals 1

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/PagedView;->mIsPageFastMoving:Z

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    .line 626
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 2

    .prologue
    .line 634
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/PagedView;->mIsPageFastMoving:Z

    .line 635
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    .line 637
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_1

    .line 638
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->currentPageToStopNavigation:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/launcher2/guide/GuideFragment;->currentPageToStopNavigation:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->showCompleteDialog(Landroid/app/Activity;)V

    .line 645
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1495
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1496
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1497
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1499
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2576
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/android/launcher2/PagedView$SavedState;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 2577
    check-cast v1, Lcom/android/launcher2/PagedView$SavedState;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2578
    check-cast p1, Lcom/android/launcher2/PagedView$SavedState;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

    .line 2586
    :goto_0
    return-void

    .line 2579
    .restart local p1
    :cond_0
    instance-of v1, p1, Lcom/android/launcher2/PagedView$SavedState;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2580
    check-cast v0, Lcom/android/launcher2/PagedView$SavedState;

    .line 2581
    .local v0, ss:Lcom/android/launcher2/PagedView$SavedState;
    invoke-virtual {v0}, Lcom/android/launcher2/PagedView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2582
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->restoreCurrentPageFromState(Lcom/android/launcher2/PagedView$SavedState;)V

    goto :goto_0

    .line 2584
    .end local v0           #ss:Lcom/android/launcher2/PagedView$SavedState;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 2568
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2569
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/launcher2/PagedView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/launcher2/PagedView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2570
    .local v0, ss:Lcom/android/launcher2/PagedView$SavedState;
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iput v2, v0, Lcom/android/launcher2/PagedView$SavedState;->currentPage:I

    .line 2571
    return-object v0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 3305
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->cancelFastScroll()V

    .line 3306
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1965
    sget-boolean v8, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v11, :cond_0

    move v8, v9

    .line 2158
    :goto_0
    return v8

    .line 1967
    :cond_0
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    if-nez v8, :cond_1

    .line 1968
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->updateMotionTracking(Landroid/view/MotionEvent;)V

    .line 1970
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v8

    if-gtz v8, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_0

    .line 1972
    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v8, p1}, Lcom/android/launcher2/PageIndicatorManager;->handleEvent(Landroid/view/MotionEvent;)Z

    .line 1974
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1976
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1978
    .local v0, action:I
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v8, v10

    .line 2158
    goto :goto_0

    .line 1984
    :pswitch_1
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1985
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1987
    :cond_4
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1988
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->isShowCamera:Z

    .line 1990
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v8, v10, :cond_3

    .line 1991
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    goto :goto_1

    .line 1996
    :pswitch_2
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v8}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1997
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->isAddToScreenDialogShowing()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1998
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v8, v10, :cond_7

    .line 2000
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 2001
    .local v7, x:F
    iget v8, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v8, v11

    sub-float v2, v8, v7

    .line 2003
    .local v2, deltaX:F
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    add-float/2addr v8, v11

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 2018
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v11, 0x3f80

    cmpl-float v8, v8, v11

    if-ltz v8, :cond_6

    .line 2019
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    add-float/2addr v8, v2

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 2020
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    long-to-float v8, v11

    const v11, 0x4e6e6b28

    div-float/2addr v8, v11

    iput v8, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 2021
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-nez v8, :cond_5

    .line 2022
    float-to-int v8, v2

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    .line 2027
    :goto_2
    iput v7, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 2028
    float-to-int v8, v2

    int-to-float v8, v8

    sub-float v8, v2, v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    goto :goto_1

    .line 2025
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_2

    .line 2030
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto :goto_1

    .line 2033
    .end local v2           #deltaX:F
    .end local v7           #x:F
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 2039
    :pswitch_3
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v8, v10, :cond_8

    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v8, v13, :cond_10

    .line 2040
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 2041
    .restart local v7       #x:F
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2042
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v11, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    int-to-float v11, v11

    invoke-virtual {v5, v8, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2043
    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    float-to-int v6, v8

    .line 2046
    .local v6, velocityX:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v12, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v11, v12

    sub-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    add-float/2addr v8, v11

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 2047
    const/4 v3, 0x1

    .line 2049
    .local v3, dir:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v11, p0, Lcom/android/launcher2/PagedView;->MIN_LENGTH_FOR_FLING:I

    int-to-float v11, v11

    cmpl-float v8, v8, v11

    if-lez v8, :cond_e

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v11, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    if-le v8, v11, :cond_e

    .line 2052
    if-lez v6, :cond_c

    .line 2053
    const/4 v3, 0x2

    .line 2054
    iget v8, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    cmpg-float v8, v7, v8

    if-gez v8, :cond_a

    .line 2056
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 2105
    .local v4, nextPage:I
    :cond_9
    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    .line 2106
    .local v1, adjustedPage:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v1, v8, :cond_f

    iget v8, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v1, v8, :cond_f

    .line 2107
    iget v8, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v4, v8, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 2134
    .end local v1           #adjustedPage:I
    .end local v3           #dir:I
    .end local v4           #nextPage:I
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #velocityX:I
    .end local v7           #x:F
    :goto_4
    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 2135
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    .line 2136
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 2137
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->isShowCamera:Z

    goto/16 :goto_1

    .line 2072
    .restart local v3       #dir:I
    .restart local v5       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v6       #velocityX:I
    .restart local v7       #x:F
    :cond_a
    sget-boolean v8, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    if-eqz v8, :cond_b

    .line 2073
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez v8, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    iget-object v8, v8, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2074
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Launcher;->startCustomHome(Z)V

    .line 2075
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 2078
    :cond_b
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v4, v8, -0x1

    .restart local v4       #nextPage:I
    goto :goto_3

    .line 2081
    .end local v4           #nextPage:I
    :cond_c
    const/4 v3, 0x3

    .line 2082
    iget v8, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    cmpl-float v8, v7, v8

    if-lez v8, :cond_d

    .line 2084
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .restart local v4       #nextPage:I
    goto :goto_3

    .line 2088
    .end local v4           #nextPage:I
    :cond_d
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v4, v8, 0x1

    .line 2090
    .restart local v4       #nextPage:I
    sget-boolean v8, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    if-eqz v8, :cond_9

    .line 2091
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v8

    if-ne v4, v8, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    iget-object v8, v8, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2092
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/Launcher;->startCustomHome(Z)V

    .line 2093
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_3

    .line 2099
    .end local v4           #nextPage:I
    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v4

    .restart local v4       #nextPage:I
    goto :goto_3

    .line 2109
    .restart local v1       #adjustedPage:I
    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_4

    .line 2111
    .end local v1           #adjustedPage:I
    .end local v3           #dir:I
    .end local v4           #nextPage:I
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #velocityX:I
    .end local v7           #x:F
    :cond_10
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v8, v11, :cond_12

    .line 2115
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v4

    .line 2116
    .restart local v4       #nextPage:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v4, v8, :cond_11

    iget v8, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v4, v8, :cond_11

    .line 2117
    iget v8, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v4, v8, v11}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto/16 :goto_4

    .line 2119
    :cond_11
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_4

    .line 2121
    .end local v4           #nextPage:I
    :cond_12
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v8, v12, :cond_14

    .line 2125
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v4

    .line 2126
    .restart local v4       #nextPage:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v4, v8, :cond_13

    iget v8, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v4, v8, :cond_13

    .line 2127
    iget v8, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v4, v8, v12}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto/16 :goto_4

    .line 2129
    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_4

    .line 2132
    .end local v4           #nextPage:I
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    .line 2141
    :pswitch_4
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v8, v10, :cond_15

    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v8, v13, :cond_16

    .line 2142
    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 2144
    :cond_16
    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 2145
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    .line 2146
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 2150
    :pswitch_5
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 2154
    :pswitch_6
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 1978
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 2233
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    const/4 v3, 0x0

    .line 2817
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    .line 2818
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    .line 2819
    instance-of v1, p1, Lcom/android/launcher2/Page;

    if-eqz v1, :cond_1

    .line 2820
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2821
    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 2822
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2824
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 2825
    check-cast v1, Lcom/android/launcher2/Page;

    invoke-interface {v1}, Lcom/android/launcher2/Page;->enableHardwareLayers()V

    .line 2828
    .end local v0           #i:I
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2829
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3493
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    .line 3494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    .line 3495
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3496
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    .line 3497
    return-void
.end method

.method public openCamera()V
    .locals 2

    .prologue
    .line 2162
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    sget-object v1, Lcom/android/launcher2/PagedView;->CAMERA_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->startActivityWithTransition(Landroid/content/Intent;)V

    .line 2163
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 1946
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->dampedOverScroll(F)V

    .line 1947
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 538
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v3, :cond_2

    .line 539
    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 540
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageBeginMoving()V

    .line 541
    sget-object v3, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 542
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    .line 543
    .local v1, l:Lcom/android/launcher2/AnimationLayer;
    invoke-virtual {v1, v4}, Lcom/android/launcher2/AnimationLayer;->cancelAnimationsByGroup(I)V

    .line 544
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v3, :cond_0

    .line 545
    const/16 v3, 0x558c

    invoke-virtual {p0, v3, v5}, Lcom/android/launcher2/PagedView;->performHapticFeedback(II)Z

    .line 552
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 553
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->isPageInclusive(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 554
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 555
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 552
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    .end local v0           #i:I
    .end local v1           #l:Lcom/android/launcher2/AnimationLayer;
    :cond_2
    return-void
.end method

.method protected pageEndMoving()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 562
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_2

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 564
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageEndMoving()V

    .line 565
    sget-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 567
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 570
    :cond_0
    const/16 v0, 0x55a0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/PagedView;->performHapticFeedback(II)Z

    .line 577
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 581
    :cond_2
    return-void

    .line 574
    :cond_3
    const/16 v0, 0x5596

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/PagedView;->performHapticFeedback(II)Z

    goto :goto_0
.end method

.method protected repositionOpenFolder()V
    .locals 0

    .prologue
    .line 3511
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 2239
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2240
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 2241
    .local v0, page:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2242
    iget v1, p0, Lcom/android/launcher2/PagedView;->mLastFocusDir:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(II)V

    .line 2244
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastFocusDir:I

    .line 2245
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1485
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 1486
    .local v0, page:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1487
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1488
    const/4 v1, 0x1

    .line 1490
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    const/4 v1, 0x0

    .line 1567
    if-eqz p1, :cond_1

    .line 1570
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1571
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v0, :cond_0

    .line 1572
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1573
    iput v1, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1575
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 1577
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1578
    return-void
.end method

.method protected restoreCurrentPageFromState(Lcom/android/launcher2/PagedView$SavedState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 2589
    iget v0, p1, Lcom/android/launcher2/PagedView$SavedState;->currentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 2590
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 2591
    return-void
.end method

.method final screenScrolled(I)V
    .locals 1
    .parameter "screenCenter"

    .prologue
    .line 1324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1325
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 671
    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 672
    return-void
.end method

.method public scrollByHover(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2994
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2995
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 2996
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 2997
    .local v7, y:F
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->isHoveringAreaX(F)I

    move-result v1

    .line 2999
    .local v1, dir:I
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const-string v11, "com.sec.feature.hovering_ui"

    invoke-static {v8, v11}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move v8, v9

    .line 3058
    :goto_0
    return v8

    .line 3002
    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "pen_hovering"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3003
    .local v2, isHoveringOn:I
    if-nez v2, :cond_1

    move v8, v9

    goto :goto_0

    .line 3005
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "pen_hovering_list_scroll"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3006
    .local v3, isHoveringScrollOn:I
    if-nez v3, :cond_2

    move v8, v9

    goto :goto_0

    .line 3008
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    iget-object v8, v8, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    .line 3009
    .local v5, workspace:Lcom/android/launcher2/Workspace;
    if-nez v5, :cond_3

    move v8, v9

    .line 3010
    goto :goto_0

    .line 3012
    :cond_3
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v8

    sget-object v11, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v8, v11, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    if-ne v8, v12, :cond_7

    .line 3013
    :cond_4
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-eqz v8, :cond_5

    .line 3014
    const-string v8, "Launcher.PagedView"

    const-string v11, "scrollByHover Workspace.State.RESIZE"

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setHoveringSpenIcon(I)V

    .line 3016
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3017
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->removeMessages(I)V

    .line 3021
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    if-ne v8, v12, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    :cond_6
    move v8, v9

    .line 3022
    goto :goto_0

    .line 3025
    :cond_7
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    if-nez v8, :cond_8

    .line 3026
    new-instance v8, Lcom/android/launcher2/PagedView$HoverScrollHandler;

    const/4 v11, 0x0

    invoke-direct {v8, p0, v11}, Lcom/android/launcher2/PagedView$HoverScrollHandler;-><init>(Lcom/android/launcher2/PagedView;Lcom/android/launcher2/PagedView$1;)V

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    .line 3028
    :cond_8
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 3056
    :cond_9
    :goto_1
    :pswitch_0
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-nez v8, :cond_a

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setHoveringSpenIcon(I)V

    :cond_a
    move v8, v10

    .line 3058
    goto/16 :goto_0

    .line 3032
    :pswitch_1
    if-eqz v1, :cond_b

    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->isHoveringAreaY(F)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3033
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-nez v8, :cond_9

    .line 3034
    iput-boolean v10, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 3035
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->setHoveringSpenIcon(I)V

    .line 3037
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 3038
    .local v4, msg:Landroid/os/Message;
    iput v10, v4, Landroid/os/Message;->what:I

    .line 3039
    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollDir:I

    .line 3040
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    const-wide/16 v11, 0xc8

    invoke-virtual {v8, v4, v11, v12}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 3043
    .end local v4           #msg:Landroid/os/Message;
    :cond_b
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 3044
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3045
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_1

    .line 3050
    :pswitch_2
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 3051
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3052
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_1

    .line 3028
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public scrollLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2503
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2504
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 2508
    :goto_0
    return-void

    .line 2506
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 2511
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2512
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 2516
    :goto_0
    return-void

    .line 2514
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 698
    iput p1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    .line 699
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 704
    :goto_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 705
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 706
    return-void

    .line 702
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedView;->scrollToNonLooped(II)V

    goto :goto_0
.end method

.method protected setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 2530
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 2531
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->abortScroll()V

    .line 477
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 481
    .local v0, oldCurrentPage:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mHomeView:Lcom/android/launcher2/HomeView;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 487
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 488
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 489
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    if-nez v1, :cond_3

    .line 490
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iput v1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 491
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutMustAnim:Z

    goto :goto_0

    .line 494
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->jumpToPageInternal(I)V

    .line 498
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_0

    .line 499
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    goto :goto_0
.end method

.method protected setCurrentPageIfNotSnapping(I)V
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 463
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-ne p1, v0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    if-eq v0, v1, :cond_0

    .line 469
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 402
    return-void
.end method

.method protected setDirtyFlags()V
    .locals 1

    .prologue
    .line 1318
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    .line 1319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1321
    return-void
.end method

.method public setHideItems(Z)V
    .locals 0
    .parameter "v"

    .prologue
    .line 3298
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    .line 3299
    return-void
.end method

.method public setHoverScrollBoundary()V
    .locals 5

    .prologue
    const v4, 0x7f0c006c

    const/4 v3, 0x0

    .line 3647
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3649
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollWidth:I

    .line 3650
    iput v3, p0, Lcom/android/launcher2/PagedView;->mHoverScrollRightPadding:I

    .line 3652
    iget v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    sget v2, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPaddingMatchParent:I

    if-ne v1, v2, :cond_2

    .line 3653
    iput v3, p0, Lcom/android/launcher2/PagedView;->mHoverScrollTop:I

    .line 3654
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    .line 3656
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_1

    .line 3657
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3658
    iget v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    .line 3660
    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3661
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollRightPadding:I

    .line 3668
    :cond_1
    :goto_0
    return-void

    .line 3665
    :cond_2
    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollTop:I

    .line 3666
    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    invoke-static {}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    goto :goto_0
.end method

.method public setHoveringSpenIcon(I)V
    .locals 2
    .parameter "dir"

    .prologue
    .line 3089
    packed-switch p1, :pswitch_data_0

    .line 3097
    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 3098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 3103
    :goto_0
    return-void

    .line 3091
    :pswitch_0
    const/16 v0, 0x11

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    goto :goto_0

    .line 3101
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3094
    :pswitch_1
    const/16 v0, 0xd

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3089
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setLastPageNotify(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 534
    iput p1, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    .line 535
    return-void
.end method

.method public setMaxScrollX()V
    .locals 4

    .prologue
    .line 1203
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1204
    .local v0, childCount:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v1

    .line 1206
    .local v1, width:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    if-gez v2, :cond_0

    .line 1207
    div-int/lit8 v2, v1, 0x10

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    .line 1212
    :goto_0
    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    .line 1213
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    .line 1217
    :goto_1
    return-void

    .line 1209
    :cond_0
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    goto :goto_0

    .line 1215
    :cond_1
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v2, v1

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto :goto_1
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 664
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 665
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 667
    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 655
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 656
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 657
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    :cond_0
    return-void
.end method

.method public setPageBackgroundAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 3121
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    .line 3122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 3124
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 3125
    return-void
.end method

.method protected setPageIndicatorTop(I)V
    .locals 1
    .parameter "top"

    .prologue
    .line 3500
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->setTop(I)V

    .line 3501
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V
    .locals 3
    .parameter "pageSwitchListener"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    .line 387
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 390
    :cond_0
    return-void
.end method

.method public setPageZoom(F)V
    .locals 1
    .parameter "zoom"

    .prologue
    .line 3107
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    .line 3108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 3110
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 3111
    return-void
.end method

.method public showPageIndicator(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 2941
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->showPageIndicator(Z)V

    .line 2942
    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 2344
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPageWithDur(II)V

    .line 2345
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .parameter "whichPage"

    .prologue
    .line 2406
    iget v0, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->snapToPageWithDur(II)V

    .line 2407
    return-void
.end method

.method protected snapToPage(III)V
    .locals 1
    .parameter "whichPage"
    .parameter "duration"
    .parameter "dir"

    .prologue
    .line 2424
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    if-nez v0, :cond_0

    .line 2425
    iput p3, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDir:I

    .line 2426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutMustAnim:Z

    .line 2427
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 2428
    iput p1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 2429
    iput p2, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDur:I

    .line 2433
    :goto_0
    return-void

    .line 2432
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;->snapToPageInternal(III)V

    goto :goto_0
.end method

.method protected snapToPageFromFocusHelper(II)V
    .locals 0
    .parameter "whichPage"
    .parameter "dir"

    .prologue
    .line 2414
    iput p2, p0, Lcom/android/launcher2/PagedView;->mLastFocusDir:I

    .line 2415
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(II)V

    .line 2416
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 2417
    return-void
.end method

.method protected snapToPageWithDir(II)V
    .locals 1
    .parameter "whichPage"
    .parameter "dir"

    .prologue
    .line 2420
    iget v0, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 2421
    return-void
.end method

.method protected snapToPageWithDur(II)V
    .locals 1
    .parameter "whichPage"
    .parameter "duration"

    .prologue
    .line 2410
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 2411
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9
    .parameter "whichPage"
    .parameter "velocity"

    .prologue
    const/high16 v8, 0x3f80

    .line 2369
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2370
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 2372
    .local v4, halfScreenSize:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v5

    .line 2376
    .local v5, newX:I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 2377
    .local v0, delta:I
    const/4 v3, 0x0

    .line 2379
    .local v3, duration:I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0xfa

    if-ge v6, v7, :cond_0

    .line 2382
    iget v6, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher2/PagedView;->snapToPageWithDur(II)V

    .line 2403
    :goto_0
    return-void

    .line 2390
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2391
    .local v2, distanceRatio:F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 2394
    .local v1, distance:F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 2395
    const/16 v6, 0x898

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2400
    const/high16 v6, 0x447a

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 2402
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method public abstract syncPages()V
.end method

.method protected syncViewVisibility()V
    .locals 6

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_4

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, found:Z
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedView$PageInfo;

    .line 598
    .local v3, info:Lcom/android/launcher2/PagedView$PageInfo;
    iget v5, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    if-ne v5, v1, :cond_0

    .line 599
    const/4 v0, 0x1

    .line 604
    .end local v3           #info:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 605
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_2

    .line 595
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 608
    :cond_2
    if-eqz v0, :cond_3

    .line 609
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 611
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 614
    .end local v0           #found:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #v:Landroid/view/View;
    :cond_4
    return-void
.end method

.method protected updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V
    .locals 8
    .parameter "option"

    .prologue
    const/4 v7, 0x0

    .line 2869
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v0

    .line 2870
    .local v0, enableChildrenLayers:Z
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    if-eqz v4, :cond_0

    .line 2871
    sget-object p1, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    .line 2873
    :cond_0
    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v4, :cond_3

    .line 2874
    const/4 v0, 0x0

    .line 2879
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 2880
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedView$PageInfo;

    .line 2881
    .local v3, pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2882
    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    invoke-interface {v4}, Lcom/android/launcher2/Page;->enableHardwareLayers()V

    .line 2883
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    iget v5, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2875
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_3
    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v4, :cond_1

    .line 2876
    const/4 v0, 0x1

    goto :goto_0

    .line 2886
    :cond_4
    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v4, :cond_5

    .line 2887
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 2888
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    invoke-interface {v4}, Lcom/android/launcher2/Page;->disableHardwareLayers()V

    .line 2889
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2887
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2893
    .end local v1           #i:I
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedView$PageInfo;

    .line 2894
    .restart local v3       #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    if-eqz v3, :cond_6

    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    if-eqz v4, :cond_6

    .line 2895
    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    invoke-interface {v4}, Lcom/android/launcher2/Page;->disableHardwareLayers()V

    .line 2896
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    iget v5, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2901
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_7
    return-void
.end method

.method updateIndicator(II)V
    .locals 2
    .parameter "top"
    .parameter "gap"

    .prologue
    .line 3504
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    .line 3505
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->setTop(I)V

    .line 3506
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/PageIndicatorManager;->setGap(I)V

    .line 3507
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    .line 3508
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    .line 3509
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 0
    .parameter "page"
    .parameter "scrollProgress"

    .prologue
    .line 1333
    return-void
.end method

.method public updatePageTransforms()V
    .locals 7

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    .line 1468
    .local v2, halfScreenSize:I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int v5, v6, v2

    .line 1469
    .local v5, screenCenter:I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    if-eq v5, v6, :cond_0

    .line 1470
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    .line 1471
    iput v5, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 1473
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 1474
    .local v0, drawingTime:J
    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    if-eqz v6, :cond_1

    .line 1475
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    .line 1477
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedView$PageInfo;

    .line 1478
    .local v4, pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    invoke-direct {p0, v4, v0, v1}, Lcom/android/launcher2/PagedView;->transformPage(Lcom/android/launcher2/PagedView$PageInfo;J)V

    goto :goto_0

    .line 1480
    .end local v4           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1481
    return-void
.end method

.method protected updateVisiblePages()I
    .locals 15

    .prologue
    const/high16 v14, -0x8000

    .line 964
    iget v12, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget v13, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    if-ne v12, v13, :cond_0

    iget v12, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    if-ne v12, v14, :cond_0

    .line 968
    iget-object v12, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1028
    :goto_0
    return v12

    .line 974
    :cond_0
    iget-object v12, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 975
    iget-object v12, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 976
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v6

    .line 977
    .local v6, pageCount:I
    if-lez v6, :cond_6

    .line 979
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHorizontalVisibilityExtension()I

    move-result v1

    .line 982
    .local v1, horizontalVisibilityExtension:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v11

    .line 983
    .local v11, pageWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v10

    .line 984
    .local v10, pageTotWidth:I
    iget v12, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    div-int/lit8 v13, v11, 0x2

    add-int v5, v12, v13

    .line 988
    .local v5, pageCenter:I
    iget v12, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget v13, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    add-int/2addr v12, v13

    sub-int v8, v12, v1

    .line 989
    .local v8, pageLeftEdge:I
    iget v12, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int/2addr v12, v10

    iget v13, p0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    sub-int/2addr v12, v13

    mul-int/lit8 v13, v1, 0x2

    add-int v9, v12, v13

    .line 996
    .local v9, pageRightEdge:I
    const/high16 v3, -0x8000

    .line 999
    .local v3, lastIndex:I
    move v0, v8

    .local v0, currEdge:I
    :goto_1
    if-ge v0, v9, :cond_4

    .line 1000
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v2

    .line 1001
    .local v2, index:I
    if-eq v3, v14, :cond_2

    if-ne v3, v2, :cond_2

    .line 999
    :cond_1
    :goto_2
    add-int/lit8 v12, v10, -0x1

    add-int/2addr v0, v12

    goto :goto_1

    .line 1004
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 1005
    .local v4, page:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 1008
    move v3, v2

    .line 1009
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->newPageInfo()Lcom/android/launcher2/PagedView$PageInfo;

    move-result-object v7

    .line 1010
    .local v7, pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    iput v2, v7, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    .line 1011
    invoke-direct {p0, v0}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v12

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    .line 1012
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1013
    iget v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    mul-int/2addr v12, v10

    neg-int v12, v12

    iget v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    add-int/2addr v12, v13

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    .line 1017
    :goto_3
    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v12

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntrRel:I

    .line 1018
    iget v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntrRel:I

    iget v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    add-int/2addr v12, v13

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntr:I

    .line 1019
    iget v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntr:I

    sub-int v12, v5, v12

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mDistFromCntr:I

    .line 1020
    iget-object v12, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1015
    :cond_3
    const/4 v12, 0x0

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    goto :goto_3

    .line 1022
    .end local v2           #index:I
    .end local v4           #page:Landroid/view/View;
    .end local v7           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncViewVisibility()V

    .line 1023
    iget-boolean v12, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v12, :cond_5

    .line 1024
    sget-object v12, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v12}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 1026
    :cond_5
    iget v12, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iput v12, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    .line 1028
    .end local v0           #currEdge:I
    .end local v1           #horizontalVisibilityExtension:I
    .end local v3           #lastIndex:I
    .end local v5           #pageCenter:I
    .end local v8           #pageLeftEdge:I
    .end local v9           #pageRightEdge:I
    .end local v10           #pageTotWidth:I
    .end local v11           #pageWidth:I
    :cond_6
    iget-object v12, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    goto/16 :goto_0
.end method
