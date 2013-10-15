.class public Lcom/android/launcher2/PagePreviewIndicator;
.super Lcom/android/launcher2/PageIndicator;
.source "PagePreviewIndicator.java"


# static fields
.field static mTestPaint:Landroid/graphics/Paint;


# instance fields
.field private mDragItem:Lcom/android/launcher2/BaseItem;

.field private final mDragMode:Lcom/android/launcher2/ScalarAnimator;

.field private mFromRects:[Landroid/graphics/Rect;

.field private mIsSecretMode:Z

.field private mItemOutlineNormalBlock:Landroid/graphics/drawable/Drawable;

.field private mItemOutlineNormalO:Landroid/graphics/drawable/Drawable;

.field private mItemOutlineSelectedBlock:Landroid/graphics/drawable/Drawable;

.field private mItemOutlineSelectedO:Landroid/graphics/drawable/Drawable;

.field mLauncher:Lcom/android/launcher2/Launcher;

.field mNewPage:Lcom/android/launcher2/PageIndicator$Page;

.field protected final mNewPageSelectedAnimator:Lcom/android/launcher2/ScalarAnimator;

.field private mNormalPreviewHeight:I

.field private mNormalPreviewWidth:I

.field private mPgIndContentGap:I

.field private mPgIndContentPadding:I

.field private mPgIndPanel_AdjustTop:I

.field private mPreviewGapWidth:I

.field private mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreviewRects:[Landroid/graphics/Rect;

.field private mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedPreviewHeight:I

.field private mSelectedPreviewWidth:I

.field private mToRects:[Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/PagePreviewIndicator;->mTestPaint:Landroid/graphics/Paint;

    .line 72
    sget-object v0, Lcom/android/launcher2/PagePreviewIndicator;->mTestPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    sget-object v0, Lcom/android/launcher2/PagePreviewIndicator;->mTestPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 7
    .parameter "r"
    .parameter "maxVisiblePages"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PageIndicator;-><init>(Landroid/content/res/Resources;I)V

    .line 57
    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v3, 0xe6

    invoke-direct {v2, v3, v4, v5}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    .line 63
    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v3, 0xc8

    invoke-direct {v2, v3, v4, v5}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPageSelectedAnimator:Lcom/android/launcher2/ScalarAnimator;

    .line 65
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mIsSecretMode:Z

    .line 66
    iput-object v6, p0, Lcom/android/launcher2/PagePreviewIndicator;->mDragItem:Lcom/android/launcher2/BaseItem;

    .line 68
    iput-object v6, p0, Lcom/android/launcher2/PagePreviewIndicator;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 77
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v1

    .line 84
    .local v1, maxPageCount:I
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    if-eqz v2, :cond_0

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 87
    :cond_0
    new-array v2, v1, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    .line 88
    new-array v2, v1, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    .line 89
    new-array v2, v1, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 91
    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v0

    .line 92
    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v0

    .line 93
    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    new-instance v2, Lcom/android/launcher2/PageIndicator$Page;

    invoke-direct {v2, p0}, Lcom/android/launcher2/PageIndicator$Page;-><init>(Lcom/android/launcher2/PageIndicator;)V

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPage:Lcom/android/launcher2/PageIndicator$Page;

    .line 96
    return-void
.end method

.method private adjustScaleForDrag(FIF)F
    .locals 2
    .parameter "scale"
    .parameter "index"
    .parameter "scaleFactor"

    .prologue
    .line 513
    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    .line 515
    .local v0, revisedCurrentPage:I
    if-ne p2, v0, :cond_1

    .line 516
    const/high16 v1, 0x3f80

    sub-float p1, v1, p3

    .line 521
    :cond_0
    :goto_0
    return p1

    .line 517
    :cond_1
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-ne p2, v1, :cond_0

    .line 518
    move p1, p3

    goto :goto_0
.end method

.method private getPreviewPageWidth(F)I
    .locals 3
    .parameter "scale"

    .prologue
    .line 500
    iget v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewWidth:I

    int-to-float v2, v2

    invoke-static {v1, v2, p1}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v1

    float-to-int v0, v1

    .line 502
    .local v0, pageWidth:I
    return v0
.end method


# virtual methods
.method animateDragMode(F)V
    .locals 1
    .parameter "to"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 460
    return-void
.end method

.method draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "pagedView"
    .parameter "currentTime"

    .prologue
    .line 276
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/launcher2/PagePreviewIndicator;->setupIndicatorPreviews(Lcom/android/launcher2/PagedView;J)V

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher2/PageIndicator;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;J)Z

    move-result v0

    return v0
.end method

.method public drawIndicatorDots(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIJ)Z
    .locals 21
    .parameter "canvas"
    .parameter "pagedView"
    .parameter "pageCount"
    .parameter "index"
    .parameter "gap"
    .parameter "currentTime"

    .prologue
    .line 282
    const/16 v19, 0x0

    .line 283
    .local v19, result:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v6

    .line 284
    .local v6, factor:F
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 286
    .local v5, cRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v16

    .line 289
    .local v16, homeScreenIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 290
    const/16 v17, -0x1

    .line 291
    .local v17, idx:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_6

    .line 292
    add-int/lit8 v17, v17, 0x1

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    array-length v2, v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_0

    .line 291
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 294
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    aget-object v15, v2, v17

    .line 295
    .local v15, fRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v20, v2, v17

    .line 297
    .local v20, tRect:Landroid/graphics/Rect;
    iget v2, v15, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->left:I

    .line 298
    iget v2, v15, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 299
    iget v2, v15, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    .line 300
    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 302
    iget v2, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v5, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    .line 304
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/PagePreviewIndicator;->drawPagePreview(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLcom/android/launcher2/PagedView;)Z

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 308
    .end local v4           #i:I
    .end local v15           #fRect:Landroid/graphics/Rect;
    .end local v17           #idx:I
    .end local v20           #tRect:Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x4

    new-array v14, v2, [Z

    fill-array-data v14, :array_0

    .line 309
    .local v14, indicator:[Z
    const/16 v18, 0x0

    .line 330
    .local v18, offset:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    move/from16 v0, p3

    if-ge v4, v0, :cond_5

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-lt v4, v2, :cond_2

    .line 330
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 332
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    add-int v3, v4, v18

    aget-object v15, v2, v3

    .line 333
    .restart local v15       #fRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    add-int v3, v4, v18

    aget-object v20, v2, v3

    .line 334
    .restart local v20       #tRect:Landroid/graphics/Rect;
    iget v2, v15, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->left:I

    .line 335
    iget v2, v15, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 336
    iget v2, v15, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    .line 337
    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 339
    iget v2, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v5, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 340
    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    const/high16 v7, 0x40a0

    mul-float/2addr v3, v7

    sub-float v12, v2, v3

    .line 341
    .local v12, alpha:F
    const/4 v2, 0x0

    invoke-static {v2, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 343
    const/4 v3, 0x0

    move/from16 v0, v16

    if-ne v0, v4, :cond_4

    const/4 v2, 0x1

    :goto_4
    aput-boolean v2, v14, v3

    .line 344
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v3, v14, v2

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v7, v2, v4

    add-int v9, p4, v4

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v4

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v13

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;IIIFF[Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    const/16 v19, 0x1

    .line 354
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3

    .line 343
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 357
    .end local v12           #alpha:F
    .end local v15           #fRect:Landroid/graphics/Rect;
    .end local v20           #tRect:Landroid/graphics/Rect;
    :cond_5
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    if-eqz v2, :cond_6

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    aget-object v15, v2, p3

    .line 359
    .restart local v15       #fRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v20, v2, p3

    .line 360
    .restart local v20       #tRect:Landroid/graphics/Rect;
    iget v2, v15, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->left:I

    .line 361
    iget v2, v15, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 362
    iget v2, v15, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    .line 363
    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 365
    iget v2, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v5, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 366
    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    const/high16 v7, 0x40a0

    mul-float/2addr v3, v7

    sub-float v12, v2, v3

    .line 367
    .restart local v12       #alpha:F
    const/4 v2, 0x0

    invoke-static {v2, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 368
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v14, v2

    .line 369
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v3, v14, v2

    .line 370
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-boolean v3, v14, v2

    .line 371
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v14, v2

    .line 372
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/PageIndicator;->mUCHomePage:Lcom/android/launcher2/PageIndicator$Page;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mUserCustomPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mUserCustomPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mUCHomePage:Lcom/android/launcher2/PageIndicator$Page;

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v13

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;IIIFF[Z)Z

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mUCHomePage:Lcom/android/launcher2/PageIndicator$Page;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 378
    .end local v12           #alpha:F
    .end local v14           #indicator:[Z
    .end local v15           #fRect:Landroid/graphics/Rect;
    .end local v18           #offset:I
    .end local v20           #tRect:Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPageSelectedAnimator:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x1

    :goto_5
    or-int v19, v19, v2

    .line 379
    return v19

    .line 378
    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 308
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public drawPagePreview(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLcom/android/launcher2/PagedView;)Z
    .locals 16
    .parameter "canvas"
    .parameter "index"
    .parameter "r"
    .parameter "alpha"
    .parameter "pagedView"

    .prologue
    .line 142
    const/4 v15, 0x0

    .line 145
    .local v15, result:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 146
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    .local v10, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentGap:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentGap:I

    sub-int/2addr v5, v8

    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    const/high16 v2, 0x437f

    mul-float v2, v2, p4

    float-to-int v2, v2

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 156
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    const/4 v2, 0x0

    const v3, 0x3f333333

    sub-float v3, p4, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 159
    .local v6, contentAlpha:F
    const v2, 0x3e99999a

    div-float/2addr v6, v2

    .line 160
    const/4 v9, 0x0

    .line 161
    .local v9, dragDelta:Lcom/android/launcher2/PositionDelta;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    move/from16 v0, p2

    if-ge v0, v2, :cond_4

    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v2, :cond_4

    .line 162
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v2}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v7

    .line 163
    .local v7, deltas:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 164
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #deltas:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .restart local v7       #deltas:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2, v7}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getDeltas(Ljava/util/List;)V

    .line 170
    :goto_1
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    check-cast v2, Lcom/android/launcher2/CellPositionerWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/CellPositionerWorkspace;->getDragDelta()Lcom/android/launcher2/PositionDelta;

    move-result-object v9

    .line 171
    if-eqz v9, :cond_8

    .line 172
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/PositionDelta;

    .line 173
    .local v11, de:Lcom/android/launcher2/PositionDelta;
    iget-object v2, v11, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    iget-object v3, v9, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    if-ne v2, v3, :cond_0

    .line 174
    invoke-interface {v7, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    .end local v11           #de:Lcom/android/launcher2/PositionDelta;
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentResizeWidgetItem()Lcom/android/launcher2/BaseItem;

    move-result-object v14

    .line 180
    .local v14, resizeWidgetItem:Lcom/android/launcher2/BaseItem;
    if-nez v14, :cond_2

    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    iget-boolean v2, v2, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v2, :cond_3

    .line 181
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v7, v2, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 191
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #resizeWidgetItem:Lcom/android/launcher2/BaseItem;
    :cond_3
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/PagePreviewIndicator;->drawPreviewContent(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLjava/util/List;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/PositionDelta;)V

    .line 194
    .end local v7           #deltas:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    :cond_4
    return v15

    .line 148
    .end local v6           #contentAlpha:F
    .end local v9           #dragDelta:Lcom/android/launcher2/PositionDelta;
    .end local v10           #d:Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->isPageAddedForDrag(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 149
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v10       #d:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 151
    .end local v10           #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v10       #d:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 168
    .restart local v6       #contentAlpha:F
    .restart local v7       #deltas:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    .restart local v9       #dragDelta:Lcom/android/launcher2/PositionDelta;
    :cond_7
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v7           #deltas:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    .local v12, deltas:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    move-object v7, v12

    .end local v12           #deltas:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    .restart local v7       #deltas:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    goto :goto_1

    .line 184
    :cond_8
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 185
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentResizeWidgetItem()Lcom/android/launcher2/BaseItem;

    move-result-object v14

    .line 186
    .restart local v14       #resizeWidgetItem:Lcom/android/launcher2/BaseItem;
    if-eqz v14, :cond_3

    .line 187
    const/4 v2, 0x0

    new-instance v3, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v3, v14}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/BaseItem;)V

    invoke-interface {v7, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public drawPreviewContent(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLjava/util/List;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/PositionDelta;)V
    .locals 22
    .parameter "canvas"
    .parameter "index"
    .parameter "r"
    .parameter "alpha"
    .parameter
    .parameter "launcher"
    .parameter "dragDelta"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "I",
            "Landroid/graphics/Rect;",
            "F",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;",
            "Lcom/android/launcher2/Launcher;",
            "Lcom/android/launcher2/PositionDelta;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    .local p5, deltas:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v6, v20, p2

    .line 200
    .local v6, fullRect:Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v17, v20, v21

    .line 202
    .local v17, sizeRatio:F
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v12, v20, v21

    .line 203
    .local v12, maxHeight:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v13, v20, v21

    .line 204
    .local v13, maxWidth:I
    int-to-float v0, v12

    move/from16 v20, v0

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v12, v0

    .line 205
    int-to-float v0, v13

    move/from16 v20, v0

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v13, v0

    .line 206
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v20

    div-int v15, v12, v20

    .line 207
    .local v15, rowHeight:I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v20

    div-int v16, v13, v20

    .line 209
    .local v16, rowWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 210
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 211
    const/4 v11, 0x0

    .line 212
    .local v11, left:I
    const/16 v18, 0x0

    .line 213
    .local v18, top:I
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getCurrentResizeWidgetItem()Lcom/android/launcher2/BaseItem;

    move-result-object v14

    .line 214
    .local v14, resizeWidgetItem:Lcom/android/launcher2/BaseItem;
    const/4 v10, 0x0

    .line 215
    .local v10, isSelected:Z
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getCurrentDragItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    .line 216
    .local v4, draggedItem:Lcom/android/launcher2/BaseItem;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PositionDelta;

    .line 217
    .local v3, delta:Lcom/android/launcher2/PositionDelta;
    if-nez p7, :cond_1

    iget-object v0, v3, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v4, v0, :cond_0

    .line 218
    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v11

    .line 219
    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v18

    .line 220
    mul-int v11, v11, v16

    .line 221
    mul-int v18, v18, v15

    .line 223
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentGap:I

    .line 224
    .local v7, gap:I
    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v20

    mul-int v20, v20, v15

    sub-int v8, v20, v7

    .line 225
    .local v8, height:I
    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v20

    mul-int v20, v20, v16

    sub-int v19, v20, v7

    .line 227
    .local v19, width:I
    if-eqz p7, :cond_2

    iget-object v0, v3, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    move-object/from16 v20, v0

    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, v3, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v14, :cond_4

    :cond_3
    const/4 v10, 0x1

    .line 228
    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v20

    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/launcher2/PagePreviewIndicator;->getOutlineForItem(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 229
    .local v5, drawable:Landroid/graphics/drawable/Drawable;
    const/high16 v20, 0x437f

    mul-float v20, v20, p4

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 230
    add-int v20, v11, v19

    add-int v21, v18, v8

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v5, v11, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 231
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 232
    const/4 v10, 0x0

    .line 233
    goto/16 :goto_0

    .line 227
    .end local v5           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 234
    .end local v3           #delta:Lcom/android/launcher2/PositionDelta;
    .end local v7           #gap:I
    .end local v8           #height:I
    .end local v19           #width:I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 236
    return-void
.end method

.method public getDragModeFactor()F
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v0

    return v0
.end method

.method public getItemSpan(Lcom/android/launcher2/BaseItem;[I)V
    .locals 4
    .parameter "item"
    .parameter "span"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 244
    instance-of v1, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 245
    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 246
    .local v0, homeItem:Lcom/android/launcher2/HomeItem;
    iget v1, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    aput v1, p2, v3

    .line 247
    iget v1, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    aput v1, p2, v2

    .line 254
    .end local v0           #homeItem:Lcom/android/launcher2/HomeItem;
    :goto_0
    return-void

    .line 248
    :cond_0
    instance-of v1, p1, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_1

    .line 249
    aput v2, p2, v3

    .line 250
    aput v2, p2, v2

    goto :goto_0

    .line 252
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Encounted item in paged indicator preview that we werent expecting!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getOutlineForItem(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "spanX"
    .parameter "spanY"
    .parameter "isSelected"

    .prologue
    const/4 v1, 0x1

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-ne p1, v1, :cond_1

    if-ne p2, v1, :cond_1

    .line 265
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineSelectedO:Landroid/graphics/drawable/Drawable;

    .line 269
    :goto_0
    return-object v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineNormalO:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 267
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineSelectedBlock:Landroid/graphics/drawable/Drawable;

    :goto_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineNormalBlock:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public getPreviewPageHeight(F)I
    .locals 3
    .parameter "scale"

    .prologue
    .line 487
    iget v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2, p1}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v1

    float-to-int v0, v1

    .line 489
    .local v0, pageHeight:I
    return v0
.end method

.method public getPreviewRects()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public setupDimens(Landroid/content/res/Resources;)V
    .locals 4
    .parameter "res"

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/android/launcher2/PageIndicator;->setupDimens(Landroid/content/res/Resources;)V

    .line 101
    const v0, 0x7f020055

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    const v0, 0x7f02004d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    const v0, 0x7f02004e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    const v0, 0x7f02004c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    const v0, 0x7f020051

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineNormalO:Landroid/graphics/drawable/Drawable;

    .line 106
    const v0, 0x7f020052

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineSelectedO:Landroid/graphics/drawable/Drawable;

    .line 107
    const v0, 0x7f020053

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineNormalBlock:Landroid/graphics/drawable/Drawable;

    .line 108
    const v0, 0x7f020054

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineSelectedBlock:Landroid/graphics/drawable/Drawable;

    .line 110
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    const v0, 0x7f0c00ec

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewHeight:I

    .line 116
    const v0, 0x7f0c00ed

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewWidth:I

    .line 117
    const v0, 0x7f0c00ee

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewHeight:I

    .line 118
    const v0, 0x7f0c00ef

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewWidth:I

    .line 119
    const v0, 0x7f0c00f0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewGapWidth:I

    .line 120
    const v0, 0x7f0c00f1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentGap:I

    .line 121
    const v0, 0x7f0c00f2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    .line 122
    const v0, 0x7f0c005e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    .line 123
    return-void
.end method

.method setupIndicatorPreviews(Lcom/android/launcher2/PagedView;J)V
    .locals 16
    .parameter "pagedView"
    .parameter "currentTime"

    .prologue
    .line 396
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 397
    .local v6, pageCount:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mLauncher:Lcom/android/launcher2/Launcher;

    if-nez v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 398
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewWidth:I

    mul-int/2addr v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewWidth:I

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    add-int/lit8 v14, v6, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewGapWidth:I

    mul-int/2addr v14, v15

    add-int v11, v13, v14

    .line 399
    .local v11, previewWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v13, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getCurrentDragItem()Lcom/android/launcher2/BaseItem;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragItem:Lcom/android/launcher2/BaseItem;

    .line 400
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v14

    sub-int/2addr v14, v11

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    sub-int v10, v13, v14

    .line 401
    .local v10, previewLeft:I
    const/4 v4, 0x0

    .line 402
    .local v4, left:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    sub-int v2, v13, v10

    .line 403
    .local v2, deltaX:I
    const/4 v12, 0x0

    .line 405
    .local v12, width:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPageSelectedAnimator:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v13}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v5

    .line 406
    .local v5, newPageScaleFactor:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    array-length v13, v13

    if-ge v3, v13, :cond_3

    .line 407
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v3

    neg-int v14, v2

    add-int/2addr v14, v4

    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 408
    const/4 v8, 0x0

    .line 409
    .local v8, pageScale:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-ge v3, v13, :cond_2

    .line 410
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v13, v13, v3

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v8

    .line 415
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v5}, Lcom/android/launcher2/PagePreviewIndicator;->adjustScaleForDrag(FIF)F

    move-result v8

    .line 417
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/PagePreviewIndicator;->getPreviewPageHeight(F)I

    move-result v7

    .line 418
    .local v7, pageHeight:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/launcher2/PagePreviewIndicator;->getPreviewPageWidth(F)I

    move-result v9

    .line 420
    .local v9, pageWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v3

    div-int/lit8 v14, v7, 0x2

    neg-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    add-int/2addr v14, v15

    iput v14, v13, Landroid/graphics/Rect;->top:I

    .line 421
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v3

    div-int/lit8 v14, v7, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    add-int/2addr v14, v15

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 422
    move v12, v9

    .line 424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v3

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v12

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 425
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewGapWidth:I

    add-int/2addr v13, v12

    add-int/2addr v4, v13

    .line 406
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 411
    .end local v7           #pageHeight:I
    .end local v9           #pageWidth:I
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-ne v3, v13, :cond_1

    .line 412
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPage:Lcom/android/launcher2/PageIndicator$Page;

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v8

    goto :goto_1

    .line 428
    .end local v8           #pageScale:F
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v13

    sub-int v4, v10, v13

    .line 429
    const/4 v12, 0x0

    .line 430
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    array-length v13, v13

    if-ge v3, v13, :cond_6

    .line 431
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v3

    iput v4, v13, Landroid/graphics/Rect;->left:I

    .line 432
    const/4 v8, 0x0

    .line 434
    .restart local v8       #pageScale:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-ge v3, v13, :cond_5

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v13, v13, v3

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v8

    .line 440
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v5}, Lcom/android/launcher2/PagePreviewIndicator;->adjustScaleForDrag(FIF)F

    move-result v8

    .line 442
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/PagePreviewIndicator;->getPreviewPageHeight(F)I

    move-result v7

    .line 443
    .restart local v7       #pageHeight:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/launcher2/PagePreviewIndicator;->getPreviewPageWidth(F)I

    move-result v9

    .line 445
    .restart local v9       #pageWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PageIndicator;->mTop:I

    div-int/lit8 v15, v7, 0x2

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    add-int/2addr v14, v15

    iput v14, v13, Landroid/graphics/Rect;->top:I

    .line 446
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PageIndicator;->mTop:I

    div-int/lit8 v15, v7, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    add-int/2addr v14, v15

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 447
    move v12, v9

    .line 449
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v3

    add-int v14, v4, v12

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 450
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewGapWidth:I

    add-int/2addr v13, v12

    add-int/2addr v4, v13

    .line 430
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 436
    .end local v7           #pageHeight:I
    .end local v9           #pageWidth:I
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-ne v3, v13, :cond_4

    .line 437
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPage:Lcom/android/launcher2/PageIndicator$Page;

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v8

    goto :goto_3

    .line 452
    .end local v8           #pageScale:F
    :cond_6
    return-void
.end method

.method public updatePositions()V
    .locals 6

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 128
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 129
    .local v3, pageDrawableWidth:I
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 130
    .local v2, pageDrawableHeight:I
    const/4 v1, 0x0

    .line 132
    .local v1, left:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 133
    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 134
    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 135
    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    add-int v5, v1, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 136
    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 137
    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method
