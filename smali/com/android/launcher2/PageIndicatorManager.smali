.class public Lcom/android/launcher2/PageIndicatorManager;
.super Ljava/lang/Object;
.source "PageIndicatorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PageIndicatorManager$1;,
        Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;
    }
.end annotation


# static fields
.field private static final FAST_SCROLL_LONG_PRESS_TIMEOUT:I = 0xfa

.field private static mPageIndicatorHeight:I


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mCameraPageIndicator:Landroid/graphics/drawable/Drawable;

.field private final mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

.field private mDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mFocusDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

.field private final mHandler:Landroid/os/Handler;

.field private mIndicatorTotalWidth:I

.field private mIsLongPressPending:Z

.field private mLastLoadedPage:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mMaxVisiblePages:I

.field protected mPageIndicator:Lcom/android/launcher2/PageIndicator;

.field private mPageIndicatorFocus:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorGap:I

.field private mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorLeft:I

.field private mPageIndicatorTop:I

.field mPagedView:Lcom/android/launcher2/PagedView;

.field private final mScroller:Lcom/android/launcher2/ScalarAnimator;

.field private mSecretPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mUserCustomPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mViewsTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/PagedView;III)V
    .locals 6
    .parameter "view"
    .parameter "pageIndicatorTop"
    .parameter "pageIndicatorGap"
    .parameter "pageIndicatorMaxVisible"

    .prologue
    const/4 v5, 0x0

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    .line 57
    new-instance v1, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v2, 0x320

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher2/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    .line 68
    iput-boolean v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    .line 87
    iput-boolean v5, p0, Lcom/android/launcher2/PageIndicatorManager;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 90
    iput-object p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    .line 92
    invoke-virtual {p1}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    .line 94
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    .line 95
    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    .line 96
    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mCameraPageIndicator:Landroid/graphics/drawable/Drawable;

    .line 100
    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    if-eqz v1, :cond_0

    .line 101
    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mUserCustomPageIndicator:Landroid/graphics/drawable/Drawable;

    .line 103
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v1

    const/16 v2, 0x258

    if-lt v1, v2, :cond_1

    .line 104
    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorFocus:Landroid/graphics/drawable/Drawable;

    .line 105
    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mFocusDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    .line 107
    :cond_1
    iput p2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    .line 108
    iput p3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    .line 109
    iput p4, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicator(Landroid/content/res/Resources;)Lcom/android/launcher2/PageIndicator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    .line 114
    instance-of v1, p1, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    .line 117
    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v1, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;-><init>(Lcom/android/launcher2/PageIndicatorManager;Lcom/android/launcher2/PageIndicatorManager$1;)V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    .line 119
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/PageIndicatorManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/PageIndicatorManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/PageIndicatorManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionX:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/PageIndicatorManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionY:F

    return v0
.end method

.method static getPageIndicatorHeight()I
    .locals 1

    .prologue
    .line 437
    sget v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    return v0
.end method

.method private loadPageIfNeeded()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget-boolean v1, v1, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-nez v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 170
    .local v0, p:I
    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->isPageFastMoving()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    :cond_2
    iput v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    .line 172
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    goto :goto_0
.end method

.method private snapToScreen(I)V
    .locals 5
    .parameter "whichScreen"

    .prologue
    const/4 v0, 0x0

    .line 211
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    .line 214
    .local v1, currentPage:I
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 216
    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    .line 220
    .local v0, changingScreens:Z
    :cond_0
    const/4 v2, 0x1

    .line 222
    .local v2, dir:I
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-nez v4, :cond_1

    .line 223
    if-ge p1, v1, :cond_3

    .line 224
    const/4 v2, 0x2

    .line 229
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 230
    .local v3, focusedChild:Landroid/view/View;
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 231
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 233
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4, p1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(II)V

    .line 234
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 235
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 236
    return-void

    .line 225
    .end local v3           #focusedChild:Landroid/view/View;
    :cond_3
    if-le p1, v1, :cond_1

    .line 226
    const/4 v2, 0x3

    goto :goto_0
.end method


# virtual methods
.method public cancelEnterFastScroll()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    .line 362
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelFastScroll()V

    .line 365
    :cond_0
    return-void
.end method

.method protected cancelFastScroll()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->abort()Z

    .line 341
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->exitFastScroll()V

    .line 346
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 347
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 349
    :cond_1
    return-void
.end method

.method protected checkPageIndicatorLongPress(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 284
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->CheckFolderOpen()V

    .line 285
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    :goto_0
    return v0

    .line 287
    :cond_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 288
    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 291
    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 293
    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PageIndicatorManager;->enterFastScoll(FF)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 301
    goto :goto_0
.end method

.method protected checkPageIndicatorTouch(FF)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 241
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v3

    float-to-int v4, p1

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    float-to-int v5, p2

    add-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    .line 245
    .local v0, index:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v1, v1, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_2

    .line 254
    :cond_2
    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v1, v1, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 256
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->startCustomHome(Z)V

    move v1, v2

    .line 257
    goto :goto_0

    .line 261
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/launcher2/PageIndicatorManager;->snapToScreen(I)V

    move v1, v2

    .line 263
    goto :goto_0
.end method

.method drawPageIndicator(Landroid/graphics/Canvas;J)V
    .locals 7
    .parameter "canvas"
    .parameter "currentTime"

    .prologue
    const/4 v6, 0x0

    .line 177
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-nez v3, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 179
    .local v0, currentPage:I
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v3, v3, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    iget-boolean v3, p0, Lcom/android/launcher2/PageIndicatorManager;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    const/16 v4, 0x4e98

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/PagedView;->performHapticFeedback(II)Z

    .line 186
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3, v0, v6, v4}, Lcom/android/launcher2/PageIndicator;->setCurrentPage(IZLcom/android/launcher2/PagedView;)V

    .line 187
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/PageIndicator;->setOffset(II)V

    .line 190
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3, p1, v4, p2, p3}, Lcom/android/launcher2/PageIndicator;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;J)Z

    move-result v2

    .line 192
    .local v2, redraw:Z
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    .line 194
    .local v1, f:F
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/PageIndicator;->setScrollPosition(F)V

    .line 195
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 196
    const/4 v2, 0x1

    .line 197
    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->loadPageIfNeeded()V

    .line 200
    .end local v1           #f:F
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    or-int/2addr v2, v3

    .line 201
    if-eqz v2, :cond_0

    .line 202
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0
.end method

.method public endEditMode()V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method protected enterFastScoll(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 333
    .local v0, i:I
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    .line 334
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator;->enterFastScroll()V

    .line 335
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher2/PageIndicatorManager;->handleMove(FFZ)Z

    .line 336
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0
.end method

.method getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;I)V
    .locals 6
    .parameter "r"
    .parameter "scrollX"

    .prologue
    .line 485
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    mul-int v0, v1, v2

    .line 486
    .local v0, width:I
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v1, v1, Lcom/android/launcher2/PageIndicator;->mGap:I

    sub-int/2addr v0, v1

    .line 487
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v1, v1, Lcom/android/launcher2/PageIndicator;->mLeft:I

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mTop:I

    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v3, v3, Lcom/android/launcher2/PageIndicator;->mLeft:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v4, v4, Lcom/android/launcher2/PageIndicator;->mTop:I

    sget v5, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 488
    return-void
.end method

.method protected getPageIndicator(Landroid/content/res/Resources;)Lcom/android/launcher2/PageIndicator;
    .locals 2
    .parameter "res"

    .prologue
    .line 450
    new-instance v0, Lcom/android/launcher2/PageIndicator;

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-direct {v0, p1, v1}, Lcom/android/launcher2/PageIndicator;-><init>(Landroid/content/res/Resources;I)V

    .line 452
    .local v0, pageIndicator:Lcom/android/launcher2/PageIndicator;
    return-object v0
.end method

.method protected getPageIndicatorArea(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 306
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher2/PageIndicator;->getPageTouchArea(IILcom/android/launcher2/PagedView;)I

    move-result v0

    goto :goto_0
.end method

.method public getPreviewRects()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 389
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 390
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 391
    .local v2, y:F
    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionX:F

    .line 392
    iput v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionY:F

    .line 394
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    :cond_0
    move v3, v4

    .line 416
    :goto_0
    return v3

    .line 396
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    .line 397
    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->checkPageIndicatorTouch(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 403
    :pswitch_1
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/launcher2/PageIndicatorManager;->handleMove(FFZ)Z

    move-result v3

    goto :goto_0

    .line 406
    :pswitch_2
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->scheduleEnterFastScroll()V

    goto :goto_0

    .line 413
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method handleMove(FFZ)Z
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "pan"

    .prologue
    const/4 v3, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    :goto_0
    return v3

    .line 315
    :cond_0
    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    iget v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    int-to-float v2, v2

    sub-float v6, p1, v2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-boolean v2, v2, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    :goto_1
    int-to-float v2, v2

    add-float/2addr v2, v6

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 317
    .local v0, f:F
    if-eqz p3, :cond_2

    .line 318
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 319
    .local v1, start:F
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    .line 326
    .end local v1           #start:F
    :goto_2
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 327
    const/4 v3, 0x1

    goto :goto_0

    .end local v0           #f:F
    :cond_1
    move v2, v3

    .line 315
    goto :goto_1

    .line 321
    .restart local v0       #f:F
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/PageIndicator;->setScrollPosition(F)V

    .line 322
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 323
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 324
    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->loadPageIfNeeded()V

    goto :goto_2
.end method

.method public handleOrientationChange()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PageIndicator;->handleOrientationChange(Landroid/content/res/Resources;)V

    .line 434
    return-void
.end method

.method public hidePageIndicator(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicator;->hide(Z)V

    .line 430
    :cond_0
    return-void
.end method

.method isFastScrolling()Z
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHoveringOnPageIndicator(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v1

    float-to-int v2, p1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v2

    float-to-int v3, p2

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    .line 276
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 277
    const/4 v1, 0x1

    .line 279
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isInPageIndicator(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v0

    float-to-int v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v1

    float-to-int v2, p2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layoutPageIndicator()V
    .locals 7

    .prologue
    .line 131
    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    .line 132
    .local v3, pageCount:I
    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 134
    .local v2, indicatorWidth:I
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    .line 135
    .local v1, indicator:Lcom/android/launcher2/PageIndicator;
    const/4 v0, 0x0

    .line 136
    .local v0, camera_page:I
    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v5, v5, Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_0

    .line 139
    :cond_0
    const/4 v4, 0x0

    .line 140
    .local v4, uchome_page:I
    sget-boolean v5, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v5, v5, Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_1

    .line 141
    const/4 v4, 0x1

    .line 143
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/PageIndicator;->setPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/PageIndicator;->setDefaultPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mCameraPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/PageIndicator;->setCameraPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    sget-boolean v5, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    if-eqz v5, :cond_2

    .line 150
    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mUserCustomPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/PageIndicator;->setUserCustomPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v5

    const/16 v6, 0x258

    if-lt v5, v6, :cond_3

    .line 153
    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorFocus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/PageIndicator;->setFocusPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mFocusDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/PageIndicator;->setFocusDefaultPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_3
    invoke-virtual {v1, v3}, Lcom/android/launcher2/PageIndicator;->setPageCount(I)V

    .line 157
    iget v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    invoke-virtual {v1, v5}, Lcom/android/launcher2/PageIndicator;->setGap(I)V

    .line 159
    add-int v5, v3, v0

    add-int/2addr v5, v4

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    add-int/2addr v6, v2

    mul-int/2addr v6, v5

    if-lez v3, :cond_4

    iget v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    :goto_0
    sub-int v5, v6, v5

    iput v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    .line 161
    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    .line 163
    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 164
    return-void

    .line 159
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onDragEnter(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator$Page;->isDraggedOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PageIndicator$Page;->setDraggedOn(Z)V

    goto :goto_0
.end method

.method public onDragExit(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 471
    :cond_0
    :goto_0
    return v0

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator$Page;->isDraggedOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PageIndicator$Page;->setDraggedOn(Z)V

    goto :goto_0
.end method

.method public onDrop(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v2, v2, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 477
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v2, v2, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/launcher2/PageIndicator$Page;->isDraggedOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v2, v2, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageIndicator$Page;->setDraggedOn(Z)V

    .line 476
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_1
    return v1
.end method

.method scheduleEnterFastScroll()V
    .locals 4

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    .line 370
    return-void
.end method

.method public setGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    .line 127
    return-void
.end method

.method public setTop(I)V
    .locals 0
    .parameter "top"

    .prologue
    .line 122
    iput p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    .line 123
    return-void
.end method

.method public showPageIndicator()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PageIndicatorManager;->showPageIndicator(Z)V

    .line 421
    return-void
.end method

.method public showPageIndicator(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher2/PageIndicator;->show(ZZ)V

    .line 425
    :cond_0
    return-void
.end method

.method public startEditMode()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method
