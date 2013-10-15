.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/CellLayoutContainer;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$21;,
        Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;,
        Lcom/android/launcher2/Workspace$StateChangeRunnable;,
        Lcom/android/launcher2/Workspace$ZoomInInterpolator;,
        Lcom/android/launcher2/Workspace$InverseZInterpolator;,
        Lcom/android/launcher2/Workspace$ZInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;,
        Lcom/android/launcher2/Workspace$StateAnimatorProvider;,
        Lcom/android/launcher2/Workspace$State;,
        Lcom/android/launcher2/Workspace$BindWidgetsState;
    }
.end annotation


# static fields
.field private static final DEBUG_WP:Z = false

.field private static final DEBUG_WP_TAG:Ljava/lang/String; = "Launcher.WS.DebugWp"

.field private static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field static STATE_CHANGE_DURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"

.field private static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field private static TRANSITION_MAX_ROTATION:F = 0.0f

.field private static TRANSITION_PIVOT:F = 0.0f

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field private static final chipset:Ljava/lang/String;

.field static kPageZoomScaleLimit:F

.field static final sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field public static sPanelBaseEditDarkenAmount:F

.field public static widgetSizeChanged:Z


# instance fields
.field private WIDGET_BINDER:Ljava/lang/Runnable;

.field private doChangeState:Z

.field private fastRotation:F

.field private isStartDragStarted:Z

.field private mAlphaTimeStamp:J

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mBackgroundDarken:F

.field private mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

.field private mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

.field private mCurrentOrientation:I

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDragBarSize:I

.field private mDragFromMenu:Z

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragTargetLayout:Lcom/android/launcher2/CellLayout;

.field private mEditModePanel_left_Adjust:I

.field private mEditModePanel_top_Adjust:I

.field private mEditModeShrinkFactor:F

.field private mExitResizeDueToNewDrag:Z

.field private final mExternalDragOutlinePaint:Landroid/graphics/Paint;

.field private mFastScrollDrawInward:F

.field private mFixedWallpaper:Z

.field private mFolder:Lcom/android/launcher2/Folder;

.field protected mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mInScrollArea:Z

.field private mInterceptedTouchEvent:Z

.field private mIsDragOccuring:Z

.field public mIsHelpOrientationChanged:Z

.field private mIsStaticWallpaper:Z

.field private mIsSwitchingState:Z

.field private final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mLastTouchState:I

.field private mMultiTouchUsed:Z

.field private mNormalScrollDrawInward:F

.field private mOldState:Lcom/android/launcher2/Workspace$State;

.field private mPageIndicatorTopShrunken:I

.field mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

.field public mPendingSnapToPageIndex:I

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mRequestedOrientation:I

.field private mShrinkTranslateX:F

.field private mShrinkTranslateY:F

.field protected mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mState:Lcom/android/launcher2/Workspace$State;

.field private mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

.field private mStateAnimatorProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Workspace$StateAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchStateAfterFirstLayout:Z

.field private mTempCell:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private mTouchPointDistance:I

.field private mUpdateWallpaperOffsetImmediately:Z

.field private mWallpaperHeight:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

.field private mWallpaperTravelWidth:I

.field private mWallpaperWidth:I

.field private mWidgetSkipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetsToBind:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowToken:Landroid/os/IBinder;

.field private mXDown:F

.field private mYDown:F

.field private final mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

.field private mZoomTimeStamp:J

.field private slowRotation:F

.field private workspaceRotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    .line 158
    new-instance v0, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 180
    const v0, 0x3f4ccccd

    sput v0, Lcom/android/launcher2/Workspace;->kPageZoomScaleLimit:F

    .line 187
    const/high16 v0, 0x3f00

    sput v0, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    .line 188
    const/high16 v0, 0x4180

    sput v0, Lcom/android/launcher2/Workspace;->TRANSITION_MAX_ROTATION:F

    .line 212
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/Workspace;->sPanelBaseEditDarkenAmount:F

    .line 220
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sput-object v0, Lcom/android/launcher2/Workspace;->chipset:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 240
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    sget-object v3, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    .line 105
    const/high16 v3, 0x41a0

    iput v3, p0, Lcom/android/launcher2/Workspace;->workspaceRotation:F

    .line 107
    iget v3, p0, Lcom/android/launcher2/Workspace;->workspaceRotation:F

    iput v3, p0, Lcom/android/launcher2/Workspace;->slowRotation:F

    .line 108
    const/high16 v3, 0x4170

    iput v3, p0, Lcom/android/launcher2/Workspace;->fastRotation:F

    .line 117
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 124
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 125
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 128
    iput v6, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    .line 129
    iput v6, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    .line 136
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 138
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 139
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 145
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    .line 152
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    .line 155
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 157
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 159
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 162
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    .line 167
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 182
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    .line 183
    iput v6, p0, Lcom/android/launcher2/Workspace;->mTouchPointDistance:I

    .line 191
    const v3, 0x3ee66666

    iput v3, p0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    .line 193
    const v3, 0x3e4ccccd

    iput v3, p0, Lcom/android/launcher2/Workspace;->mNormalScrollDrawInward:F

    .line 198
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    .line 201
    iput v6, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    .line 206
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    .line 214
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    .line 216
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    .line 218
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/launcher2/Workspace;->mPendingSnapToPageIndex:I

    .line 401
    new-instance v3, Lcom/android/launcher2/Workspace$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 484
    new-instance v3, Lcom/android/launcher2/Workspace$3;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 1132
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    .line 1155
    iput v6, p0, Lcom/android/launcher2/Workspace;->mLastTouchState:I

    .line 1156
    iput-wide v8, p0, Lcom/android/launcher2/Workspace;->mAlphaTimeStamp:J

    .line 1157
    iput-wide v8, p0, Lcom/android/launcher2/Workspace;->mZoomTimeStamp:J

    .line 1625
    new-instance v3, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v3}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    .line 1920
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->doChangeState:Z

    .line 3771
    new-instance v3, Lcom/android/launcher2/Workspace$20;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$20;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->WIDGET_BINDER:Ljava/lang/Runnable;

    .line 241
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    .line 247
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 249
    invoke-static {p1}, Lcom/sec/dtl/launcher/GyroForShadow;->initialize(Landroid/content/Context;)V

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 253
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 254
    .local v0, config:Landroid/content/res/Configuration;
    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SmallestWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ScreenSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 259
    .local v1, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen Width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Density: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", DensityDpi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    .line 266
    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    .line 268
    const v3, 0x7f0c0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    .line 269
    const v3, 0x7f0c00ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    .line 270
    const v3, 0x7f0c00eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    .line 272
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v4, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 273
    const v3, 0x7f0c0051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    .line 274
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 276
    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 279
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    iput v3, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    .line 280
    const v3, 0x7f0b0002

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    sput v3, Lcom/android/launcher2/Workspace;->sPanelBaseEditDarkenAmount:F

    .line 282
    const v3, 0x7f0b0007

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mNormalScrollDrawInward:F

    .line 284
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseDisableTranslucencyFeature:Z

    if-eqz v3, :cond_0

    .line 285
    const v3, 0x7f0b0006

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    .line 286
    :cond_0
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    const/high16 v3, 0x410c

    iput v3, p0, Lcom/android/launcher2/Workspace;->workspaceRotation:F

    .line 288
    iget v3, p0, Lcom/android/launcher2/Workspace;->workspaceRotation:F

    iput v3, p0, Lcom/android/launcher2/Workspace;->slowRotation:F

    .line 289
    const/high16 v3, 0x40f0

    iput v3, p0, Lcom/android/launcher2/Workspace;->fastRotation:F

    .line 290
    const/high16 v3, 0x3f60

    sput v3, Lcom/android/launcher2/Workspace;->kPageZoomScaleLimit:F

    .line 292
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Workspace;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Workspace;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->refreshHotseat()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher2/Workspace;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mExitResizeDueToNewDrag:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/Workspace;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/launcher2/Workspace;->chipset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Workspace;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/Workspace;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    return v0
.end method

.method private backgroundAlphaInterpolator(F)F
    .locals 4
    .parameter "r"

    .prologue
    .line 1144
    const/4 v0, 0x0

    .line 1145
    .local v0, pivotA:F
    const v1, 0x3e99999a

    .line 1146
    .local v1, pivotB:F
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 1147
    const/4 v2, 0x0

    .line 1151
    :goto_0
    return v2

    .line 1148
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1149
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 1151
    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private backgroundAlphaInterpolator(IF)F
    .locals 8
    .parameter "touchState"
    .parameter "absSP"

    .prologue
    const/high16 v7, 0x437a

    .line 1188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1189
    .local v3, ts:J
    const/4 v0, 0x0

    .line 1190
    .local v0, a:F
    const/high16 v1, 0x437a

    .line 1191
    .local v1, kAnimTimeInMillis:F
    iget v5, p0, Lcom/android/launcher2/Workspace;->mLastTouchState:I

    if-eq v5, p1, :cond_0

    .line 1192
    iget v5, p0, Lcom/android/launcher2/Workspace;->mLastTouchState:I

    if-nez v5, :cond_2

    if-eqz p1, :cond_2

    .line 1193
    iput-wide v3, p0, Lcom/android/launcher2/Workspace;->mAlphaTimeStamp:J

    .line 1199
    :cond_0
    :goto_0
    iget-wide v5, p0, Lcom/android/launcher2/Workspace;->mAlphaTimeStamp:J

    sub-long v5, v3, v5

    long-to-float v2, v5

    .line 1200
    .local v2, timeDiff:F
    if-eqz p1, :cond_3

    .line 1201
    const/high16 v0, 0x3f80

    .line 1202
    cmpg-float v5, v2, v7

    if-gtz v5, :cond_1

    .line 1203
    div-float v0, v2, v7

    .line 1213
    :cond_1
    :goto_1
    return v0

    .line 1195
    .end local v2           #timeDiff:F
    :cond_2
    if-nez p1, :cond_0

    .line 1196
    iput-wide v3, p0, Lcom/android/launcher2/Workspace;->mAlphaTimeStamp:J

    goto :goto_0

    .line 1207
    .restart local v2       #timeDiff:F
    :cond_3
    cmpg-float v5, v2, v7

    if-gtz v5, :cond_1

    .line 1208
    const/high16 v5, 0x3f80

    div-float v6, v2, v7

    sub-float v0, v5, v6

    .line 1209
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-nez v5, :cond_1

    .line 1210
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private changeOrientationIfRequired(Landroid/content/res/Configuration;)Z
    .locals 38
    .parameter "newConfig"

    .prologue
    .line 3384
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    move/from16 v34, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isShown()Z

    move-result v34

    if-nez v34, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v34

    if-nez v34, :cond_1

    .line 3387
    :cond_0
    const/16 v34, 0x0

    .line 3573
    :goto_0
    return v34

    .line 3389
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    .line 3390
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v34

    sget-object v35, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_2

    .line 3391
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 3393
    :cond_2
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/SmoothPagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    if-nez v34, :cond_3

    .line 3396
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->loadWidgetSkipList()Z

    .line 3399
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/HomeView;->setWorkspaceLoading()V

    .line 3401
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 3403
    .local v29, r:Landroid/content/res/Resources;
    const v34, 0x7f0a001d

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 3404
    const v34, 0x7f0a001e

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 3405
    const v34, 0x7f0c0051

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    .line 3406
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 3408
    const v34, 0x7f0c0050

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    .line 3409
    const v34, 0x7f0c0058

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    .line 3410
    const v34, 0x7f0c00ea

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    .line 3411
    const v34, 0x7f0c00eb

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    .line 3413
    const v34, 0x7f0a0004

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x42c8

    div-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    .line 3414
    sget-boolean v34, Lcom/android/launcher2/Launcher;->UseDisableTranslucencyFeature:Z

    if-eqz v34, :cond_4

    .line 3415
    const v34, 0x7f0b0006

    const/16 v35, 0x1

    const/16 v36, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    .line 3426
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 3427
    .local v12, context:Landroid/content/Context;
    const v34, 0x7f0f0012

    move/from16 v0, v34

    invoke-static {v12, v0}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3428
    .local v4, aivTextView:Landroid/content/res/TypedArray;
    const v34, 0x7f0f0012

    move/from16 v0, v34

    invoke-static {v12, v0}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3430
    .local v5, aivView:Landroid/content/res/TypedArray;
    const v34, 0x7f0f001a

    move/from16 v0, v34

    invoke-static {v12, v0}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 3431
    .local v24, mivTextView:Landroid/content/res/TypedArray;
    const v34, 0x7f0f001a

    move/from16 v0, v34

    invoke-static {v12, v0}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v25

    .line 3433
    .local v25, mivView:Landroid/content/res/TypedArray;
    const v34, 0x7f0f0013

    move/from16 v0, v34

    invoke-static {v12, v0}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 3434
    .local v14, fivTextView:Landroid/content/res/TypedArray;
    const v34, 0x7f0f0013

    move/from16 v0, v34

    invoke-static {v12, v0}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 3436
    .local v15, fivView:Landroid/content/res/TypedArray;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v30

    .line 3437
    .local v30, screenCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v13

    .line 3442
    .local v13, currentPage:I
    const v34, 0x7f0c0052

    :try_start_0
    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 3443
    .local v9, cellWidth:I
    const v34, 0x7f0c0053

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 3444
    .local v8, cellHeight:I
    const v34, 0x7f0c0054

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 3445
    .local v6, cellGapX:I
    const v34, 0x7f0c0055

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 3447
    .local v7, cellGapY:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    .line 3448
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayout;

    .line 3449
    .local v11, cl:Lcom/android/launcher2/CellLayout;
    move/from16 v0, v18

    if-ne v0, v13, :cond_7

    const/16 v20, 0x1

    .line 3451
    .local v20, isCurrentPage:Z
    :goto_2
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3453
    .local v22, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    const v34, 0x7f0c004f

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3454
    const v34, 0x7f0c004d

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3455
    const v34, 0x7f0c004e

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3456
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3458
    invoke-virtual {v11, v9, v8}, Lcom/android/launcher2/CellLayout;->setCellSize(II)V

    .line 3459
    invoke-virtual {v11, v6, v7}, Lcom/android/launcher2/CellLayout;->setGaps(II)V

    .line 3460
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->refreshCellDimension()V

    .line 3463
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v34

    add-int/lit8 v21, v34, -0x1

    .local v21, j:I
    :goto_3
    if-ltz v21, :cond_d

    .line 3464
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v10

    .line 3465
    .local v10, childView:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v32

    .line 3467
    .local v32, tag:Ljava/lang/Object;
    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/android/launcher2/HomeWidgetItem;

    move/from16 v34, v0

    if-nez v34, :cond_5

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/android/launcher2/SamsungWidgetItem;

    move/from16 v34, v0

    if-eqz v34, :cond_a

    .line 3468
    :cond_5
    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/android/launcher2/HomeWidgetItem;

    move/from16 v34, v0

    if-eqz v34, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    if-eqz v34, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, v32

    check-cast v0, Lcom/android/launcher2/HomeItem;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v34

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_8

    .line 3463
    .end local v10           #childView:Landroid/view/View;
    .end local v32           #tag:Ljava/lang/Object;
    :cond_6
    :goto_4
    add-int/lit8 v21, v21, -0x1

    goto :goto_3

    .line 3449
    .end local v20           #isCurrentPage:Z
    .end local v21           #j:I
    .end local v22           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 3473
    .restart local v10       #childView:Landroid/view/View;
    .restart local v20       #isCurrentPage:Z
    .restart local v21       #j:I
    .restart local v22       #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v32       #tag:Ljava/lang/Object;
    :cond_8
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellLayout;->removeViewOnPageAt(I)V

    .line 3474
    move-object/from16 v0, v32

    check-cast v0, Lcom/android/launcher2/BaseItem;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 3475
    move-object/from16 v0, v32

    check-cast v0, Lcom/android/launcher2/HomeItem;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/HomeItem;->unbind()V

    .line 3476
    if-eqz v20, :cond_9

    .line 3477
    check-cast v32, Lcom/android/launcher2/HomeItem;

    .end local v32           #tag:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace;->createAndBindWidget(Lcom/android/launcher2/BaseItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 3496
    .end local v6           #cellGapX:I
    .end local v7           #cellGapY:I
    .end local v8           #cellHeight:I
    .end local v9           #cellWidth:I
    .end local v10           #childView:Landroid/view/View;
    .end local v11           #cl:Lcom/android/launcher2/CellLayout;
    .end local v18           #i:I
    .end local v20           #isCurrentPage:Z
    .end local v21           #j:I
    .end local v22           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :catchall_0
    move-exception v34

    invoke-static {v5, v4}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 3497
    invoke-static {v15, v14}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 3498
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 3496
    throw v34

    .line 3480
    .restart local v6       #cellGapX:I
    .restart local v7       #cellGapY:I
    .restart local v8       #cellHeight:I
    .restart local v9       #cellWidth:I
    .restart local v10       #childView:Landroid/view/View;
    .restart local v11       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v18       #i:I
    .restart local v20       #isCurrentPage:Z
    .restart local v21       #j:I
    .restart local v22       #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v32       #tag:Ljava/lang/Object;
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    move-object/from16 v34, v0

    check-cast v32, Lcom/android/launcher2/HomeItem;

    .end local v32           #tag:Ljava/lang/Object;
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3482
    .restart local v32       #tag:Ljava/lang/Object;
    :cond_a
    instance-of v0, v10, Lcom/android/launcher2/FolderIconView;

    move/from16 v34, v0

    if-eqz v34, :cond_b

    .line 3483
    move-object v0, v10

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    move-object/from16 v16, v0

    .line 3484
    .local v16, folderIcon:Lcom/android/launcher2/FolderIconView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v14}, Lcom/android/launcher2/FolderIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 3485
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/FolderIconView;->refresh()V

    goto :goto_4

    .line 3486
    .end local v16           #folderIcon:Lcom/android/launcher2/FolderIconView;
    :cond_b
    instance-of v0, v10, Lcom/android/launcher2/AppIconView;

    move/from16 v34, v0

    if-eqz v34, :cond_6

    .line 3487
    check-cast v32, Lcom/android/launcher2/BaseItem;

    .end local v32           #tag:Ljava/lang/Object;
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    move-object/from16 v34, v0

    if-nez v34, :cond_c

    .line 3488
    check-cast v10, Lcom/android/launcher2/AppIconView;

    .end local v10           #childView:Landroid/view/View;
    invoke-virtual {v10, v5, v4}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_4

    .line 3490
    .restart local v10       #childView:Landroid/view/View;
    :cond_c
    check-cast v10, Lcom/android/launcher2/AppIconView;

    .end local v10           #childView:Landroid/view/View;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 3447
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 3496
    .end local v11           #cl:Lcom/android/launcher2/CellLayout;
    .end local v20           #isCurrentPage:Z
    .end local v21           #j:I
    .end local v22           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_e
    invoke-static {v5, v4}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 3497
    invoke-static {v15, v14}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 3498
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 3501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/QuickViewWorkspace;->loadLayoutParameters()V

    .line 3503
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->reConfigureHotseat()V

    .line 3506
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v34

    if-eqz v34, :cond_f

    .line 3507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/HomeView;->getHomeEditTitleBar()Landroid/view/ViewGroup;

    move-result-object v33

    .line 3508
    .local v33, titleBar:Landroid/view/ViewGroup;
    if-eqz v33, :cond_f

    .line 3509
    const v34, 0x7f0c007c

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 3510
    .local v27, padding:I
    const v34, 0x7f0c0078

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 3513
    .local v17, height:I
    invoke-virtual/range {v33 .. v33}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3514
    .restart local v22       #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3515
    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3516
    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3517
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3518
    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v33}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v35

    const/16 v36, 0x0

    invoke-virtual/range {v33 .. v33}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v37

    invoke-virtual/range {v33 .. v37}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3541
    .end local v17           #height:I
    .end local v22           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v27           #padding:I
    .end local v33           #titleBar:Landroid/view/ViewGroup;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-eqz v34, :cond_11

    .line 3542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/HomeView;->finishBindingItems()V

    .line 3547
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->handleScrollOnOrientationChange()V

    .line 3548
    const v34, 0x7f0c0057

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    const v35, 0x7f0c0056

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    .line 3551
    new-instance v31, Landroid/graphics/Point;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Point;-><init>()V

    .line 3552
    .local v31, size:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3553
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    .line 3554
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    .line 3555
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v35

    mul-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 3558
    sget-boolean v34, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v34, :cond_10

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v34

    if-eqz v34, :cond_10

    .line 3559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/HomeView;->getMagazineSoftKey()Lcom/android/launcher2/HomeMagazineSoftKey;

    move-result-object v26

    .line 3560
    .local v26, oldMagazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;
    if-eqz v26, :cond_10

    .line 3561
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/HomeMagazineSoftKey;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    check-cast v28, Landroid/view/ViewGroup;

    .line 3562
    .local v28, parentOfMagazineSoftKey:Landroid/view/ViewGroup;
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v19

    .line 3563
    .local v19, idx:I
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 3565
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v34

    const v35, 0x7f030022

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v28

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/HomeMagazineSoftKey;

    .line 3567
    .local v23, magazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->setMagazineSoftKey(Lcom/android/launcher2/HomeMagazineSoftKey;)V

    .line 3569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeMagazineSoftKey;->setup(Lcom/android/launcher2/HomeView;)V

    .line 3573
    .end local v19           #idx:I
    .end local v23           #magazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;
    .end local v26           #oldMagazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;
    .end local v28           #parentOfMagazineSoftKey:Landroid/view/ViewGroup;
    :cond_10
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 3544
    .end local v31           #size:Landroid/graphics/Point;
    :cond_11
    sget-object v34, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NONCURRENT_PAGES:Lcom/android/launcher2/Workspace$BindWidgetsState;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    goto/16 :goto_5
.end method

.method private changeState(Lcom/android/launcher2/Workspace$State;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1916
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 1917
    return-void
.end method

.method private createAndBindWidget(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 3587
    sget-object v0, Lcom/android/launcher2/Workspace$21;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3605
    .end local p1
    :goto_0
    return-void

    .line 3589
    .restart local p1
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/HomeWidgetItem;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    goto :goto_0

    .line 3599
    .restart local p1
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/SamsungWidgetItem;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindSamsungWidget(Lcom/android/launcher2/SamsungWidgetItem;)V

    goto :goto_0

    .line 3602
    .restart local p1
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindSurfaceWidget(Lcom/android/launcher2/SurfaceWidgetItem;)V

    goto :goto_0

    .line 3587
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 2267
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2268
    .local v5, res:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 2270
    .local v1, b:Landroid/graphics/Bitmap;
    instance-of v7, p0, Landroid/widget/TextView;

    if-eqz v7, :cond_3

    move-object v7, p0

    .line 2271
    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, arr$:[Landroid/graphics/drawable/Drawable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 2272
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 2273
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, p2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, p2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2282
    .end local v0           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    :goto_1
    const v7, 0x7f0a001a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 2283
    .local v6, threshold:I
    neg-int v7, v6

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2284
    if-eqz v1, :cond_1

    .line 2285
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2286
    :cond_1
    const/4 v7, 0x1

    invoke-static {p0, p1, p2, v7}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 2288
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2290
    return-object v1

    .line 2271
    .end local v6           #threshold:I
    .restart local v0       #arr$:[Landroid/graphics/drawable/Drawable;
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2279
    .end local v0           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, p2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method private createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2332
    .local v2, r:Landroid/content/res/Resources;
    const v3, 0x7f0c0052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2333
    .local v1, iconWidth:I
    const v3, 0x7f0c0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2334
    .local v0, iconHeight:I
    invoke-static {v1, v0}, Lcom/android/launcher2/Outliner;->boxOutline(II)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method private static drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 21
    .parameter "v"
    .parameter "destCanvas"
    .parameter "padding"
    .parameter "pruneToDrawable"

    .prologue
    .line 2186
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2187
    .local v6, clipRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2189
    const/4 v14, 0x0

    .line 2191
    .local v14, textVisible:Z
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2192
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    if-eqz p3, :cond_5

    .line 2193
    const/4 v9, 0x0

    .line 2194
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v17, p0

    .line 2195
    check-cast v17, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/FolderIconView;->getDragIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2196
    .local v5, b:Landroid/graphics/Bitmap;
    new-instance v9, Lcom/android/launcher2/FastBitmapDrawable;

    .end local v9           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v9, v5}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2205
    .end local v5           #b:Landroid/graphics/Bitmap;
    .restart local v9       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    .line 2207
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 2208
    .local v12, r:Landroid/content/res/Resources;
    const v17, 0x7f0a001a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 2210
    .local v15, threshold:I
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    add-int v19, v19, p2

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    add-int v20, v20, p2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2213
    div-int/lit8 v17, p2, 0x2

    add-int v17, v17, v15

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-int/lit8 v18, p2, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2217
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 2218
    .local v8, dm:Landroid/util/DisplayMetrics;
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    const/16 v18, 0xf0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2219
    const v17, 0x3f59999a

    const v18, 0x3f59999a

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2223
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2259
    .end local v8           #dm:Landroid/util/DisplayMetrics;
    .end local v9           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v12           #r:Landroid/content/res/Resources;
    .end local v15           #threshold:I
    .end local p0
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2260
    return-void

    .restart local v9       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local p0
    :cond_3
    move-object/from16 v17, p0

    .line 2198
    check-cast v17, Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, arr$:[Landroid/graphics/drawable/Drawable;
    array-length v11, v4

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v11, :cond_0

    aget-object v7, v4, v10

    .line 2199
    .local v7, d:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_4

    .line 2200
    move-object v9, v7

    .line 2201
    goto/16 :goto_0

    .line 2198
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2225
    .end local v4           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    .end local v9           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/SurfaceWidgetView;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v17, p0

    .line 2226
    check-cast v17, Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/SurfaceWidgetView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2227
    .local v13, surfaceWidgetScreenshot:Landroid/graphics/Bitmap;
    if-eqz v13, :cond_2

    .line 2229
    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v13, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2230
    check-cast p0, Lcom/android/launcher2/SurfaceWidgetView;

    .end local p0
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->setVisibility(I)V

    goto :goto_1

    .line 2234
    .end local v13           #surfaceWidgetScreenshot:Landroid/graphics/Bitmap;
    .restart local p0
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v16, p0

    .line 2235
    check-cast v16, Lcom/android/launcher2/AppIconView;

    .line 2236
    .local v16, tv:Lcom/android/launcher2/AppIconView;
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v17

    add-int/lit8 v17, v17, -0x3

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/AppIconView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/text/Layout;->getLineTop(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 2240
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/AppIconView;->getTextVisible()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2241
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    .line 2242
    const/4 v14, 0x1

    .line 2250
    .end local v16           #tv:Lcom/android/launcher2/AppIconView;
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v18, p2, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, p2, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2251
    sget-object v17, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2252
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2255
    if-eqz v14, :cond_2

    .line 2256
    check-cast p0, Lcom/android/launcher2/AppIconView;

    .end local p0
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    goto/16 :goto_1

    .line 2245
    .restart local p0
    :cond_8
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v16, p0

    .line 2246
    check-cast v16, Landroid/widget/TextView;

    .line 2247
    .local v16, tv:Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/text/Layout;->getLineTop(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method private getCurrentDropLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method private static getHomeItems(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3298
    .local p0, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 3299
    .local v3, numItems:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3300
    .local v0, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 3301
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 3302
    .local v2, item:Lcom/android/launcher2/BaseItem;
    instance-of v4, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v4, :cond_0

    .line 3303
    check-cast v2, Lcom/android/launcher2/HomeItem;

    .end local v2           #item:Lcom/android/launcher2/BaseItem;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3300
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3306
    :cond_1
    return-object v0
.end method

.method private getScrollRange()I
    .locals 2

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getViewForTag(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 11
    .parameter "tag"

    .prologue
    .line 2564
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v2

    .line 2565
    .local v2, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutChildren;

    .line 2566
    .local v6, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 2567
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 2568
    invoke-virtual {v6, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2569
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 2570
    .local v1, childItem:Lcom/android/launcher2/BaseItem;
    if-eqz v1, :cond_1

    iget-wide v7, v1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v9, p1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 2575
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childItem:Lcom/android/launcher2/BaseItem;
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v6           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :goto_1
    return-object v0

    .line 2567
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childItem:Lcom/android/launcher2/BaseItem;
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v6       #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2575
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childItem:Lcom/android/launcher2/BaseItem;
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v6           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2553
    .local v0, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 2554
    .local v2, screenCount:I
    const/4 v1, 0x0

    .local v1, screen:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2555
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2554
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2557
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2558
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2560
    :cond_1
    return-object v0
.end method

.method private getWorkspaceAndHotseatCellLayouts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2535
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2536
    .local v1, layouts:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    .line 2537
    .local v3, screenCount:I
    const/4 v2, 0x0

    .local v2, screen:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2538
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2537
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2540
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    .line 2541
    .local v0, hotseat:Lcom/android/launcher2/Hotseat;
    if-eqz v0, :cond_1

    .line 2542
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2544
    :cond_1
    return-object v1
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 2
    .parameter "info"
    .parameter "folderIcon"
    .parameter "animateOpen"

    .prologue
    .line 2998
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_1

    .line 3013
    :cond_0
    :goto_0
    return-void

    .line 3007
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3008
    const-string v0, "Launcher.Workspace"

    const-string v1, "Folder info marked as open, but associated folder is not open."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    .line 3012
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    goto :goto_0
.end method

.method private initWorkspace()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 326
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->initCurrentPage(I)V

    .line 327
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 329
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 330
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setWillNotDraw(Z)V

    .line 331
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 333
    new-instance v1, Lcom/android/launcher2/Workspace$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 355
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    .line 356
    new-instance v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    .line 357
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 358
    .local v0, size:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 359
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    .line 360
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    .line 361
    iget v1, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v3, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 363
    return-void
.end method

.method private isTouchActive()Z
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimationOnThis(I)Landroid/animation/Animator;
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 2172
    .local v0, s:Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 2173
    return-object v0
.end method

.method private loadWhenRotationSkipList(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .parameter "ctx"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 3908
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 3911
    .local v6, startDepth:I
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 3912
    .local v1, attrs:Landroid/util/AttributeSet;
    const/4 v5, 0x0

    .line 3913
    .local v5, pkgName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3914
    .local v2, className:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v6, :cond_2

    .line 3915
    :cond_1
    if-ne v7, v11, :cond_3

    .line 3935
    :cond_2
    return-void

    .line 3916
    :cond_3
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 3918
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3919
    .local v4, name:Ljava/lang/String;
    const-string v8, "Launcher.Workspace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadWhenRotationSkipList. Process tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3921
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/sec/android/app/launcher/R$styleable;->Favorite:[I

    invoke-virtual {v8, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3922
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3923
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3924
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3926
    const-string v8, "appwidget"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3927
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3928
    .local v3, cn:Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3930
    .end local v3           #cn:Landroid/content/ComponentName;
    :cond_4
    const-string v8, "sactivitywidget"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "surfacewidget"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3931
    :cond_5
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3932
    .restart local v3       #cn:Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadWidgetSkipList()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 3872
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    if-nez v7, :cond_3

    .line 3873
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    .line 3877
    :goto_0
    const/4 v3, 0x0

    .line 3878
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .line 3880
    .local v4, resParser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 3881
    const-string v7, "widget_skip"

    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3882
    move-object v3, v4

    .line 3884
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3888
    .local v0, depth:I
    :cond_0
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_2

    :cond_1
    if-eq v5, v6, :cond_2

    .line 3890
    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 3891
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3892
    .local v2, name:Ljava/lang/String;
    const-string v7, "when_rotation"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3893
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7, v3}, Lcom/android/launcher2/Workspace;->loadWhenRotationSkipList(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 3896
    .end local v0           #depth:I
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #type:I
    :catch_0
    move-exception v1

    .line 3897
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "Launcher.Workspace"

    const-string v7, "Got exception parsing default_widget_skiplist.xml"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3903
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    const/4 v6, 0x0

    :cond_2
    return v6

    .line 3875
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #resParser:Landroid/content/res/XmlResourceParser;
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 3898
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #resParser:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v1

    .line 3899
    .local v1, e:Ljava/io/IOException;
    const-string v6, "Launcher.Workspace"

    const-string v7, "Got exception parsing default_widget_skiplist.xml"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3900
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 3901
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v6, "Launcher.Workspace"

    const-string v7, "Got exception parsing default_widget_skiplist.xml"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1565
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 1566
    .local v8, position:[I
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 1568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 1569
    .local v7, pointerIndex:I
    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    .line 1570
    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    .line 1572
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1576
    return-void

    .line 1572
    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method private openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 6
    .parameter "folderItem"
    .parameter "icon"
    .parameter "animateOpen"

    .prologue
    const/4 v5, 0x1

    .line 2960
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2962
    .local v2, parentView:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    .line 2963
    .local v1, menuView:Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2985
    :cond_0
    :goto_0
    return-void

    .line 2966
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->clearAccessibilityFocus()V

    .line 2968
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    .line 2969
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/Folder;->setHomeView(Lcom/android/launcher2/HomeView;)V

    .line 2970
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/Folder;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 2972
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v4, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    invoke-direct {v4, p0, p2, p3}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;Z)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Folder;->setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V

    .line 2973
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    .line 2974
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    .line 2975
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    invoke-virtual {v4, v3, v2, p3}, Lcom/android/launcher2/Folder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    .line 2976
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2977
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v5, :cond_2

    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2982
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    .line 2983
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->requestChildFocusForHWKey()V

    goto :goto_0
.end method

.method private reConfigureHotseat()V
    .locals 9

    .prologue
    .line 3265
    const-string v6, "Launcher.Workspace"

    const-string v7, "reConfigureHotseat"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    .line 3267
    .local v3, oldHotseat:Lcom/android/launcher2/Hotseat;
    if-nez v3, :cond_1

    .line 3295
    :cond_0
    :goto_0
    return-void

    .line 3269
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 3270
    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 3271
    .local v4, parentOfHotSeat:Landroid/view/ViewGroup;
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 3272
    .local v1, idx:I
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 3274
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03002a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Hotseat;

    .line 3276
    .local v0, hotSeat:Lcom/android/launcher2/Hotseat;
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3277
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v0}, Lcom/android/launcher2/HomeView;->setHotseat(Lcom/android/launcher2/Hotseat;)V

    .line 3278
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 3280
    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->allItems()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher2/Workspace;->getHomeItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 3281
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v2}, Lcom/android/launcher2/HomeView;->bindHotseat(Ljava/util/List;)V

    .line 3283
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->reapplyIconViewStyles()V

    .line 3285
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3286
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    .line 3287
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 3290
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3291
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v7

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v7, v6}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    .line 3292
    .local v5, v:Lcom/android/launcher2/FolderIconView;
    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->restoreStateForOpenVisualize()V

    .line 3293
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6, v5}, Lcom/android/launcher2/Folder;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    goto :goto_0
.end method

.method private reConfigureQuickLaunch()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 3311
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v1

    .line 3312
    .local v1, oldQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    if-nez v1, :cond_1

    .line 3359
    :cond_0
    :goto_0
    return-void

    .line 3313
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v4

    .line 3315
    .local v4, quickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 3316
    invoke-virtual {v1}, Lcom/android/launcher2/QuickLaunch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 3317
    .local v2, parentQL:Landroid/view/ViewGroup;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3318
    .local v0, idx:I
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 3319
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030024

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/QuickLaunch;

    .line 3321
    .local v3, quickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3322
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v3}, Lcom/android/launcher2/HomeView;->setQuickLaunch(Lcom/android/launcher2/QuickLaunch;)V

    .line 3323
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 3324
    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3325
    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x5

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3330
    :goto_1
    if-nez v4, :cond_2

    .line 3331
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030025

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .end local v4           #quickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    check-cast v4, Lcom/android/launcher2/QuickLaunch;

    .line 3334
    .restart local v4       #quickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3335
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v4}, Lcom/android/launcher2/HomeView;->setQuickLaunchCamera(Lcom/android/launcher2/QuickLaunch;)V

    .line 3336
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 3337
    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x3

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3339
    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/FocusHelper;->QUICK_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AllappsIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3340
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 3341
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3342
    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/FocusHelper;->QUICK_CAMERA_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AllappsIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3349
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    .line 3350
    .local v5, qvw:Lcom/android/launcher2/QuickViewWorkspace;
    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3351
    invoke-virtual {v3, v10}, Lcom/android/launcher2/QuickLaunch;->setAlpha(F)V

    .line 3352
    invoke-virtual {v3, v12}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3354
    :cond_3
    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3355
    invoke-virtual {v4, v10}, Lcom/android/launcher2/QuickLaunch;->setAlpha(F)V

    .line 3356
    invoke-virtual {v4, v12}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    goto/16 :goto_0

    .line 3327
    .end local v5           #qvw:Lcom/android/launcher2/QuickViewWorkspace;
    :cond_4
    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x50

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 3344
    :cond_5
    invoke-virtual {v4, v11}, Lcom/android/launcher2/QuickLaunch;->setAlpha(F)V

    .line 3345
    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->getCameraLayout()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setAlpha(F)V

    .line 3346
    invoke-virtual {v4, v9}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3347
    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/FocusHelper;->QUICK_CAMERA_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AllappsIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_2
.end method

.method private refreshHotseat()V
    .locals 2

    .prologue
    .line 3259
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    .line 3260
    .local v0, oldHotseat:Lcom/android/launcher2/Hotseat;
    if-nez v0, :cond_0

    .line 3262
    :goto_0
    return-void

    .line 3261
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->reapplyIconViewStyles()V

    goto :goto_0
.end method

.method private setScrollDirection(I)V
    .locals 0
    .parameter "scrollDirection"

    .prologue
    .line 2501
    return-void
.end method

.method private syncWallpaperOffsetWithScroll()V
    .locals 4

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    .line 944
    .local v0, enableWallpaperEffects:Z
    if-eqz v0, :cond_0

    .line 945
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v2

    const-string v3, "syncWallpaperOffsetWithScroll"

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(FLjava/lang/String;)V

    .line 947
    :cond_0
    return-void
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 21

    .prologue
    .line 867
    const/4 v7, 0x1

    .line 868
    .local v7, overScrollWallpaper:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    .line 873
    .local v2, isStaticWallpaper:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    move/from16 v17, v0

    .line 874
    .local v17, wallpaperTravelWidth:I
    if-nez v2, :cond_0

    .line 875
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v17, v0

    .line 880
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x3f00

    invoke-virtual/range {v18 .. v20}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 889
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v14

    .line 890
    .local v14, scrollRange:I
    const/4 v13, 0x0

    .line 896
    .local v13, scrollProgressOffset:F
    if-eqz v2, :cond_1

    .line 897
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v6, v0

    .line 898
    .local v6, overScrollOffset:I
    int-to-float v0, v6

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    add-float v13, v13, v18

    .line 899
    mul-int/lit8 v18, v6, 0x2

    add-int v14, v14, v18

    .line 903
    .end local v6           #overScrollOffset:I
    :cond_1
    const/4 v3, 0x0

    .local v3, newScrollX:I
    const/4 v9, 0x0

    .local v9, pg:I
    const/4 v11, 0x0

    .local v11, scrollDelta:I
    const/16 v16, 0x0

    .line 904
    .local v16, totWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v10

    .line 908
    .local v10, pgCnt:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v18

    mul-int v16, v18, v10

    .line 909
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move/from16 v18, v0

    if-lez v18, :cond_6

    .line 910
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move/from16 v18, v0

    rem-int v15, v18, v16

    .line 911
    .local v15, tempScrollX:I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v15, v0, :cond_5

    .line 912
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    move/from16 v18, v0

    sub-int v11, v15, v18

    .line 913
    const/high16 v18, 0x3f80

    int-to-float v0, v11

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    sub-float v8, v18, v19

    .line 914
    .local v8, perRemain:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v3, v0

    .line 926
    .end local v8           #perRemain:F
    .end local v10           #pgCnt:I
    .end local v15           #tempScrollX:I
    :cond_2
    :goto_1
    int-to-float v1, v3

    .line 928
    .local v1, adjustedScrollX:F
    int-to-float v0, v14

    move/from16 v18, v0

    div-float v18, v1, v18

    add-float v12, v18, v13

    .line 929
    .local v12, scrollProgress:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v17

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v5, v18, v19

    .line 931
    .local v5, offsetInDips:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v4, v5, v18

    .line 932
    .local v4, offset:F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 933
    const/4 v4, 0x0

    .line 940
    :cond_3
    return v4

    .line 883
    .end local v1           #adjustedScrollX:F
    .end local v3           #newScrollX:I
    .end local v4           #offset:F
    .end local v5           #offsetInDips:F
    .end local v9           #pg:I
    .end local v11           #scrollDelta:I
    .end local v12           #scrollProgress:F
    .end local v13           #scrollProgressOffset:F
    .end local v14           #scrollRange:I
    .end local v16           #totWidth:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x3f80

    invoke-virtual/range {v18 .. v20}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    goto/16 :goto_0

    .line 916
    .restart local v3       #newScrollX:I
    .restart local v9       #pg:I
    .restart local v10       #pgCnt:I
    .restart local v11       #scrollDelta:I
    .restart local v13       #scrollProgressOffset:F
    .restart local v14       #scrollRange:I
    .restart local v15       #tempScrollX:I
    .restart local v16       #totWidth:I
    :cond_5
    move v3, v15

    goto :goto_1

    .line 918
    .end local v15           #tempScrollX:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move/from16 v18, v0

    if-gez v18, :cond_2

    .line 919
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    move/from16 v18, v0

    rem-int v18, v18, v16

    add-int v3, v16, v18

    goto :goto_1

    .line 922
    .end local v10           #pgCnt:I
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mScrollX:I

    goto :goto_1
.end method

.method private wallpaperTravelToScreenHeightRatio(II)F
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 781
    const v0, 0x3f8ccccd

    return v0
.end method

.method private wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 787
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v4, v7, v8

    .line 794
    .local v4, aspectRatio:F
    const v0, 0x3fcccccd

    .line 795
    .local v0, ASPECT_RATIO_LANDSCAPE:F
    const/high16 v1, 0x3f20

    .line 796
    .local v1, ASPECT_RATIO_PORTRAIT:F
    const/high16 v2, 0x3fc0

    .line 797
    .local v2, WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE:F
    const v3, 0x3f99999a

    .line 804
    .local v3, WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT:F
    const v5, 0x3e9d89d7

    .line 807
    .local v5, x:F
    const v6, 0x3f80fc10

    .line 808
    .local v6, y:F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method

.method private zoomInterpolator(I)F
    .locals 8
    .parameter "touchState"

    .prologue
    .line 1160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1161
    .local v2, ts:J
    iget v4, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    .line 1162
    .local v4, z:F
    const/high16 v0, 0x4348

    .line 1163
    .local v0, animTime:F
    iget v5, p0, Lcom/android/launcher2/Workspace;->mLastTouchState:I

    if-eq v5, p1, :cond_0

    .line 1164
    iget v5, p0, Lcom/android/launcher2/Workspace;->mLastTouchState:I

    if-nez v5, :cond_2

    if-eqz p1, :cond_2

    .line 1165
    iput-wide v2, p0, Lcom/android/launcher2/Workspace;->mZoomTimeStamp:J

    .line 1166
    const/high16 v0, 0x4396

    .line 1172
    :cond_0
    :goto_0
    iget-wide v5, p0, Lcom/android/launcher2/Workspace;->mZoomTimeStamp:J

    sub-long v5, v2, v5

    long-to-float v1, v5

    .line 1173
    .local v1, timeDiff:F
    if-eqz p1, :cond_3

    .line 1174
    sget v4, Lcom/android/launcher2/Workspace;->kPageZoomScaleLimit:F

    .line 1175
    cmpg-float v5, v1, v0

    if-gtz v5, :cond_1

    .line 1176
    iget v5, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    sget v6, Lcom/android/launcher2/Workspace;->kPageZoomScaleLimit:F

    div-float v7, v1, v0

    invoke-static {v5, v6, v7}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v4

    .line 1184
    :cond_1
    :goto_1
    return v4

    .line 1168
    .end local v1           #timeDiff:F
    :cond_2
    if-nez p1, :cond_0

    .line 1169
    iput-wide v2, p0, Lcom/android/launcher2/Workspace;->mZoomTimeStamp:J

    goto :goto_0

    .line 1180
    .restart local v1       #timeDiff:F
    :cond_3
    cmpg-float v5, v1, v0

    if-gtz v5, :cond_1

    .line 1181
    sget v5, Lcom/android/launcher2/Workspace;->kPageZoomScaleLimit:F

    iget v6, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    div-float v7, v1, v0

    invoke-static {v5, v6, v7}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v4

    goto :goto_1
.end method


# virtual methods
.method abortConfigChanges()V
    .locals 1

    .prologue
    .line 3582
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3583
    sget-object v0, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    .line 3584
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
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
    .line 1556
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1557
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1558
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1562
    :goto_0
    return-void

    .line 1560
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public addItem(Lcom/android/launcher2/HomeItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Lcom/android/launcher2/CellLayout;
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 468
    .restart local v0       #layout:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 476
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    .line 478
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    .line 482
    :cond_0
    return-void
.end method

.method public addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1906
    return-void
.end method

.method bindWidgetsAfterConfigChange()V
    .locals 4

    .prologue
    .line 3619
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 3620
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isLauncherDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    sget-object v3, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    if-ne v2, v3, :cond_1

    .line 3643
    :cond_0
    :goto_0
    return-void

    .line 3623
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3624
    sget-object v2, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    .line 3625
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->finishBindingItems()V

    .line 3639
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_3

    .line 3640
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 3642
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->WIDGET_BINDER:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3633
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 3634
    .local v0, i:I
    if-ltz v0, :cond_2

    .line 3635
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-direct {p0, v2}, Lcom/android/launcher2/Workspace;->createAndBindWidget(Lcom/android/launcher2/BaseItem;)V

    goto :goto_1
.end method

.method changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V
    .locals 24
    .parameter "state"
    .parameter "animated"
    .parameter "delay"
    .parameter "item"

    .prologue
    .line 1922
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Workspace;->doChangeState:Z

    if-eqz v3, :cond_0

    .line 2168
    :goto_0
    return-void

    .line 1923
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Workspace;->doChangeState:Z

    .line 1925
    const-string v3, "Launcher.Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", animated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", delay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v3, :cond_1

    .line 1927
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 1928
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    goto :goto_0

    .line 1939
    :cond_1
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1940
    const/16 p2, 0x0

    .line 1943
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    .line 1944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1948
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setCurrentPageIfNotSnapping(I)V

    .line 1950
    const/high16 v13, 0x3f80

    .line 1951
    .local v13, finalScaleFactor:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1952
    .local v4, oldState:Lcom/android/launcher2/Workspace$State;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Workspace;->mOldState:Lcom/android/launcher2/Workspace$State;

    .line 1953
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1955
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_a

    .line 1956
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    .line 1960
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v14

    .line 1963
    .local v14, hotseat:Lcom/android/launcher2/Hotseat;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeEditTitleBar()Landroid/view/ViewGroup;

    move-result-object v8

    .line 1965
    .local v8, HomeEditTitleBar:Landroid/view/ViewGroup;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    .line 1967
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1969
    .local v7, mainAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_c

    .line 1971
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_7

    .line 1972
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 1974
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/android/launcher2/Hotseat;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_5

    .line 1975
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-eqz v3, :cond_5

    .line 1976
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 1980
    :cond_5
    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_6

    .line 1981
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0078

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v17, v0

    .line 1983
    .local v17, titleBarHeight:F
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput v23, v21, v22

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    fill-array-data v21, :array_0

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v8, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1986
    .local v9, a:Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/android/launcher2/Workspace$15;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v9, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1992
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    const/4 v3, 0x2

    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1998
    .end local v9           #a:Landroid/animation/ObjectAnimator;
    .end local v17           #titleBarHeight:F
    :cond_6
    if-eqz v8, :cond_7

    if-eqz p4, :cond_7

    .line 1999
    const/4 v3, 0x2

    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2000
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v23

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    fill-array-data v21, :array_1

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v8, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2003
    .restart local v9       #a:Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/android/launcher2/Workspace$16;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v9, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2010
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v9, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2012
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2017
    .end local v9           #a:Landroid/animation/ObjectAnimator;
    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2018
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getTopBar()Landroid/view/View;

    move-result-object v18

    .line 2019
    .local v18, v:Landroid/view/View;
    if-eqz v18, :cond_8

    .line 2020
    if-eqz p2, :cond_b

    .line 2021
    const/4 v3, 0x2

    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2022
    const-string v3, "alpha"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/16 v21, 0x0

    aput v21, v5, v6

    move-object/from16 v0, v18

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2023
    .restart local v9       #a:Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0xdc

    invoke-virtual {v9, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2024
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2115
    .end local v9           #a:Landroid/animation/ObjectAnimator;
    .end local v18           #v:Landroid/view/View;
    :cond_8
    :goto_2
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_9

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_11

    .line 2116
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-virtual {v3}, Lcom/android/launcher2/PageIndicatorPreviewManager;->startEditMode()V

    .line 2117
    const v3, 0x7f05001b

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v10

    .line 2118
    .local v10, anim:Landroid/animation/Animator;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2119
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v3

    if-ge v15, v3, :cond_13

    .line 2120
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f05001d

    invoke-static {v3, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v11

    .line 2121
    .local v11, animator:Landroid/animation/Animator;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2122
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2119
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1958
    .end local v7           #mainAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v8           #HomeEditTitleBar:Landroid/view/ViewGroup;
    .end local v10           #anim:Landroid/animation/Animator;
    .end local v11           #animator:Landroid/animation/Animator;
    .end local v14           #hotseat:Lcom/android/launcher2/Hotseat;
    .end local v15           #i:I
    :cond_a
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    goto/16 :goto_1

    .line 2026
    .restart local v7       #mainAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v8       #HomeEditTitleBar:Landroid/view/ViewGroup;
    .restart local v14       #hotseat:Lcom/android/launcher2/Hotseat;
    .restart local v18       #v:Landroid/view/View;
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 2030
    .end local v18           #v:Landroid/view/View;
    :cond_c
    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_d

    .line 2031
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_8

    .line 2034
    if-eqz v8, :cond_8

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_8

    .line 2035
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0078

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v17, v0

    .line 2037
    .restart local v17       #titleBarHeight:F
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput v23, v21, v22

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    fill-array-data v21, :array_2

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v8, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2040
    .restart local v9       #a:Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/android/launcher2/Workspace$17;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v9, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2046
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2048
    const/4 v3, 0x2

    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 2054
    .end local v9           #a:Landroid/animation/ObjectAnimator;
    .end local v17           #titleBarHeight:F
    :cond_d
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_f

    .line 2055
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_f

    .line 2056
    if-eqz v14, :cond_e

    .line 2057
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 2060
    :cond_e
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 2061
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 2063
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 2065
    if-eqz v8, :cond_f

    .line 2066
    const/4 v3, 0x2

    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2067
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v23

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    fill-array-data v21, :array_3

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v8, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2070
    .restart local v9       #a:Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$18;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/android/launcher2/Workspace$18;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v9, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2077
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v9, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2078
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2083
    .end local v9           #a:Landroid/animation/ObjectAnimator;
    :cond_f
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2084
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getTopBar()Landroid/view/View;

    move-result-object v18

    .line 2085
    .restart local v18       #v:Landroid/view/View;
    if-eqz v18, :cond_8

    .line 2086
    const-string v3, "alpha"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v21, 0x3f80

    aput v21, v5, v6

    move-object/from16 v0, v18

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2087
    .restart local v9       #a:Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0xdc

    invoke-virtual {v9, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2088
    new-instance v3, Lcom/android/launcher2/Workspace$19;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/android/launcher2/Workspace$19;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V

    invoke-virtual {v9, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2103
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2106
    .end local v9           #a:Landroid/animation/ObjectAnimator;
    .end local v18           #v:Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    goto/16 :goto_2

    .line 2124
    :cond_11
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v3, :cond_12

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_13

    :cond_12
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_13

    .line 2126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-virtual {v3}, Lcom/android/launcher2/PageIndicatorPreviewManager;->endEditMode()V

    .line 2127
    const v19, 0x7f05001c

    .line 2128
    .local v19, xmlId:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2129
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v3

    if-ge v15, v3, :cond_13

    .line 2130
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f05001e

    invoke-static {v3, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v11

    .line 2131
    .restart local v11       #animator:Landroid/animation/Animator;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2132
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2129
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 2136
    .end local v11           #animator:Landroid/animation/Animator;
    .end local v15           #i:I
    .end local v19           #xmlId:I
    :cond_13
    sget v12, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    .line 2138
    .local v12, duration:I
    sget-object v3, Lcom/android/launcher2/Workspace;->PAGE_ZOOM:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v13, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    .line 2139
    .local v20, zoomAnim:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2140
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_14
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace$StateAnimatorProvider;

    .line 2143
    .local v2, provider:Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_16

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_16

    if-nez p4, :cond_16

    .line 2146
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v3, :cond_15

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_14

    :cond_15
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_14

    .line 2147
    sget-object v5, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v3, p0

    move-object/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_16
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    .line 2150
    invoke-interface/range {v2 .. v7}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto :goto_5

    .line 2154
    .end local v2           #provider:Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    int-to-long v5, v12

    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move/from16 v0, p3

    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 2162
    if-nez p2, :cond_18

    .line 2163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 2166
    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Workspace;->doChangeState:Z

    goto/16 :goto_0

    .line 1983
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2000
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2037
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2067
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public closeFolder()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2987
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 2988
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->disableChildBadges()V

    .line 2989
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v0, v0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_1

    .line 2990
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 2993
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    .line 2995
    :cond_0
    return-void

    .line 2992
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher2/Folder;->close(ZZ)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 1116
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScroll()V

    .line 1117
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-nez v0, :cond_0

    .line 1118
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncWallpaperOffsetWithScroll()V

    .line 1120
    :cond_0
    return-void
.end method

.method createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 2299
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2300
    .local v6, width:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2301
    .local v3, height:I
    instance-of v7, p1, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    move-object v4, p1

    .line 2302
    check-cast v4, Landroid/widget/ImageView;

    .line 2303
    .local v4, image:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-virtual {v7}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2304
    .local v2, dragOutline:Landroid/graphics/Bitmap;
    int-to-float v7, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2305
    .local v1, d:F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v6, v7

    .line 2306
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v3, v7

    .line 2309
    .end local v1           #d:F
    .end local v2           #dragOutline:Landroid/graphics/Bitmap;
    .end local v4           #image:Landroid/widget/ImageView;
    :cond_0
    add-int v7, v6, p3

    add-int v8, v3, p3

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2312
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 2313
    .local v5, tag:Ljava/lang/Object;
    instance-of v7, v5, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v7, :cond_1

    .line 2314
    check-cast v5, Lcom/android/launcher2/HomeShortcutItem;

    .end local v5           #tag:Ljava/lang/Object;
    iget-object v7, v5, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v7, :cond_1

    .line 2315
    const/high16 v7, -0x3d4c

    const/high16 v8, 0x41a0

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2318
    :cond_1
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2319
    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 2320
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2322
    invoke-static {v0}, Lcom/android/launcher2/Outliner;->outline(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7
.end method

.method createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "spanX"
    .parameter "spanY"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    const/4 v2, 0x0

    .line 2342
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/CellLayout;->spanToPixel(II)[I

    move-result-object v0

    .line 2343
    .local v0, size:[I
    aget v1, v0, v2

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/android/launcher2/Outliner;->boxOutline(II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method createWidgetPreviewDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 2338
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 2339
    .local v0, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v2

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "ev"

    .prologue
    const v8, 0x3f060a92

    .line 683
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v4, :cond_2

    .line 684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 685
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 687
    .local v1, deltaY:F
    float-to-double v4, v1

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 689
    .local v3, theta:F
    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    .line 693
    :cond_1
    const v4, 0x3f860a92

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 710
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v3           #theta:F
    :cond_2
    :goto_0
    return-void

    .line 696
    .restart local v0       #deltaX:F
    .restart local v1       #deltaY:F
    .restart local v3       #theta:F
    :cond_3
    cmpl-float v4, v3, v8

    if-lez v4, :cond_4

    .line 701
    sub-float/2addr v3, v8

    .line 702
    div-float v4, v3, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 704
    .local v2, extraRatio:F
    const/high16 v4, 0x3f80

    const/high16 v5, 0x4080

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-super {p0, p1, v4}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    .line 707
    .end local v2           #extraRatio:F
    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    .line 3805
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 3837
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v4

    return v4

    .line 3807
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    .line 3808
    .local v1, ds:Lcom/android/launcher2/DragState;
    const/4 v2, 0x0

    .line 3809
    .local v2, isSecretItem:Z
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v3

    .line 3810
    .local v3, maxScreenCount:I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 3812
    .local v0, childCount:I
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3813
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    iget-boolean v2, v4, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 3824
    :cond_1
    if-ge v0, v3, :cond_0

    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v4, :cond_0

    .line 3828
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 3833
    .end local v0           #childCount:I
    .end local v1           #ds:Lcom/android/launcher2/DragState;
    .end local v2           #isSecretItem:Z
    .end local v3           #maxScreenCount:I
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->removeCreatedPageForDrag()V

    goto :goto_0

    .line 3805
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    iget v0, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->screenScrolled(I)V

    .line 1502
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1503
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    if-eqz v0, :cond_1

    .line 1505
    :goto_0
    return-void

    .line 1504
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->onDrawComplete(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    .line 561
    const/4 v0, 0x0

    .line 563
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public enterSurfaceWidgetResizeMode(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/CellLayout;)V
    .locals 5
    .parameter "surfaceWidgetView"
    .parameter "layout"

    .prologue
    .line 1716
    instance-of v2, p2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .local v0, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-nez v2, :cond_1

    .line 1767
    .end local v0           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    :goto_0
    return-void

    .line 1724
    .restart local v0       #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterSurfaceWidgetResizeMode state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    new-instance v1, Lcom/android/launcher2/Workspace$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher2/Workspace$11;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/SurfaceWidgetView;)V

    .line 1748
    .local v1, resizeRunnable:Ljava/lang/Runnable;
    new-instance v2, Lcom/android/launcher2/Workspace$12;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher2/Workspace$12;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1765
    const-string v2, "Launcher.Workspace"

    const-string v3, "enterSurfaceWidgetResizeMode switching to resize mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    sget-object v2, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v2}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_0
.end method

.method public enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
    .locals 9
    .parameter "hostView"
    .parameter "layout"

    .prologue
    const/4 v8, 0x0

    .line 1770
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_2

    .line 1771
    const-string v6, "add_widgets"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1861
    :cond_0
    :goto_0
    return-void

    .line 1774
    :cond_1
    const-string v6, "resize_widgets"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1775
    sput-boolean v8, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    .line 1778
    :cond_2
    instance-of v6, p2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v6, p0, :cond_0

    .line 1779
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v7, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v6, v7, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 1780
    new-instance v5, Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    .line 1781
    .local v5, sizes:Lcom/android/launcher2/WidgetSizes;
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_3

    .line 1782
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "resize_widgets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1783
    const/4 v3, 0x0

    .line 1784
    .local v3, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .line 1785
    .restart local v3       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v3, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->showHelpDialog_step2()V

    .line 1788
    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 1789
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1790
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v6, 0x4

    new-array v2, v6, [I

    .line 1791
    .local v2, mExpandability:[I
    invoke-virtual {p2, p1, v2}, Lcom/android/launcher2/CellLayout;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 1792
    aget v6, v2, v8

    if-nez v6, :cond_4

    const/4 v6, 0x2

    aget v6, v2, v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v6

    iget v7, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v6, v7, :cond_4

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    iget v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 1798
    :cond_4
    invoke-virtual {v5}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1799
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    .line 1800
    .local v0, homeItem:Lcom/android/launcher2/HomeWidgetItem;
    new-instance v4, Lcom/android/launcher2/Workspace$13;

    invoke-direct {v4, p0, p2, p1, v0}, Lcom/android/launcher2/Workspace$13;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/HomeWidgetItem;)V

    .line 1838
    .local v4, resizeRunnable:Ljava/lang/Runnable;
    new-instance v6, Lcom/android/launcher2/Workspace$14;

    invoke-direct {v6, p0, v4}, Lcom/android/launcher2/Workspace$14;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1855
    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mExitResizeDueToNewDrag:Z

    .line 1859
    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v6}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto/16 :goto_0
.end method

.method public exitWidgetResizeMode()V
    .locals 1

    .prologue
    .line 1864
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode(Z)V

    .line 1865
    return-void
.end method

.method public exitWidgetResizeMode(Z)V
    .locals 8
    .parameter "newDragStarted"

    .prologue
    .line 1870
    const/4 v2, 0x0

    .line 1871
    .local v2, isClearResizeFrame:Z
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mExitResizeDueToNewDrag:Z

    .line 1872
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exitWidgetResizeMode State: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newDragStarted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v5, v6, :cond_0

    .line 1902
    :goto_0
    return-void

    .line 1874
    :cond_0
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    if-nez v5, :cond_1

    .line 1876
    sget-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v6, "resize_widgets"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1878
    const/4 v4, 0x0

    .line 1879
    .local v4, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v4           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-direct {v4, v5}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .line 1880
    .restart local v4       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v4           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v4}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->dismissHelpDialog()V

    .line 1883
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 1884
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1885
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 1886
    .local v3, l:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1887
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->clearResizeFrame()V

    .line 1888
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->commitDeltas()V

    .line 1889
    const/4 v2, 0x1

    .line 1884
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1892
    .end local v3           #l:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    :cond_3
    if-nez v2, :cond_4

    .line 1893
    const-string v5, "Launcher.Workspace"

    const-string v6, "exitWidgetResizeMode. isClearResizeFrame is false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1896
    sget-object v5, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v5}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    .line 1901
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->refreshHotseat()V

    goto :goto_0

    .line 1898
    :cond_5
    sget-object v5, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v5}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_2
.end method

.method public getBackgroundDarken()F
    .locals 1

    .prologue
    .line 1140
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    return v0
.end method

.method public getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 3841
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e005e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "v"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 298
    if-eqz p1, :cond_3

    .line 299
    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/SamsungWidgetItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v0, :cond_2

    .line 304
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 315
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-object v0

    .line 307
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 311
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getEditModeShrinkFactor()F
    .locals 1

    .prologue
    .line 3800
    iget v0, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "outRect"

    .prologue
    const/4 v2, 0x0

    .line 2387
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v1, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2388
    return-void
.end method

.method protected getHorizontalVisibilityExtension()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1403
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1404
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1405
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1406
    .local v1, pw:I
    const v3, 0x3f19999a

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 1418
    .end local v1           #pw:I
    :cond_0
    :goto_0
    return v2

    .line 1410
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    .line 1411
    .local v0, fsf:Lcom/android/launcher2/ScalarAnimator;
    if-eqz v0, :cond_0

    .line 1413
    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    iget v4, p0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    mul-float/2addr v3, v4

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v2, v3

    goto :goto_0
.end method

.method public getHorizontalWallpaperOffset()F
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v0

    return v0
.end method

.method public getIsDragOccuring()Z
    .locals 1

    .prologue
    .line 3254
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    return v0
.end method

.method getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method public getPageIndicatorManager(Lcom/android/launcher2/PagedView;III)Lcom/android/launcher2/PageIndicatorManager;
    .locals 1
    .parameter "pagedView"
    .parameter "pageIndicatorTop"
    .parameter "pageIndicatorGap"
    .parameter "pageIndicatorMaxVisible"

    .prologue
    .line 3779
    new-instance v0, Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/launcher2/PageIndicatorPreviewManager;-><init>(Lcom/android/launcher2/PagedView;III)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    .line 3781
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    return-object v0
.end method

.method public getPendingSnapToPage()I
    .locals 1

    .prologue
    .line 988
    iget v0, p0, Lcom/android/launcher2/Workspace;->mPendingSnapToPageIndex:I

    return v0
.end method

.method protected getScrollMode()I
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 2

    .prologue
    .line 2438
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 2

    .prologue
    .line 2443
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/launcher2/Workspace$State;
    .locals 1

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method protected getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z
    .locals 10
    .parameter "aRect"

    .prologue
    const/4 v9, 0x1

    .line 1508
    iget v4, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1509
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1510
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    .line 1511
    .local v2, hs:Lcom/android/launcher2/Hotseat;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->isShown()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1512
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_0

    .line 1513
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1515
    :cond_0
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1516
    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1519
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v0

    .line 1520
    .local v0, bar:Lcom/android/launcher2/HomeEditBar;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1521
    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->getBarPosition()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1532
    :cond_2
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v3

    .line 1533
    .local v3, ql:Lcom/android/launcher2/QuickLaunch;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1534
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_3

    .line 1535
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1541
    :cond_3
    return v9

    .line 1523
    .end local v3           #ql:Lcom/android/launcher2/QuickLaunch;
    :pswitch_1
    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1528
    :pswitch_2
    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getVerticalWallpaperOffset()F
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v0

    return v0
.end method

.method public getWidgetRotateSkipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3938
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;
    .locals 12
    .parameter "insertAt"
    .parameter "showEmptyMessage"

    .prologue
    const/4 v11, -0x1

    .line 3685
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 3688
    .local v3, homeView:Lcom/android/launcher2/HomeView;
    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030053

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3689
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3690
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 3691
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_0

    .line 3692
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v5, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3695
    .restart local v5       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0, p1, v5}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3696
    if-nez p2, :cond_1

    .line 3697
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 3699
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    .line 3700
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    .line 3701
    .local v2, homePageIndex:I
    if-gt p1, v2, :cond_2

    .line 3702
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/HomeView;->setHomeScreenAt(I)V

    .line 3705
    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    .line 3708
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3710
    .local v7, updatedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    .line 3711
    .local v6, totalScreens:I
    add-int/lit8 v4, p1, 0x1

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 3712
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 3713
    .local v1, clc:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v1, v4, v7}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    .line 3711
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3716
    .end local v1           #clc:Lcom/android/launcher2/CellLayoutChildren;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 3718
    return-object v0
.end method

.method public insertWorkspaceSecretScreen(IZZ)Lcom/android/launcher2/CellLayout;
    .locals 11
    .parameter "insertAt"
    .parameter "showEmptyMessage"
    .parameter "isDBupdate"

    .prologue
    const/4 v10, -0x1

    .line 3722
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 3724
    .local v2, homeView:Lcom/android/launcher2/HomeView;
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030053

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3725
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3726
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->setPageType(I)V

    .line 3728
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3729
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_0

    .line 3730
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .end local v4           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v4, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3733
    .restart local v4       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3734
    if-nez p2, :cond_1

    .line 3735
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 3737
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    .line 3739
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->saveSecretScreenInfo()V

    .line 3741
    if-eqz p3, :cond_3

    .line 3742
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3744
    .local v6, updatedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    .line 3745
    .local v5, totalScreens:I
    add-int/lit8 v3, p1, 0x1

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 3746
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 3747
    .local v1, clc:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v1, v3, v6}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    .line 3745
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3749
    .end local v1           #clc:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 3751
    .end local v3           #i:I
    .end local v5           #totalScreens:I
    .end local v6           #updatedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    :cond_3
    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    .line 373
    .local v0, qvw:Lcom/android/launcher2/QuickViewWorkspace;
    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 376
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v1

    return-object v1
.end method

.method protected invalidatePageData()V
    .locals 1

    .prologue
    .line 3792
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->invalidatePageData()V

    .line 3793
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 3794
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setDirtyFlags()V

    .line 3795
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updatePageTransforms()V

    .line 3797
    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderOpened()Z
    .locals 2

    .prologue
    .line 523
    const/4 v0, 0x0

    .line 525
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    .line 530
    :cond_0
    return v0
.end method

.method public isInResizeMode()Z
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageAddedForDrag(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 3863
    const/4 v1, 0x0

    .line 3864
    .local v1, result:Z
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3865
    .local v0, cellLayout:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    if-ne v0, v2, :cond_0

    .line 3866
    const/4 v1, 0x1

    .line 3868
    :cond_0
    return v1
.end method

.method public isSwitchingState()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "child"
    .parameter "outLocalPoint"

    .prologue
    .line 3222
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_1

    instance-of v3, p3, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v3, :cond_1

    move-object v2, p3

    .line 3223
    check-cast v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 3224
    .local v2, page:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    iget v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 3225
    .local v0, localX:F
    iget v3, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 3226
    .local v1, localY:F
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->isPointInRegion(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3227
    if-eqz p4, :cond_0

    .line 3228
    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 3230
    :cond_0
    const/4 v3, 0x1

    .line 3233
    .end local v0           #localX:F
    .end local v1           #localY:F
    .end local v2           #page:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    :goto_0
    return v3

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher2/SmoothPagedView;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v3

    goto :goto_0
.end method

.method launchAllAppsIcon()V
    .locals 2

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    .line 3152
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getAllAppsIcon()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->onClickAllAppsButton(Landroid/view/View;)V

    .line 3154
    :cond_0
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 5
    .parameter "v"
    .parameter "xy"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2376
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 2377
    .local v0, cachedInverseMatrix:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2378
    aget v1, p2, v3

    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v3

    .line 2379
    aget v1, p2, v4

    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v4

    .line 2380
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2381
    return-void
.end method

.method moveToDefaultScreen(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 2755
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v0

    .line 2756
    .local v0, homeScreenIndex:I
    if-eqz p1, :cond_0

    .line 2757
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2761
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2762
    return-void

    .line 2759
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method moveToLeftScreen(ZZ)V
    .locals 6
    .parameter "left"
    .parameter "animate"

    .prologue
    .line 2765
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    .line 2766
    .local v2, homeScreenIndex:I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v3

    .line 2767
    .local v3, maxScreenIndex:I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 2788
    :goto_0
    return-void

    .line 2771
    :cond_0
    if-eqz p1, :cond_2

    .line 2772
    add-int/lit8 v5, v2, -0x1

    if-ltz v5, :cond_1

    add-int/lit8 v4, v2, -0x1

    .line 2776
    .local v4, toPage_right:I
    :goto_1
    if-eqz p2, :cond_5

    .line 2778
    if-eqz p1, :cond_4

    const/4 v0, 0x2

    .line 2779
    .local v0, dir:I
    :goto_2
    iget v5, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v4, v5, v0}, Lcom/android/launcher2/Workspace;->snapToPage(III)V

    .line 2784
    .end local v0           #dir:I
    :goto_3
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2785
    :catch_0
    move-exception v1

    .line 2786
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2772
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #toPage_right:I
    :cond_1
    add-int/lit8 v4, v3, -0x1

    goto :goto_1

    .line 2774
    :cond_2
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v3, :cond_3

    add-int/lit8 v4, v2, 0x1

    .restart local v4       #toPage_right:I
    :goto_4
    goto :goto_1

    .end local v4           #toPage_right:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 2778
    .restart local v4       #toPage_right:I
    :cond_4
    const/4 v0, 0x3

    goto :goto_2

    .line 2781
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_3
.end method

.method public newPage(Z)I
    .locals 6
    .parameter "showEmptyMessage"

    .prologue
    .line 3646
    const/high16 v3, -0x8000

    .line 3647
    .local v3, insertAt:I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    .line 3648
    .local v2, currentPage:I
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3650
    .local v1, cell:Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    const/4 v0, 0x1

    .line 3660
    .local v0, canCreatePage:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 3661
    add-int/lit8 v3, v2, 0x1

    .line 3670
    invoke-virtual {p0, v3, p1}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    .line 3673
    :cond_0
    return v3

    .line 3650
    .end local v0           #canCreatePage:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1425
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onAttachedToWindow()V

    .line 1426
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1427
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->computeScroll()V

    .line 1428
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 1429
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 2813
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2814
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2843
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 2818
    .restart local p1
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->cancelClicksOnHome()V

    .line 2819
    instance-of v4, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 2820
    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 2821
    .local v1, item:Lcom/android/launcher2/BaseItem;
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_2

    .line 2822
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v4, :cond_0

    .line 2823
    check-cast v1, Lcom/android/launcher2/FolderItem;

    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    check-cast p1, Lcom/android/launcher2/FolderIconView;

    .end local p1
    invoke-direct {p0, v1, p1, v9}, Lcom/android/launcher2/Workspace;->handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    goto :goto_0

    .line 2825
    .restart local v1       #item:Lcom/android/launcher2/BaseItem;
    .restart local p1
    :cond_2
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v5, :cond_3

    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_0

    .line 2828
    :cond_3
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_4

    .line 2829
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move-object v4, v3

    .line 2833
    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v0, v4, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 2834
    .local v0, intent:Landroid/content/Intent;
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 2835
    .local v2, pos:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2836
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v7

    aget v6, v2, v9

    aget v7, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v2, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2839
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 3373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    .line 3374
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    .line 3375
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->changeOrientationIfRequired(Landroid/content/res/Configuration;)Z

    .line 3378
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    if-nez v0, :cond_0

    .line 3379
    invoke-static {}, Lcom/android/launcher2/guide/GuideFragment;->getGuideFragmentInstance()Lcom/android/launcher2/guide/GuideFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Launcher;->sInComingIntentHelpHub:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher2/guide/GuideFragment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/app/Activity;Landroid/content/Intent;)V

    .line 3381
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1433
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onDetachedFromWindow()V

    .line 1434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1435
    return-void
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1685
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    .line 1686
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->disableRollNavigation()V

    .line 1688
    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1689
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-nez v1, :cond_0

    .line 1709
    :goto_0
    return-void

    .line 1691
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 1692
    sget-object v1, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 1693
    const/4 v0, 0x0

    .line 1694
    .local v0, state:Lcom/android/launcher2/Workspace$State;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v2, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_2

    .line 1695
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_4

    .line 1696
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1697
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    if-eqz v1, :cond_2

    .line 1698
    :cond_1
    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    .line 1707
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/HomeView;->setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V

    .line 1708
    new-instance v1, Lcom/android/launcher2/Workspace$StateChangeRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/Workspace$StateChangeRunnable;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1701
    :cond_3
    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    goto :goto_1

    .line 1705
    :cond_4
    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    goto :goto_1
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1631
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1632
    :cond_0
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragStartedWithItem ignored. mIsDragging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :goto_0
    return-void

    .line 1635
    :cond_1
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragStartedWithItem. View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_2

    .line 1637
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/HomeView;->setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V

    .line 1640
    :cond_2
    new-instance v0, Lcom/android/launcher2/Workspace$10;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Workspace$10;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1658
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->enableRollNavigation()V

    .line 1659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1490
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-nez v0, :cond_0

    .line 1491
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 1493
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1494
    return-void
.end method

.method public onEnterScrollArea(III)Z
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2449
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_1

    .line 2450
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2497
    :cond_0
    :goto_0
    return v3

    .line 2454
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->onEnterScrollArea(III)Z

    .line 2456
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2457
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2458
    .local v2, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 2459
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2463
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2464
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2465
    .restart local v2       #r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher2/QuickLaunch;->getHitRect(Landroid/graphics/Rect;)V

    .line 2466
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2471
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/launcher2/Workspace;->setScrollDirection(I)V

    .line 2473
    const/4 v3, 0x0

    .line 2474
    .local v3, result:Z
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v4, :cond_0

    .line 2475
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v7

    if-nez p3, :cond_6

    move v4, v5

    :goto_1
    add-int v1, v7, v4

    .line 2476
    .local v1, page:I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2477
    if-ne v1, v5, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 2480
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2482
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 2484
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_5

    .line 2485
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2487
    :cond_5
    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2488
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2492
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 2493
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 2494
    const/4 v3, 0x1

    goto :goto_0

    .end local v0           #layout:Lcom/android/launcher2/CellLayout;
    .end local v1           #page:I
    :cond_6
    move v4, v6

    .line 2475
    goto :goto_1

    .line 2478
    .restart local v1       #page:I
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-ne v1, v4, :cond_4

    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onExitScrollArea()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2511
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onExitScrollArea()V

    .line 2512
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v1, :cond_1

    .line 2513
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_0

    .line 2515
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2517
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2518
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->onDragEnter()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2525
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 2527
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 2529
    :cond_1
    return-void

    .line 2519
    :catch_0
    move-exception v0

    .line 2520
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method onFadeEnd()V
    .locals 3

    .prologue
    .line 3193
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 3194
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3195
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3196
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->destroyDummyPanel()V

    .line 3194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3198
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method onFadeStart()V
    .locals 7

    .prologue
    .line 3174
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    .line 3175
    .local v0, c:I
    add-int/lit8 v4, v0, -0x1

    .line 3176
    .local v4, l:I
    add-int/lit8 v5, v0, 0x1

    .line 3177
    .local v5, r:I
    if-gez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 3178
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    const/4 v5, 0x0

    .line 3180
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 3181
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 3182
    if-eq v3, v0, :cond_2

    if-eq v3, v4, :cond_2

    if-ne v3, v5, :cond_4

    .line 3183
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3184
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->setupDummyPanel()V

    .line 3185
    if-eq v3, v0, :cond_4

    if-eq v3, v4, :cond_3

    if-ne v3, v5, :cond_4

    .line 3186
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 3181
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3190
    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 596
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v6, :cond_1

    move v3, v5

    .line 674
    :cond_0
    :goto_0
    return v3

    .line 600
    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    if-eqz v4, :cond_2

    move v3, v5

    .line 601
    goto :goto_0

    .line 603
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 669
    :cond_3
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 670
    .local v3, r:Z
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mOldState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v6, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 671
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setAllowLongPress(Z)V

    .line 672
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelLongPress()V

    goto :goto_0

    .line 606
    .end local v3           #r:Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    .line 607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    .line 608
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto :goto_1

    .line 612
    :pswitch_2
    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v4, :cond_4

    .line 613
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v6

    if-le v4, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v4

    if-nez v4, :cond_4

    .line 615
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    .line 618
    :cond_4
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto :goto_1

    .line 621
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->isAddToScreenDialogShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 624
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    if-eqz v4, :cond_3

    .line 625
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    .line 628
    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v4, :cond_5

    .line 629
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->snapToDestination()V

    .line 631
    :cond_5
    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 633
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    if-nez v4, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v7, :cond_7

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v4

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v4

    if-nez v4, :cond_7

    .line 637
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v1, v4

    .line 638
    .local v1, dy:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v0, v4

    .line 639
    .local v0, dx:I
    iget v4, p0, Lcom/android/launcher2/Workspace;->mTouchPointDistance:I

    mul-int v6, v1, v1

    mul-int v7, v0, v0

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    sub-int v2, v4, v6

    .line 641
    .local v2, pinchDelta:I
    const/16 v4, 0x1e

    if-le v2, v4, :cond_7

    .line 642
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    .line 643
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    .line 644
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    goto/16 :goto_0

    .line 649
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #pinchDelta:I
    :cond_7
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    goto/16 :goto_1

    .line 653
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-gt v4, v7, :cond_3

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto/16 :goto_1

    .line 657
    :pswitch_5
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    .line 658
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v1, v4

    .line 660
    .restart local v1       #dy:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v0, v4

    .line 662
    .restart local v0       #dx:I
    mul-int v4, v1, v1

    mul-int v6, v0, v0

    add-int/2addr v4, v6

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v4, v6

    iput v4, p0, Lcom/android/launcher2/Workspace;->mTouchPointDistance:I

    .line 664
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    goto/16 :goto_1

    .line 603
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    .line 1440
    .local v1, currentPage:I
    iget-boolean v5, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v5, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1441
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1443
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    .line 1447
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    if-eqz v5, :cond_1

    .line 1448
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 1451
    new-instance v5, Lcom/android/launcher2/Workspace$9;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Workspace$9;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1460
    :cond_1
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    .line 1461
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    .line 1462
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1463
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_4

    .line 1464
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1465
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    sget-boolean v5, Lcom/android/launcher2/Launcher;->UseQwertyKeypad:Z

    if-eqz v5, :cond_5

    .line 1466
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    iget v7, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float/2addr v6, v7

    mul-float v3, v5, v6

    .line 1467
    .local v3, maxShrinkAmount:F
    const/high16 v5, 0x3f00

    mul-float v4, v3, v5

    .line 1468
    .local v4, maxXlate:F
    iget v5, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3

    .line 1469
    iget v5, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 1471
    :cond_3
    const/high16 v5, 0x3f80

    iget v6, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float/2addr v5, v6

    div-float v5, v4, v5

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    .line 1483
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #maxShrinkAmount:F
    .end local v4           #maxXlate:F
    :cond_4
    :goto_0
    iget v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    iget v6, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    .line 1484
    iget v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    iget v6, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    .line 1486
    return-void

    .line 1474
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    int-to-float v4, v5

    .line 1475
    .restart local v4       #maxXlate:F
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    iget v7, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 1476
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_7

    .line 1477
    const/4 v4, 0x0

    .line 1480
    :cond_6
    :goto_1
    const/high16 v5, 0x3f80

    iget v6, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float/2addr v5, v6

    div-float v5, v4, v5

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    goto :goto_0

    .line 1478
    :cond_7
    iget v5, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    .line 1479
    iget v5, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v4, v5

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 14
    .parameter "v"

    .prologue
    .line 3105
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onLongClick(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3106
    const/4 v11, 0x1

    .line 3145
    :goto_0
    return v11

    .line 3112
    :cond_0
    instance-of v11, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v11, :cond_2

    .line 3115
    const/4 v11, 0x2

    new-array v0, v11, [I

    .line 3116
    .local v0, cellLayoutXY:[I
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 3117
    .local v8, pagedViewXY:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3118
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getLocationInWindow([I)V

    .line 3120
    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    float-to-int v11, v11

    const/4 v12, 0x0

    aget v12, v8, v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    aget v12, v0, v12

    sub-int/2addr v11, v12

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    sub-int v9, v11, v12

    .line 3121
    .local v9, x:I
    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    float-to-int v11, v11

    const/4 v12, 0x1

    aget v12, v8, v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v0, v12

    sub-int/2addr v11, v12

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int v10, v11, v12

    .local v10, y:I
    move-object v4, p1

    .line 3123
    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 3125
    .local v4, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v5

    .line 3126
    .local v5, cw:I
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v3

    .line 3127
    .local v3, ch:I
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getWidthGap()I

    move-result v7

    .line 3128
    .local v7, gw:I
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getHeightGap()I

    move-result v6

    .line 3130
    .local v6, gh:I
    add-int v11, v5, v7

    div-int v1, v9, v11

    .line 3131
    .local v1, cellX:I
    add-int v11, v3, v6

    div-int v2, v10, v11

    .line 3136
    .local v2, cellY:I
    add-int v11, v5, v7

    mul-int/2addr v11, v1

    div-int/lit8 v12, v7, 0x2

    sub-int/2addr v11, v12

    sub-int v11, v9, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int v12, v3, v6

    mul-int/2addr v12, v2

    div-int/lit8 v13, v6, 0x2

    sub-int/2addr v12, v13

    sub-int v12, v10, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v11, v12, :cond_1

    .line 3137
    invoke-virtual {v4, v1, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v4, v11, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3138
    const/4 v11, 0x1

    goto :goto_0

    .line 3140
    :cond_1
    invoke-virtual {v4, v1, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v4, v1, v11}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3141
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 3145
    .end local v0           #cellLayoutXY:[I
    .end local v1           #cellX:I
    .end local v2           #cellY:I
    .end local v3           #ch:I
    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    .end local v5           #cw:I
    .end local v6           #gh:I
    .end local v7           #gw:I
    .end local v8           #pagedViewXY:[I
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 714
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageBeginMoving()V

    .line 715
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 716
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    .line 717
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 721
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 722
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 725
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    .line 726
    .local v0, qlCamera:Lcom/android/launcher2/QuickLaunch;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 727
    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 729
    :cond_2
    return-void

    .line 716
    .end local v0           #qlCamera:Lcom/android/launcher2/QuickLaunch;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPageEndMoving()V
    .locals 3

    .prologue
    .line 733
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageEndMoving()V

    .line 734
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 735
    new-instance v2, Lcom/android/launcher2/Workspace$4;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 744
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 746
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 747
    new-instance v2, Lcom/android/launcher2/Workspace$5;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$5;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 755
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 756
    new-instance v2, Lcom/android/launcher2/Workspace$6;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$6;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 763
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    .line 764
    .local v0, qlCamera:Lcom/android/launcher2/QuickLaunch;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 765
    new-instance v2, Lcom/android/launcher2/Workspace$7;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/Workspace$7;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/QuickLaunch;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 772
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    .line 773
    .local v1, qw:Lcom/android/launcher2/QuickViewWorkspace;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 774
    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 776
    :cond_4
    return-void
.end method

.method public onPreShowAllApps()V
    .locals 1

    .prologue
    .line 3786
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->abortScroll()V

    .line 3787
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 3788
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1546
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1547
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1548
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1550
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2410
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2411
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    .line 2412
    return-void
.end method

.method public onScrollComplete()V
    .locals 0

    .prologue
    .line 2505
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onScrollComplete()V

    .line 2506
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->onExitScrollArea()V

    .line 2507
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 586
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 590
    :goto_0
    return v0

    .line 572
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    .line 590
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 575
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-eqz v0, :cond_0

    .line 576
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    move v0, v1

    .line 577
    goto :goto_0

    .line 581
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isAddToScreenDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    move v0, v1

    .line 582
    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 381
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onViewAdded(Landroid/view/View;)V

    .line 382
    instance-of v1, p1, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-nez v1, :cond_0

    .line 383
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayoutWithResizableWidgets children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 385
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 386
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setHomeView(Lcom/android/launcher2/HomeView;)V

    .line 387
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 388
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setClickable(Z)V

    .line 390
    sget-object v1, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v1}, Lcom/android/launcher2/PanelDrawer;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 393
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 395
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 397
    const v1, 0x7f0700c1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 399
    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "visibility"

    .prologue
    .line 3362
    if-nez p2, :cond_0

    .line 3363
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3364
    .local v0, newConfig:Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->changeOrientationIfRequired(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3365
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->WIDGET_BINDER:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 3368
    .end local v0           #newConfig:Landroid/content/res/Configuration;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 3369
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->onWindowVisibilityChanged(I)V

    .line 555
    return-void
.end method

.method pauseScreen(I)V
    .locals 10
    .parameter "which"

    .prologue
    .line 3016
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v7

    if-lt p1, v7, :cond_2

    .line 3017
    :cond_0
    const-string v7, "Launcher.Workspace"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR: trying to pause screen on invalid page index. passed in page number = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", children count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    :cond_1
    return-void

    .line 3022
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3023
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_1

    .line 3024
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->setIsPaused(Z)V

    .line 3025
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 3026
    .local v1, cl:Lcom/android/launcher2/CellLayoutChildren;
    if-eqz v1, :cond_1

    .line 3028
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v4

    .line 3029
    .local v4, itemCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 3030
    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3031
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 3032
    .local v5, tag:Ljava/lang/Object;
    instance-of v7, v5, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v7, :cond_4

    .line 3033
    check-cast v5, Lcom/android/launcher2/SamsungWidgetItem;

    .end local v5           #tag:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnPause(Landroid/content/Context;)V

    .line 3029
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3034
    .restart local v5       #tag:Ljava/lang/Object;
    :cond_4
    instance-of v7, v5, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v7, :cond_5

    .line 3035
    check-cast v5, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v5           #tag:Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/android/launcher2/SurfaceWidgetItem;->onPause()V

    goto :goto_1

    .line 3036
    .restart local v5       #tag:Ljava/lang/Object;
    :cond_5
    instance-of v7, v5, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v7, :cond_3

    move-object v7, v5

    .line 3037
    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v7, v7, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v7, :cond_3

    .line 3039
    check-cast v5, Lcom/android/launcher2/HomeShortcutItem;

    .end local v5           #tag:Ljava/lang/Object;
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppIconView;

    .line 3040
    .local v3, iconView:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getMovieDrawable()Lcom/android/launcher2/MovieDrawable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MovieDrawable;->pause()V

    goto :goto_1
.end method

.method public releaseShadows()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3157
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 3158
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3159
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3160
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 3162
    .local v5, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 3163
    .local v0, ccout:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 3164
    invoke-virtual {v5, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3165
    .local v6, v:Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 3166
    check-cast v7, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    .line 3167
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/BaseItem;

    iput-object v8, v7, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 3163
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3158
    .end local v6           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3171
    .end local v0           #ccout:I
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v4           #j:I
    .end local v5           #l:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    return-void
.end method

.method protected removeCreatedPageForDrag()V
    .locals 2

    .prologue
    .line 3845
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_1

    .line 3846
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3847
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 3854
    .local v0, deleteIndex:I
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    .line 3857
    .end local v0           #deleteIndex:I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    .line 3859
    :cond_1
    return-void
.end method

.method removeHelpAppItem(Lcom/android/launcher2/HomeItem;)V
    .locals 8
    .parameter "item"

    .prologue
    .line 2582
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2584
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2587
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object v0

    .line 2589
    .local v0, cellLayouts:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/CellLayout;>;"
    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 2593
    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v4, v5}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v1

    .line 2594
    .local v1, folder:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v1, :cond_1

    .line 2595
    invoke-virtual {v1, p1}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 2608
    .end local v1           #folder:Lcom/android/launcher2/HomeFolderItem;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 2612
    return-void

    .line 2598
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 2599
    .local v3, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2600
    instance-of v4, p1, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v4, :cond_1

    .line 2601
    const-string v4, "SurfaceWidgetFlow"

    const-string v5, "destroying surface widget for removeHelpItem?"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p1

    .line 2602
    check-cast v4, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher2/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V

    goto :goto_0
.end method

.method removeItems(Ljava/util/List;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2615
    .local p1, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2616
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    .line 2617
    .local v4, item:Lcom/android/launcher2/HomeItem;
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2620
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/android/launcher2/HomeItem;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object v0

    .line 2621
    .local v0, cellLayouts:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/CellLayout;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    .line 2622
    .restart local v4       #item:Lcom/android/launcher2/HomeItem;
    iget-wide v9, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v11, -0x64

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    iget-wide v9, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v11, -0x65

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    iget-wide v9, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    .line 2626
    iget-wide v9, v4, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v9, v10}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v1

    .line 2627
    .local v1, folder:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 2634
    .end local v1           #folder:Lcom/android/launcher2/HomeFolderItem;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 2636
    instance-of v9, v4, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v9, :cond_5

    move-object v8, v4

    .line 2637
    check-cast v8, Lcom/android/launcher2/SamsungWidgetItem;

    .line 2638
    .local v8, widget:Lcom/android/launcher2/SamsungWidgetItem;
    sget-object v10, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    invoke-virtual {v10, v9, v8}, Lcom/android/launcher2/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungWidgetItem;)V

    goto :goto_1

    .line 2629
    .end local v8           #widget:Lcom/android/launcher2/SamsungWidgetItem;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 2630
    .local v5, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v5, v4}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    .line 2640
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #layout:Lcom/android/launcher2/CellLayout;
    :cond_5
    instance-of v9, v4, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v9, :cond_1

    move-object v7, v4

    .line 2641
    check-cast v7, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 2642
    .local v7, swItem:Lcom/android/launcher2/SurfaceWidgetItem;
    sget-object v6, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 2643
    .local v6, packageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v6, v10}, Lcom/android/launcher2/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V

    goto :goto_1

    .line 2655
    .end local v4           #item:Lcom/android/launcher2/HomeItem;
    .end local v6           #packageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .end local v7           #swItem:Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_6
    return-void
.end method

.method public removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1909
    return-void
.end method

.method protected repositionOpenFolder()V
    .locals 1

    .prologue
    .line 3238
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 3239
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->repositionOpenFolder()V

    .line 3241
    :cond_0
    return-void
.end method

.method public restoreOpenFolder(Lcom/android/launcher2/HomeFolderItem;)Z
    .locals 2
    .parameter "openFolder"

    .prologue
    const/4 v1, 0x0

    .line 3094
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->getViewForTag(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 3095
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3096
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .end local v0           #v:Landroid/view/View;
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    .line 3097
    const/4 v1, 0x1

    .line 3099
    :cond_0
    return v1
.end method

.method resumeScreen(I)V
    .locals 10
    .parameter "which"

    .prologue
    .line 3048
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 3050
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 3051
    if-eq v3, p1, :cond_0

    .line 3052
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 3053
    .local v6, layout:Lcom/android/launcher2/CellLayout;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->isPaused()Z

    move-result v9

    if-nez v9, :cond_0

    .line 3054
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 3050
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3059
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3060
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    if-nez v0, :cond_3

    .line 3081
    :cond_2
    return-void

    .line 3061
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayout;->setIsPaused(Z)V

    .line 3062
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 3063
    .local v2, cl:Lcom/android/launcher2/CellLayoutChildren;
    if-eqz v2, :cond_2

    .line 3065
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    .line 3066
    .local v5, itemCount:I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    .line 3067
    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3068
    .local v8, view:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 3069
    .local v7, tag:Ljava/lang/Object;
    instance-of v9, v7, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v9, :cond_5

    .line 3070
    check-cast v7, Lcom/android/launcher2/SamsungWidgetItem;

    .end local v7           #tag:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnResume(Landroid/content/Context;)V

    .line 3066
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3071
    .restart local v7       #tag:Ljava/lang/Object;
    :cond_5
    instance-of v9, v7, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v9, :cond_6

    .line 3072
    check-cast v7, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v7           #tag:Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto :goto_2

    .line 3073
    .restart local v7       #tag:Ljava/lang/Object;
    :cond_6
    instance-of v9, v7, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v9, :cond_4

    move-object v9, v7

    .line 3074
    check-cast v9, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v9, v9, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v9, :cond_4

    .line 3076
    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    .end local v7           #tag:Ljava/lang/Object;
    invoke-virtual {v2, v7}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppIconView;

    .line 3077
    .local v4, iconView:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getMovieDrawable()Lcom/android/launcher2/MovieDrawable;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/MovieDrawable;->resume()V

    goto :goto_2
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 2416
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 2417
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollLeft()V

    .line 2419
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2420
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 2421
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 2423
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 2427
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 2428
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollRight()V

    .line 2430
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2431
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 2432
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 2434
    :cond_1
    return-void
.end method

.method public sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V
    .locals 2
    .parameter "sx"
    .parameter "sy"
    .parameter "provider"
    .parameter "appWidgetId"

    .prologue
    .line 3084
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3085
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3086
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3087
    const-string v1, "widgetspanx"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3088
    const-string v1, "widgetspany"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3089
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3090
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 3091
    return-void
.end method

.method setAllEmptyMessageVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 3245
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 3246
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3247
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3248
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/HomeView;->determineEmptyPageMsgVisibility(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 3246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3248
    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    .line 3250
    .end local v0           #cell:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method public setBackgroundDarken(F)V
    .locals 2
    .parameter "darken"

    .prologue
    .line 1134
    iput p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    .line 1135
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getDarkenView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getDarkenView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->setDummyPanelProperties()V

    .line 1138
    return-void
.end method

.method public setDragOutline(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1664
    return-void
.end method

.method setDummyPanelProperties(FI)V
    .locals 3
    .parameter "baseDarken"
    .parameter "alpha"

    .prologue
    .line 3201
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 3202
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3203
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3204
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayout;->setDummyPanelProperties(FI)V

    .line 3202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3206
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public setHorizontalWallpaperOffset(F)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    const-string v1, "setHorizontalWallpaperOffset"

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(FLjava/lang/String;)V

    .line 861
    return-void
.end method

.method public setPageZoom(F)V
    .locals 5
    .parameter "zoom"

    .prologue
    const/high16 v4, 0x3f80

    .line 3211
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 3212
    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float v3, v4, v3

    div-float v0, v2, v3

    .line 3213
    .local v0, p:F
    iget v2, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    int-to-float v2, v2

    sub-float v3, v4, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 3214
    .local v1, top:I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setPageIndicatorTop(I)V

    .line 3216
    .end local v0           #p:F
    .end local v1           #top:I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->setPageZoom(F)V

    .line 3217
    return-void
.end method

.method public setPendingSnapToPage(I)V
    .locals 0
    .parameter "whichPage"

    .prologue
    .line 985
    iput p1, p0, Lcom/android/launcher2/Workspace;->mPendingSnapToPageIndex:I

    .line 986
    return-void
.end method

.method public setVerticalWallpaperOffset(F)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalY(F)V

    .line 855
    return-void
.end method

.method public setWallpaperDimension()V
    .locals 5

    .prologue
    .line 817
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 818
    .local v2, size:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher2/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 819
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 820
    .local v0, maxDim:I
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 824
    .local v1, minDim:I
    iget-boolean v3, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v3, :cond_0

    .line 825
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 826
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    .line 845
    :goto_0
    new-instance v3, Lcom/android/launcher2/Workspace$8;

    const-string v4, "setWallpaperDimension"

    invoke-direct {v3, p0, v4}, Lcom/android/launcher2/Workspace$8;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace$8;->start()V

    .line 851
    return-void

    .line 838
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 839
    int-to-float v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 840
    int-to-float v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenHeightRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0

    .line 842
    :cond_1
    int-to-float v3, v1

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 843
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0
.end method

.method setup(Lcom/android/launcher2/HomeView;)V
    .locals 1
    .parameter "home"

    .prologue
    .line 2399
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 2401
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->initWorkspace()V

    .line 2405
    sget-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 2406
    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .prologue
    .line 1123
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1126
    :cond_0
    return-void
.end method

.method protected snapToPage(III)V
    .locals 1
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    .line 978
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    .line 982
    :goto_0
    return-void

    .line 980
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 981
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method startDrag(Landroid/view/View;)Z
    .locals 5
    .parameter "child"

    .prologue
    .line 2352
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    .line 2354
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2355
    :cond_0
    const/4 v0, 0x0

    .line 2368
    :cond_1
    :goto_0
    return v0

    .line 2357
    :cond_2
    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    invoke-static {p1, v2}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;F)Z

    move-result v0

    .line 2358
    .local v0, rc:Z
    if-eqz v0, :cond_1

    .line 2359
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->enableRollNavigation()V

    .line 2360
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2361
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v2, :cond_4

    .line 2362
    check-cast v1, Lcom/android/launcher2/SamsungWidgetItem;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnPause(Landroid/content/Context;)V

    .line 2366
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const-wide/16 v3, 0x23

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 2363
    .restart local v1       #tag:Ljava/lang/Object;
    :cond_4
    instance-of v2, v1, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v2, :cond_3

    .line 2364
    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetItem;->onPause()V

    goto :goto_1
.end method

.method public syncPageItems(IZ)V
    .locals 2
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 2801
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2802
    .local v0, l:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->buildViews()V

    .line 2803
    return-void
.end method

.method public syncPages()V
    .locals 3

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 2793
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2794
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 2795
    .local v2, l:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->removeAllViewsOnPage()V

    .line 2793
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2797
    .end local v2           #l:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public turnOffEmptyPageMsg()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3761
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3762
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Launcher;->setShowEmptyPageMessagePref(Z)V

    .line 3763
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3764
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3765
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SHOW_EMPTY_PAGE_MSG"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3766
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3767
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 3769
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 23
    .parameter "page"
    .parameter "scrollProgress"

    .prologue
    .line 1224
    sget-boolean v20, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLETILTEFFECT:Z

    if-eqz v20, :cond_1

    .line 1225
    invoke-virtual/range {p0 .. p2}, Lcom/android/launcher2/Workspace;->updatePageTransformWithoutTilt(Landroid/view/View;F)V

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v8

    .line 1229
    .local v8, factor:F
    const/high16 v20, 0x3f80

    cmpl-float v20, p2, v20

    if-gtz v20, :cond_0

    const/high16 v20, -0x4080

    cmpg-float v20, p2, v20

    if-ltz v20, :cond_0

    .line 1230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    move/from16 v20, v0

    sget v21, Lcom/android/launcher2/Workspace;->kPageZoomScaleLimit:F

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v19

    .line 1231
    .local v19, zoom:F
    const/16 v16, 0x0

    .line 1232
    .local v16, scrollAlpha:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v20

    sget-object v21, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_9

    const/4 v11, 0x1

    .line 1233
    .local v11, isEditMode:Z
    :goto_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1234
    .local v2, absSP:F
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1235
    const/16 v20, 0x0

    cmpl-float v20, v20, v8

    if-nez v20, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isFastScrolling()Z

    move-result v20

    if-nez v20, :cond_2

    .line 1236
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace;->zoomInterpolator(I)F

    move-result v19

    .line 1238
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(IF)F

    move-result v16

    .line 1245
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v10

    .line 1247
    .local v10, i:I
    const/high16 v20, 0x3f80

    sub-float v20, v20, v2

    const v21, 0x3f333333

    mul-float v20, v20, v21

    const v21, 0x3e99999a

    add-float v9, v20, v21

    .line 1249
    .local v9, fastScrollBgAlpha:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mLastTouchState:I

    move-object/from16 v7, p1

    .line 1250
    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 1254
    .local v7, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 1256
    const/4 v4, 0x0

    .line 1260
    .local v4, blendBackground:Z
    const v20, 0x3e4ccccd

    cmpl-float v20, v8, v20

    if-lez v20, :cond_3

    const v20, 0x3f19999a

    cmpg-float v20, v2, v20

    if-gtz v20, :cond_3

    .line 1261
    const/4 v4, 0x1

    .line 1264
    :cond_3
    move/from16 v0, v16

    invoke-static {v0, v9, v8}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v20

    const/high16 v21, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1, v4}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 1268
    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    sub-float v21, v21, v2

    const v22, 0x3e4ccccd

    add-float v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1270
    .local v3, alpha:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->slowRotation:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->fastRotation:F

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v20

    mul-float v15, v20, p2

    .line 1271
    .local v15, rotation:F
    const/16 v17, 0x0

    .line 1272
    .local v17, translationX:F
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1273
    const/high16 v20, 0x3f80

    sub-float v12, v20, v19

    .line 1275
    .local v12, nsi:F
    if-eqz v11, :cond_4

    .line 1276
    const/high16 v20, 0x3f80

    sget v21, Lcom/android/launcher2/Workspace;->kPageZoomScaleLimit:F

    sub-float v12, v20, v21

    .line 1279
    :cond_4
    mul-float v20, p2, v12

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v17, v20, v21

    .line 1282
    .end local v12           #nsi:F
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a001c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1283
    .local v18, vtransition_rotation_max:F
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v14

    .line 1284
    .local v14, pageWidth:I
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v13

    .line 1286
    .local v13, pageHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1287
    int-to-float v0, v13

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1288
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v20

    if-eqz v20, :cond_c

    int-to-float v0, v14

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    int-to-float v0, v14

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    mul-float v21, v21, p2

    add-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1312
    :cond_5
    :goto_4
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x3f80

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 1314
    :goto_5
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1315
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1316
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1317
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1319
    .local v5, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v20

    sget-object v21, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 1320
    const/high16 v20, 0x3f80

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1321
    const/high16 v20, 0x3f80

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1330
    .end local v5           #child:Landroid/view/View;
    :cond_6
    :goto_6
    const/high16 v20, 0x3f80

    cmpg-float v20, v19, v20

    if-gez v20, :cond_8

    .line 1331
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_7

    .line 1332
    const/high16 v20, 0x3f80

    sub-float v20, v20, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v17, v17, v20

    .line 1334
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isFastScrolling()Z

    move-result v20

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_8

    .line 1335
    const/high16 v20, 0x3f80

    sub-float v20, v20, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 1338
    :cond_8
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1339
    invoke-virtual {v7, v15}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    goto/16 :goto_0

    .line 1232
    .end local v2           #absSP:F
    .end local v3           #alpha:F
    .end local v4           #blendBackground:Z
    .end local v7           #cl:Lcom/android/launcher2/CellLayout;
    .end local v9           #fastScrollBgAlpha:F
    .end local v10           #i:I
    .end local v11           #isEditMode:Z
    .end local v13           #pageHeight:I
    .end local v14           #pageWidth:I
    .end local v15           #rotation:F
    .end local v17           #translationX:F
    .end local v18           #vtransition_rotation_max:F
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1241
    .restart local v2       #absSP:F
    .restart local v11       #isEditMode:Z
    :cond_a
    const/high16 v20, 0x3f80

    sget v21, Lcom/android/launcher2/Workspace;->kPageZoomScaleLimit:F

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v20

    mul-float v19, v19, v20

    .line 1242
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v16

    goto/16 :goto_2

    .line 1281
    .restart local v3       #alpha:F
    .restart local v4       #blendBackground:Z
    .restart local v7       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v9       #fastScrollBgAlpha:F
    .restart local v10       #i:I
    .restart local v15       #rotation:F
    .restart local v17       #translationX:F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mNormalScrollDrawInward:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v20

    mul-float v20, v20, p2

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v17, v20, v21

    goto/16 :goto_3

    .line 1289
    .restart local v13       #pageHeight:I
    .restart local v14       #pageWidth:I
    .restart local v18       #vtransition_rotation_max:F
    :cond_c
    int-to-float v0, v14

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    goto/16 :goto_4

    .line 1291
    :cond_d
    if-nez v10, :cond_e

    const/16 v20, 0x0

    cmpg-float v20, p2, v20

    if-gez v20, :cond_e

    .line 1293
    sget v20, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    int-to-float v0, v14

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1294
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v21

    div-float v15, v20, v21

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1297
    const/high16 v19, 0x3f80

    .line 1298
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v20

    if-nez v20, :cond_5

    const/high16 v3, 0x3f80

    goto/16 :goto_4

    .line 1299
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_f

    const/16 v20, 0x0

    cmpl-float v20, p2, v20

    if-lez v20, :cond_f

    .line 1301
    const/high16 v20, 0x3f80

    sget v21, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    sub-float v20, v20, v21

    int-to-float v0, v14

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1302
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v21

    div-float v15, v20, v21

    .line 1304
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1305
    const/high16 v19, 0x3f80

    .line 1306
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v20

    if-nez v20, :cond_5

    const/high16 v3, 0x3f80

    goto/16 :goto_4

    .line 1308
    :cond_f
    int-to-float v0, v13

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1309
    int-to-float v0, v14

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    goto/16 :goto_4

    .line 1313
    :cond_10
    invoke-virtual {v7, v3}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    goto/16 :goto_5

    .line 1324
    .restart local v5       #child:Landroid/view/View;
    :cond_11
    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    sub-float v21, v21, v19

    const/high16 v22, 0x3f00

    mul-float v21, v21, v22

    sub-float v6, v20, v21

    .line 1325
    .local v6, childZoom:F
    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1326
    invoke-virtual {v5, v6}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_6
.end method

.method protected updatePageTransformWithoutTilt(Landroid/view/View;F)V
    .locals 13
    .parameter "v"
    .parameter "scrollProgress"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f80

    .line 1346
    if-nez p1, :cond_0

    .line 1399
    :goto_0
    return-void

    .line 1350
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1352
    const/4 v6, 0x0

    .line 1353
    .local v6, translationX:F
    const/4 v1, 0x0

    .line 1354
    .local v1, fixedPosition:Z
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1355
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1356
    .local v2, i:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1357
    .local v4, pageWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1362
    .local v3, pageHeight:I
    sget v7, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    int-to-float v8, v4

    mul-float/2addr v7, v8

    sget v8, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    sub-float v8, v11, v8

    int-to-float v9, v4

    mul-float/2addr v8, v9

    int-to-float v9, v2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotX(F)V

    .line 1365
    int-to-float v7, v3

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotY(F)V

    .line 1367
    if-nez v2, :cond_3

    cmpg-float v7, p2, v12

    if-gez v7, :cond_3

    .line 1369
    sget v7, Lcom/android/launcher2/Workspace;->TRANSITION_MAX_ROTATION:F

    neg-float v7, v7

    mul-float/2addr v7, p2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setRotationY(F)V

    .line 1371
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v7

    int-to-float v6, v7

    .line 1372
    const/4 v1, 0x1

    .line 1383
    .end local v2           #i:I
    .end local v3           #pageHeight:I
    .end local v4           #pageWidth:I
    :cond_1
    :goto_1
    iget v5, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    .line 1384
    .local v5, pageZoom:F
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1385
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 1386
    if-nez v1, :cond_2

    .line 1387
    sub-float v7, v11, v5

    mul-float/2addr v7, p2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x4020

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 1389
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1394
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v7, v7, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v0

    .local v0, darkenAmount:F
    move-object v7, p1

    .line 1395
    check-cast v7, Lcom/android/launcher2/CellLayout;

    iget v8, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    move-object v7, p1

    .line 1396
    check-cast v7, Lcom/android/launcher2/CellLayout;

    sget v8, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    invoke-virtual {v7, v8}, Lcom/android/launcher2/CellLayout;->setBackgroundBaseDarken(F)V

    .line 1398
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v7, v11, v7

    const v8, 0x3e4ccccd

    add-float/2addr v7, v8

    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 1373
    .end local v0           #darkenAmount:F
    .end local v5           #pageZoom:F
    .restart local v2       #i:I
    .restart local v3       #pageHeight:I
    .restart local v4       #pageWidth:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_4

    cmpl-float v7, p2, v12

    if-lez v7, :cond_4

    .line 1375
    sget v7, Lcom/android/launcher2/Workspace;->TRANSITION_MAX_ROTATION:F

    neg-float v7, v7

    mul-float/2addr v7, p2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setRotationY(F)V

    .line 1377
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v7

    iget v8, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int/2addr v7, v8

    int-to-float v6, v7

    .line 1378
    const/4 v1, 0x1

    goto :goto_1

    .line 1380
    :cond_4
    invoke-virtual {p1, v12}, Landroid/view/View;->setRotationY(F)V

    goto :goto_1
.end method

.method updateShortcutsAndSurfaceWidgets(Ljava/util/List;Z)V
    .locals 24
    .parameter
    .parameter "isBadgeUpdate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2658
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v8

    .line 2659
    .local v8, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/CellLayoutChildren;

    .line 2660
    .local v16, layout:Lcom/android/launcher2/CellLayoutChildren;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/BaseItem;

    .line 2661
    .local v15, item:Lcom/android/launcher2/BaseItem;
    instance-of v0, v15, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object v14, v15

    .line 2662
    check-cast v14, Lcom/android/launcher2/HomeShortcutItem;

    .line 2663
    .local v14, info:Lcom/android/launcher2/HomeShortcutItem;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    .line 2664
    .local v5, app:Lcom/android/launcher2/HomeItem;
    if-ne v5, v14, :cond_2

    .line 2665
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v19

    .line 2666
    .local v19, view:Landroid/view/View;
    if-eqz p2, :cond_3

    .line 2667
    if-eqz v19, :cond_3

    .line 2668
    check-cast v19, Lcom/android/launcher2/AppIconView;

    .end local v19           #view:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/AppIconView;->refreshBadge()V

    goto :goto_1

    .line 2673
    .restart local v19       #view:Landroid/view/View;
    :cond_3
    iget-object v0, v14, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    .line 2674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2676
    :cond_4
    iget-object v0, v14, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 2677
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v14, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2679
    :cond_5
    const/16 v17, 0x0

    .line 2680
    .local v17, oldTitle:Ljava/lang/CharSequence;
    if-eqz v19, :cond_6

    move-object/from16 v20, v19

    .line 2681
    check-cast v20, Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v20, v19

    .line 2682
    check-cast v20, Lcom/android/launcher2/AppIconView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    move-object/from16 v20, v19

    .line 2683
    check-cast v20, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/AppIconView;->refreshBadge()V

    move-object/from16 v20, v19

    .line 2684
    check-cast v20, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/HomeItem;

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/AppIconView;->setHotseatText(Lcom/android/launcher2/HomeItem;)V

    .line 2686
    :cond_6
    if-nez v17, :cond_7

    .line 2687
    const-string v17, ""

    .line 2689
    :cond_7
    iget-object v0, v14, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 2690
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_1

    .line 2694
    .end local v5           #app:Lcom/android/launcher2/HomeItem;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v17           #oldTitle:Ljava/lang/CharSequence;
    .end local v19           #view:Landroid/view/View;
    :cond_8
    instance-of v0, v15, Lcom/android/launcher2/HomeFolderItem;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    move-object v14, v15

    .line 2695
    check-cast v14, Lcom/android/launcher2/HomeFolderItem;

    .line 2696
    .local v14, info:Lcom/android/launcher2/HomeFolderItem;
    const/4 v6, 0x0

    .line 2697
    .local v6, changed:Z
    invoke-virtual {v14}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v9

    .line 2698
    .local v9, folderItemCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v9, :cond_d

    .line 2699
    invoke-virtual {v14, v10}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    .line 2700
    .local v7, childItem:Lcom/android/launcher2/HomeShortcutItem;
    if-nez v7, :cond_a

    .line 2698
    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2703
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    .line 2704
    .restart local v5       #app:Lcom/android/launcher2/HomeItem;
    if-ne v5, v7, :cond_b

    .line 2705
    const/4 v6, 0x1

    .line 2706
    if-nez p2, :cond_9

    .line 2708
    iget-object v0, v7, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_c

    .line 2709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v7, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2711
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_3

    .line 2716
    .end local v5           #app:Lcom/android/launcher2/HomeItem;
    .end local v7           #childItem:Lcom/android/launcher2/HomeShortcutItem;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_d
    if-eqz v6, :cond_1

    .line 2717
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v19

    .line 2718
    .restart local v19       #view:Landroid/view/View;
    if-eqz v19, :cond_e

    move-object/from16 v20, v19

    .line 2719
    check-cast v20, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/FolderIconView;->refreshBadge()V

    .line 2720
    check-cast v19, Lcom/android/launcher2/FolderIconView;

    .end local v19           #view:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    .line 2722
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v14, :cond_1

    .line 2723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 2724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    goto/16 :goto_0

    .line 2728
    .end local v6           #changed:Z
    .end local v9           #folderItemCount:I
    .end local v10           #i:I
    .end local v14           #info:Lcom/android/launcher2/HomeFolderItem;
    :cond_f
    instance-of v0, v15, Lcom/android/launcher2/SurfaceWidgetItem;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v18, v15

    .line 2730
    check-cast v18, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 2731
    .local v18, sItem:Lcom/android/launcher2/SurfaceWidgetItem;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_10
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    .line 2732
    .restart local v5       #app:Lcom/android/launcher2/HomeItem;
    if-nez p2, :cond_10

    move-object/from16 v0, v18

    if-ne v5, v0, :cond_10

    .line 2733
    const-string v20, "SurfaceWidgetFlow"

    const-string v21, "making surface widget for update"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/android/launcher2/SurfaceWidgetView;Z)V

    .line 2737
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    if-nez v20, :cond_12

    .line 2752
    .end local v5           #app:Lcom/android/launcher2/HomeItem;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #item:Lcom/android/launcher2/BaseItem;
    .end local v16           #layout:Lcom/android/launcher2/CellLayoutChildren;
    .end local v18           #sItem:Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_11
    return-void

    .line 2739
    .restart local v5       #app:Lcom/android/launcher2/HomeItem;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v15       #item:Lcom/android/launcher2/BaseItem;
    .restart local v16       #layout:Lcom/android/launcher2/CellLayoutChildren;
    .restart local v18       #sItem:Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_12
    sget-object v20, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 2741
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/FocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/SurfaceWidgetView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2742
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/SurfaceWidgetView;->setHapticFeedbackEnabled(Z)V

    .line 2743
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/SurfaceWidgetView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2744
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/SurfaceWidgetView;->isShown()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 2745
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto :goto_4
.end method

.method protected updateWallpaperOffsets()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f00

    .line 950
    const/4 v3, 0x0

    .line 951
    .local v3, updateNow:Z
    const/4 v0, 0x1

    .line 953
    .local v0, keepUpdating:Z
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    if-eqz v4, :cond_3

    .line 954
    const/4 v3, 0x1

    .line 955
    const/4 v0, 0x0

    .line 956
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 957
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 961
    :goto_0
    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-boolean v4, v4, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v4, :cond_1

    .line 962
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v4, :cond_1

    .line 963
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v4, :cond_4

    move v1, v5

    .line 964
    .local v1, offsetX:F
    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v4, :cond_5

    move v2, v5

    .line 965
    .local v2, offsetY:F
    :goto_2
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 971
    .end local v1           #offsetX:F
    .end local v2           #offsetY:F
    :cond_1
    if-eqz v0, :cond_2

    .line 972
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 974
    :cond_2
    return-void

    .line 959
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    move v3, v0

    goto :goto_0

    .line 963
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v1

    goto :goto_1

    .line 964
    .restart local v1       #offsetX:F
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v2

    goto :goto_2
.end method
