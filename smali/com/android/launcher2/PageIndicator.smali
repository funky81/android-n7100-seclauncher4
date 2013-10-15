.class public Lcom/android/launcher2/PageIndicator;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PageIndicator$Page;
    }
.end annotation


# static fields
.field protected static final ANIMATION_DURATION:I = 0xc8

.field private static final ANIMATION_STATE_DONE:I = 0x3

.field private static final ANIMATION_STATE_RUNNING:I = 0x2

.field private static final ANIMATION_STATE_STARTING:I = 0x1

.field public static final CAMERA_INDI:I = 0x1

.field protected static final DRAW_STATE_LARGE:I = 0x3

.field protected static final DRAW_STATE_MIDDLE:I = 0x2

.field protected static final DRAW_STATE_NONE:I = 0x0

.field protected static final DRAW_STATE_SMALL:I = 0x1

.field public static final HOME_INDI:I = 0x0

.field public static final INVALID_AREA:I = -0x1

.field public static final LEFT_MORE_AREA:I = -0x2

.field private static final PANEL_TEXT_PAINT:Landroid/graphics/Paint; = null

.field public static final RIGHT_MORE_AREA:I = -0x3

.field public static final SECRET_INDI:I = 0x2

.field public static final UCHOME_INDI:I = 0x3

.field private static final rate:[F


# instance fields
.field protected mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCurrentPage:I

.field protected mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDisplayPageCount:I

.field private mEnableTouch:Z

.field private mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

.field private final mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

.field private mFastScrollNumBgTop:I

.field private mFastScrollPaddingTop:I

.field private mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mFirstTextIndex:I

.field private mFocusPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mGap:I

.field private mGrowBy:F

.field protected mHotseatBarSize:I

.field private mIsDraw:Z

.field private mIsFastScrolling:Z

.field private mIsHiding:Z

.field private mIsVisibleLeftMore:Z

.field private mIsVisibleRightMore:Z

.field protected mIsWorkspaceItem:Z

.field protected mLeft:I

.field private final mMaxVisiblePages:I

.field private mMoreDrawable:Landroid/graphics/drawable/Drawable;

.field private mMoreGap:I

.field protected mPage:[Lcom/android/launcher2/PageIndicator$Page;

.field protected mPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mPageNumberBg:Landroid/graphics/drawable/Drawable;

.field private mPageindicatorPanelTopAdjust:I

.field private mPanelSize:I

.field private mPrePageNumber:I

.field private mScrollBarThumbWidth:I

.field private mScrollBarWidth:I

.field private mScrollPosition:F

.field protected mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mTop:I

.field private mTotalPageCount:I

.field protected mUCHomePage:Lcom/android/launcher2/PageIndicator$Page;

.field protected mUserCustomPageDrawable:Landroid/graphics/drawable/Drawable;

.field private final rect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/PageIndicator;->rate:[F

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    .line 121
    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 123
    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    return-void

    .line 60
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 8
    .parameter "r"
    .parameter "maxVisiblePages"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    .line 70
    iput v6, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    .line 104
    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v1, 0xc8

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/launcher2/ScalarAnimator;-><init>(JFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    .line 108
    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    .line 109
    iput v5, p0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    .line 110
    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    .line 111
    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    .line 113
    const/16 v0, -0x46

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mPageindicatorPanelTopAdjust:I

    .line 391
    iput v6, p0, Lcom/android/launcher2/PageIndicator;->mPrePageNumber:I

    .line 521
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    .line 127
    iput p2, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    .line 129
    iput-boolean v7, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 130
    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    .line 131
    iput-boolean v7, p0, Lcom/android/launcher2/PageIndicator;->mEnableTouch:Z

    .line 133
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lcom/android/launcher2/PageIndicator$Page;

    invoke-direct {v0, p0}, Lcom/android/launcher2/PageIndicator$Page;-><init>(Lcom/android/launcher2/PageIndicator;)V

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mUCHomePage:Lcom/android/launcher2/PageIndicator$Page;

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PageIndicator;->setupDimens(Landroid/content/res/Resources;)V

    .line 137
    return-void
.end method

.method static synthetic access$000()[F
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/launcher2/PageIndicator;->rate:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/PageIndicator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mGrowBy:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/PageIndicator;)Lcom/android/launcher2/ScalarAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/PageIndicator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "context"
    .parameter "canvas"
    .parameter "number"
    .parameter "defaultSurface"
    .parameter "paint"

    .prologue
    .line 395
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 396
    .local v1, width:I
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 397
    .local v0, height:I
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-virtual {p5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {p2, v2, v3, v4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 401
    return-void
.end method

.method private playPageNumber(I)V
    .locals 3
    .parameter "number"

    .prologue
    .line 404
    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mPrePageNumber:I

    if-eq v0, p1, :cond_0

    .line 405
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mPrePageNumber:I

    .line 406
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e005d

    iget v2, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    .line 408
    :cond_0
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;J)Z
    .locals 20
    .parameter "canvas"
    .parameter "pagedView"
    .parameter "currentTime"

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    if-nez v1, :cond_2

    :cond_0
    const/16 v19, 0x0

    .line 388
    :cond_1
    :goto_0
    return v19

    .line 294
    :cond_2
    const/16 v19, 0x0

    .line 295
    .local v19, redraw:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    move/from16 v18, v0

    .line 296
    .local v18, pageCount:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PageIndicator;->mGap:I

    .line 297
    .local v14, gap:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PageIndicator;->mMoreGap:I

    move/from16 v16, v0

    .line 298
    .local v16, moreGap:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 299
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mTop:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/PageIndicator;->mIsVisibleLeftMore:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int v17, v1, v16

    .line 303
    .local v17, move:I
    move/from16 v0, v17

    neg-int v1, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 305
    move/from16 v0, v17

    int-to-float v1, v0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    .end local v17           #move:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/PageIndicator;->mIsVisibleRightMore:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 309
    sub-int v1, v16, v14

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 313
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_9

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 315
    .local v11, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    iput v1, v11, Landroid/graphics/Rect;->right:I

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 324
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v15

    .line 325
    .local v15, modeFactor:F
    const/4 v1, 0x0

    cmpl-float v1, v15, v1

    if-lez v1, :cond_c

    .line 326
    const/high16 v1, 0x437f

    mul-float/2addr v1, v15

    float-to-int v10, v1

    .line 327
    .local v10, alpha:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 330
    sget-object v1, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 333
    const/4 v9, 0x3

    .line 334
    .local v9, a:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v1

    const/16 v2, 0x320

    if-lt v1, v2, :cond_a

    .line 335
    const/4 v1, 0x0

    const/high16 v2, 0x4120

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 339
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 340
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v17, v0

    .line 341
    .restart local v17       #move:I
    move/from16 v0, v17

    int-to-float v1, v0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 343
    move/from16 v0, v17

    neg-int v1, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 345
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v1

    const/16 v2, 0x320

    if-lt v1, v2, :cond_b

    .line 346
    const/4 v1, 0x0

    const/high16 v2, -0x3ee0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 350
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    if-nez v1, :cond_5

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 352
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v12, v1, 0x2

    .line 353
    .local v12, dx:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mPageindicatorPanelTopAdjust:I

    add-int v13, v1, v2

    .line 354
    .local v13, dy:I
    int-to-float v1, v12

    int-to-float v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v4, v1, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    sget-object v6, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/PageIndicator;->drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 357
    neg-int v1, v12

    int-to-float v1, v1

    neg-int v2, v13

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 365
    .end local v9           #a:I
    .end local v10           #alpha:I
    .end local v12           #dx:I
    .end local v13           #dy:I
    .end local v17           #move:I
    :cond_5
    :goto_4
    const/4 v1, 0x0

    cmpl-float v1, v15, v1

    if-nez v1, :cond_6

    .line 366
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PageIndicator;->mGap:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v18

    move-wide/from16 v7, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/PageIndicator;->drawIndicatorDots(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIJ)Z

    move-result v19

    .line 368
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 371
    const/4 v1, 0x0

    cmpl-float v1, v15, v1

    if-lez v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    if-eqz v1, :cond_7

    .line 372
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 373
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v4, v1, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    sget-object v6, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/PageIndicator;->drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 379
    :cond_7
    const/4 v1, 0x0

    cmpl-float v1, v15, v1

    if-lez v1, :cond_8

    const/high16 v1, 0x3f80

    cmpg-float v1, v15, v1

    if-gez v1, :cond_8

    .line 380
    const/16 v19, 0x1

    .line 383
    :cond_8
    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    if-eqz v1, :cond_1

    .line 384
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    .line 385
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 386
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 319
    .end local v11           #bounds:Landroid/graphics/Rect;
    .end local v15           #modeFactor:F
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 320
    .restart local v11       #bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v11, Landroid/graphics/Rect;->right:I

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 337
    .restart local v9       #a:I
    .restart local v10       #alpha:I
    .restart local v15       #modeFactor:F
    :cond_a
    const/4 v1, 0x0

    const/high16 v2, 0x4040

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2

    .line 348
    .restart local v17       #move:I
    :cond_b
    const/4 v1, 0x0

    const/high16 v2, -0x3fc0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3

    .line 362
    .end local v9           #a:I
    .end local v10           #alpha:I
    .end local v17           #move:I
    :cond_c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/PageIndicator;->playPageNumber(I)V

    goto/16 :goto_4
.end method

.method public drawIndicatorDots(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIJ)Z
    .locals 12
    .parameter "canvas"
    .parameter "pagedView"
    .parameter "pageCount"
    .parameter "index"
    .parameter "gap"
    .parameter "currentTime"

    .prologue
    .line 593
    const/4 v11, 0x0

    .line 594
    .local v11, result:Z
    const/4 v2, 0x4

    new-array v9, v2, [Z

    fill-array-data v9, :array_0

    .line 596
    .local v9, indicator:[Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, p3, :cond_1

    .line 657
    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v10

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v8

    .line 658
    .local v8, scale:F
    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v10

    add-int v4, p4, v10

    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    const/high16 v7, 0x3f80

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;IIIFF[Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    const/4 v11, 0x1

    .line 661
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int v2, v2, p5

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 596
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 663
    .end local v8           #scale:F
    :cond_1
    return v11

    .line 594
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method enableLeftMore(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleLeftMore:Z

    .line 412
    return-void
.end method

.method enableRightMore(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleRightMore:Z

    .line 416
    return-void
.end method

.method public enterFastScroll()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    .line 189
    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 190
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 191
    return-void
.end method

.method public exitFastScroll()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 196
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 197
    return-void
.end method

.method public getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method getPageTouchArea(IILcom/android/launcher2/PagedView;)I
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "pagedView"

    .prologue
    .line 523
    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/android/launcher2/PageIndicator;->mEnableTouch:Z

    if-nez v11, :cond_1

    :cond_0
    const/4 v11, -0x1

    .line 571
    :goto_0
    return v11

    .line 524
    :cond_1
    const/4 v1, 0x0

    .line 528
    .local v1, camera_page:I
    const/4 v9, 0x0

    .line 529
    .local v9, uchome_page:I
    sget-boolean v11, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    if-eqz v11, :cond_2

    move-object/from16 v0, p3

    instance-of v11, v0, Lcom/android/launcher2/Workspace;

    if-eqz v11, :cond_2

    .line 530
    const/4 v9, 0x1

    .line 532
    :cond_2
    iget v11, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    add-int/2addr v11, v1

    add-int v7, v11, v9

    .line 534
    .local v7, pageCount:I
    iget v2, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    .line 535
    .local v2, gap:I
    iget v6, p0, Lcom/android/launcher2/PageIndicator;->mMoreGap:I

    .line 536
    .local v6, moreGap:I
    iget v5, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    .line 537
    .local v5, left:I
    div-int/lit8 v8, v2, 0x2

    .line 539
    .local v8, touchArea:I
    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 540
    .local v10, width:I
    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 542
    .local v3, height:I
    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    add-int/lit8 v12, v12, -0xa

    iput v12, v11, Landroid/graphics/Rect;->top:I

    .line 543
    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    add-int/2addr v12, v3

    add-int/lit8 v12, v12, 0x8

    add-int/lit8 v12, v12, 0xa

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 545
    iget-boolean v11, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleLeftMore:Z

    if-eqz v11, :cond_3

    .line 546
    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    sub-int v12, v5, v12

    sub-int/2addr v12, v6

    sub-int/2addr v12, v8

    iput v12, v11, Landroid/graphics/Rect;->left:I

    .line 547
    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iput v5, v11, Landroid/graphics/Rect;->right:I

    .line 549
    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    move/from16 v0, p2

    invoke-virtual {v11, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 550
    const/4 v11, -0x2

    goto :goto_0

    .line 554
    :cond_3
    iget-boolean v11, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleRightMore:Z

    if-eqz v11, :cond_4

    .line 555
    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    mul-int/2addr v12, v10

    add-int/2addr v12, v5

    iget v13, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    add-int/lit8 v13, v13, -0x2

    mul-int/2addr v13, v2

    add-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->left:I

    .line 556
    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v13, p0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v8

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 557
    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    move/from16 v0, p2

    invoke-virtual {v11, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 558
    const/4 v11, -0x3

    goto/16 :goto_0

    .line 562
    :cond_4
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_6

    .line 564
    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    add-int v12, v10, v2

    mul-int/2addr v12, v4

    add-int/2addr v12, v5

    sub-int/2addr v12, v8

    iput v12, v11, Landroid/graphics/Rect;->left:I

    .line 565
    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v10

    mul-int/lit8 v13, v8, 0x2

    add-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 567
    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    move/from16 v0, p2

    invoke-virtual {v11, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 568
    iget v11, p0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    add-int/2addr v11, v4

    goto/16 :goto_0

    .line 562
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 571
    :cond_6
    const/4 v11, -0x1

    goto/16 :goto_0
.end method

.method public getPreviewRects()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleOrientationChange(Landroid/content/res/Resources;)V
    .locals 0
    .parameter "res"

    .prologue
    .line 807
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PageIndicator;->setupDimens(Landroid/content/res/Resources;)V

    .line 808
    return-void
.end method

.method public hide(Z)V
    .locals 4
    .parameter "animated"

    .prologue
    .line 283
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    .line 284
    .local v1, pageCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    .line 286
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/launcher2/PageIndicator$Page;->endAnimation()V

    .line 284
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    .line 289
    return-void
.end method

.method public isFastScrolling()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    return v0
.end method

.method public setCameraPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 224
    return-void
.end method

.method setCurrentPage(IZLcom/android/launcher2/PagedView;)V
    .locals 6
    .parameter "current"
    .parameter "useLargeDrawablesOnly"
    .parameter "pagedView"

    .prologue
    const/4 v5, 0x3

    .line 465
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    .line 466
    iget-boolean v3, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    if-eqz v3, :cond_1

    .line 515
    :cond_0
    return-void

    .line 467
    :cond_1
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    .line 470
    .local v1, pageCount:I
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    if-ne v3, v1, :cond_2

    .line 471
    const/4 v2, 0x0

    .line 497
    .local v2, startIdx:I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PageIndicator;->setFirstTextNum(I)V

    .line 498
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 499
    add-int v3, v0, v2

    if-ne v3, p1, :cond_6

    .line 500
    if-eqz p2, :cond_5

    .line 501
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    .line 498
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 473
    .end local v0           #i:I
    .end local v2           #startIdx:I
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v4, v4, 0x2

    if-gt v3, v4, :cond_3

    .line 474
    const/4 v2, 0x0

    .restart local v2       #startIdx:I
    goto :goto_0

    .line 475
    .end local v2           #startIdx:I
    :cond_3
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    if-ge v3, v4, :cond_4

    .line 490
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .restart local v2       #startIdx:I
    goto :goto_0

    .line 493
    .end local v2           #startIdx:I
    :cond_4
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    sub-int v2, v3, v4

    .restart local v2       #startIdx:I
    goto :goto_0

    .line 507
    .restart local v0       #i:I
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    goto :goto_2

    .line 512
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    goto :goto_2
.end method

.method public setDefaultPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 219
    return-void
.end method

.method setFirstTextNum(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 518
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    .line 519
    return-void
.end method

.method public setFocusDefaultPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 242
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    .line 243
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 244
    :cond_0
    return-void
.end method

.method public setFocusPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 236
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    .line 237
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 239
    :cond_0
    return-void
.end method

.method setGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 419
    invoke-virtual {p0, p1, p1}, Lcom/android/launcher2/PageIndicator;->setGap(II)V

    .line 420
    return-void
.end method

.method setGap(II)V
    .locals 0
    .parameter "gap"
    .parameter "moregap"

    .prologue
    .line 423
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    .line 424
    iput p2, p0, Lcom/android/launcher2/PageIndicator;->mMoreGap:I

    .line 425
    return-void
.end method

.method public setMoreDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    .line 266
    return-void
.end method

.method setOffset(II)V
    .locals 2
    .parameter "left"
    .parameter "top"

    .prologue
    .line 428
    iput p2, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    .line 429
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    .line 431
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    .line 432
    :cond_0
    return-void
.end method

.method setPageCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 435
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    .line 444
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    if-le p1, v1, :cond_0

    .line 445
    iget p1, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    .line 449
    :cond_0
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-eq v1, p1, :cond_1

    .line 450
    new-array v1, p1, [Lcom/android/launcher2/PageIndicator$Page;

    iput-object v1, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    .line 451
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    new-instance v2, Lcom/android/launcher2/PageIndicator$Page;

    invoke-direct {v2, p0}, Lcom/android/launcher2/PageIndicator$Page;-><init>(Lcom/android/launcher2/PageIndicator;)V

    aput-object v2, v1, v0

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    .end local v0           #i:I
    :cond_1
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    .line 457
    return-void
.end method

.method public setPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 214
    return-void
.end method

.method public setScrollPosition(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 208
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    .line 209
    return-void
.end method

.method public setSecretPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 229
    return-void
.end method

.method public setUserCustomPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mUserCustomPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 233
    return-void
.end method

.method public setupDimens(Landroid/content/res/Resources;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 148
    const v0, 0x7f020041

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 149
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseDisableTranslucencyFeature:Z

    if-eqz v0, :cond_2

    .line 150
    const v0, 0x7f0200c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    :goto_0
    const v0, 0x7f0200c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    .line 156
    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const v1, 0x7f0c005a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    const v0, 0x7f0c0059

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mGrowBy:F

    .line 162
    const v0, 0x7f0c005b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    .line 163
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    iget v2, p0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    const v0, 0x7f0c000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    .line 167
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    const v0, 0x7f0c005c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    .line 173
    :goto_1
    const v0, 0x7f0c005d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mPageindicatorPanelTopAdjust:I

    .line 174
    const v0, 0x7f0c0026

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    .line 177
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v0, :cond_1

    .line 178
    const v0, 0x7f0c006c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    .line 179
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 180
    :cond_0
    iput v3, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    .line 185
    :cond_1
    :goto_2
    return-void

    .line 152
    :cond_2
    const v0, 0x7f020040

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 170
    :cond_3
    iput v3, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    goto :goto_1

    .line 181
    :cond_4
    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    if-lez v0, :cond_1

    .line 182
    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    goto :goto_2
.end method

.method public show()V
    .locals 2

    .prologue
    .line 273
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PageIndicator;->show(ZZ)V

    .line 274
    return-void
.end method

.method public show(ZZ)V
    .locals 1
    .parameter "forced"
    .parameter "animated"

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    goto :goto_0
.end method

.method public updatePositions()V
    .locals 11

    .prologue
    .line 247
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 248
    .local v2, pageDrawableWidth:I
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    .line 249
    .local v1, pageCount:I
    const/4 v0, 0x0

    .line 250
    .local v0, left:I
    iget v7, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/2addr v7, v2

    mul-int v3, v7, v1

    .line 251
    .local v3, right:I
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v0, v8, v3, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 254
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 255
    .local v5, thumbRight:I
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 256
    .local v4, thumbHeight:I
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    add-int v6, v7, v8

    .line 257
    .local v6, top:I
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    add-int v8, v6, v4

    invoke-virtual {v7, v0, v6, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 260
    sub-int v7, v3, v0

    iput v7, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    .line 261
    sub-int v7, v5, v0

    iput v7, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    .line 262
    return-void
.end method
