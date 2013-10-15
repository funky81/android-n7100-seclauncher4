.class Lcom/android/launcher2/FolderIconHelper$AppIconData;
.super Ljava/lang/Object;
.source "FolderIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FolderIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppIconData"
.end annotation


# instance fields
.field private APP_ICON_CALIGN:F

.field private APP_ICON_RALIGN:F

.field public APP_ICON_SCALE_FACTOR:F

.field public APP_ICON_SIZE:I

.field public EMPTY_BITMAP:Landroid/graphics/Bitmap;

.field private FOLDER_ICON_RECT:Landroid/graphics/Rect;

.field public NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

.field public OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

.field public OPEN_FOLDER_BITMAP_HIGHLIGHT:Landroid/graphics/Bitmap;

.field public mIconMenuPositions:[[[F

.field public mIconPositions:[[[F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6
    .parameter "r"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    .line 310
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    .line 312
    iput v2, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_CALIGN:F

    .line 313
    iput v2, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_RALIGN:F

    .line 315
    const v1, 0x7f020098

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 316
    .local v0, d:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    .line 318
    const v1, 0x7f020097

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 319
    .restart local v0       #d:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT:Landroid/graphics/Bitmap;

    .line 321
    const v1, 0x7f020096

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 322
    .restart local v0       #d:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    .line 324
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->EMPTY_BITMAP:Landroid/graphics/Bitmap;

    .line 326
    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 329
    const v1, 0x7f0b0008

    invoke-virtual {p1, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    .line 331
    const v1, 0x7f0c003e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SIZE:I

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getAppIconPositions(Landroid/content/res/Resources;)[[[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mIconPositions:[[[F

    .line 336
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getAppMenuIconPositions(Landroid/content/res/Resources;)[[[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mIconMenuPositions:[[[F

    .line 338
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/FolderIconHelper$AppIconData;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getIconCordFromRes(Landroid/content/res/Resources;I)F
    .locals 3
    .parameter "r"
    .parameter "resID"

    .prologue
    .line 533
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v1, v2

    .line 534
    .local v1, value:F
    const v2, 0x7f0c0027

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v0, v2

    .line 535
    .local v0, right_gap:F
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->resolveValue(FF)F

    move-result v1

    .line 536
    return v1
.end method

.method private resolveValue(FF)F
    .locals 3
    .parameter "value"
    .parameter "rightgap"

    .prologue
    const/4 v1, 0x1

    .line 547
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->access$100()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 548
    iget v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_CALIGN:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SIZE:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_CALIGN:F

    .line 553
    :cond_0
    iget p1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_CALIGN:F

    .line 563
    :cond_1
    :goto_0
    return p1

    .line 554
    :cond_2
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->access$200()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 555
    iget v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_RALIGN:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 557
    iget-object v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SIZE:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_RALIGN:F

    .line 560
    :cond_3
    iget v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_RALIGN:F

    sub-float p1, v0, p2

    goto :goto_0
.end method


# virtual methods
.method public getAppIconPositions(Landroid/content/res/Resources;)[[[F
    .locals 65
    .parameter "r"

    .prologue
    .line 446
    const v60, 0x7f0c00c7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v3

    .line 447
    .local v3, c1p1X:F
    const v60, 0x7f0c00c8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v4

    .line 450
    .local v4, c1p1Y:F
    const v60, 0x7f0c00c9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v5

    .line 451
    .local v5, c2p1X:F
    const v60, 0x7f0c00ca

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v6

    .line 452
    .local v6, c2p1Y:F
    const v60, 0x7f0c00cb

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v7

    .line 453
    .local v7, c2p2X:F
    const v60, 0x7f0c00cc

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v8

    .line 456
    .local v8, c2p2Y:F
    const v60, 0x7f0c00cd

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v9

    .line 457
    .local v9, c3p1X:F
    const v60, 0x7f0c00ce

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v10

    .line 458
    .local v10, c3p1Y:F
    const v60, 0x7f0c00cf

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v11

    .line 459
    .local v11, c3p2X:F
    const v60, 0x7f0c00d0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v12

    .line 460
    .local v12, c3p2Y:F
    const v60, 0x7f0c00d1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v13

    .line 461
    .local v13, c3p3X:F
    const v60, 0x7f0c00d2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v14

    .line 464
    .local v14, c3p3Y:F
    const v60, 0x7f0c00d3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v15

    .line 465
    .local v15, c4p1X:F
    const v60, 0x7f0c00d4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v16

    .line 466
    .local v16, c4p1Y:F
    const v60, 0x7f0c00d5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v17

    .line 467
    .local v17, c4p2X:F
    const v60, 0x7f0c00d6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v18

    .line 468
    .local v18, c4p2Y:F
    const v60, 0x7f0c00d7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v19

    .line 469
    .local v19, c4p3X:F
    const v60, 0x7f0c00d8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v20

    .line 470
    .local v20, c4p3Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v21

    .line 471
    .local v21, c4p4X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v22

    .line 477
    .local v22, c4p4Y:F
    const v60, 0x7f0c00d3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v23

    .line 478
    .local v23, c5p1X:F
    const v60, 0x7f0c00d4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v24

    .line 479
    .local v24, c5p1Y:F
    const v60, 0x7f0c00d5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v25

    .line 480
    .local v25, c5p2X:F
    const v60, 0x7f0c00d6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v26

    .line 481
    .local v26, c5p2Y:F
    const v60, 0x7f0c00d7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v27

    .line 482
    .local v27, c5p3X:F
    const v60, 0x7f0c00d8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v28

    .line 483
    .local v28, c5p3Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v29

    .line 484
    .local v29, c5p4X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v30

    .line 485
    .local v30, c5p4Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v31

    .line 486
    .local v31, c5p5X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v32

    .line 490
    .local v32, c5p5Y:F
    const v60, 0x7f0c00d3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v33

    .line 491
    .local v33, c6p1X:F
    const v60, 0x7f0c00d4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v34

    .line 492
    .local v34, c6p1Y:F
    const v60, 0x7f0c00d5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v35

    .line 493
    .local v35, c6p2X:F
    const v60, 0x7f0c00d6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v36

    .line 494
    .local v36, c6p2Y:F
    const v60, 0x7f0c00d7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v37

    .line 495
    .local v37, c6p3X:F
    const v60, 0x7f0c00d8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v38

    .line 496
    .local v38, c6p3Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v39

    .line 497
    .local v39, c6p4X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v40

    .line 498
    .local v40, c6p4Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v41

    .line 499
    .local v41, c6p5X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v42

    .line 500
    .local v42, c6p5Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v43

    .line 501
    .local v43, c6p6X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v44

    .line 504
    .local v44, c6p6Y:F
    const v60, 0x7f0c00d3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v45

    .line 505
    .local v45, c7p1X:F
    const v60, 0x7f0c00d4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v46

    .line 506
    .local v46, c7p1Y:F
    const v60, 0x7f0c00d5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v47

    .line 507
    .local v47, c7p2X:F
    const v60, 0x7f0c00d6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v48

    .line 508
    .local v48, c7p2Y:F
    const v60, 0x7f0c00d7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v49

    .line 509
    .local v49, c7p3X:F
    const v60, 0x7f0c00d8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v50

    .line 510
    .local v50, c7p3Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v51

    .line 511
    .local v51, c7p4X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v52

    .line 512
    .local v52, c7p4Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v53

    .line 513
    .local v53, c7p5X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v54

    .line 514
    .local v54, c7p5Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v55

    .line 515
    .local v55, c7p6X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v56

    .line 516
    .local v56, c7p6Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v57

    .line 517
    .local v57, c7p7X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v58

    .line 519
    .local v58, c7p7Y:F
    const/16 v60, 0x7

    move/from16 v0, v60

    new-array v0, v0, [[[F

    move-object/from16 v59, v0

    const/16 v60, 0x0

    const/16 v61, 0x1

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v3, v63, v64

    const/16 v64, 0x1

    aput v4, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x1

    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v5, v63, v64

    const/16 v64, 0x1

    aput v6, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v7, v63, v64

    const/16 v64, 0x1

    aput v8, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x2

    const/16 v61, 0x3

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v9, v63, v64

    const/16 v64, 0x1

    aput v10, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v11, v63, v64

    const/16 v64, 0x1

    aput v12, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v13, v63, v64

    const/16 v64, 0x1

    aput v14, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x3

    const/16 v61, 0x4

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v15, v63, v64

    const/16 v64, 0x1

    aput v16, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v17, v63, v64

    const/16 v64, 0x1

    aput v18, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v19, v63, v64

    const/16 v64, 0x1

    aput v20, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x3

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v21, v63, v64

    const/16 v64, 0x1

    aput v22, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x4

    const/16 v61, 0x5

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v23, v63, v64

    const/16 v64, 0x1

    aput v24, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v25, v63, v64

    const/16 v64, 0x1

    aput v26, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v27, v63, v64

    const/16 v64, 0x1

    aput v28, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x3

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v29, v63, v64

    const/16 v64, 0x1

    aput v30, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x4

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v31, v63, v64

    const/16 v64, 0x1

    aput v32, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x5

    const/16 v61, 0x6

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v33, v63, v64

    const/16 v64, 0x1

    aput v34, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v35, v63, v64

    const/16 v64, 0x1

    aput v36, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v37, v63, v64

    const/16 v64, 0x1

    aput v38, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x3

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v39, v63, v64

    const/16 v64, 0x1

    aput v40, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x4

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v41, v63, v64

    const/16 v64, 0x1

    aput v42, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x5

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v43, v63, v64

    const/16 v64, 0x1

    aput v44, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x6

    const/16 v61, 0x7

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v45, v63, v64

    const/16 v64, 0x1

    aput v46, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v47, v63, v64

    const/16 v64, 0x1

    aput v48, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v49, v63, v64

    const/16 v64, 0x1

    aput v50, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x3

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v51, v63, v64

    const/16 v64, 0x1

    aput v52, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x4

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v53, v63, v64

    const/16 v64, 0x1

    aput v54, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x5

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v55, v63, v64

    const/16 v64, 0x1

    aput v56, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x6

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v57, v63, v64

    const/16 v64, 0x1

    aput v58, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    .line 529
    .local v59, iconPositions:[[[F
    return-object v59
.end method

.method public getAppMenuIconPositions(Landroid/content/res/Resources;)[[[F
    .locals 65
    .parameter "r"

    .prologue
    .line 351
    const v60, 0x7f0c01df

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v3

    .line 352
    .local v3, c1p1X:F
    const v60, 0x7f0c01e0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v4

    .line 355
    .local v4, c1p1Y:F
    const v60, 0x7f0c01e1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v5

    .line 356
    .local v5, c2p1X:F
    const v60, 0x7f0c01e2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v6

    .line 357
    .local v6, c2p1Y:F
    const v60, 0x7f0c01e3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v7

    .line 358
    .local v7, c2p2X:F
    const v60, 0x7f0c01e4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v8

    .line 361
    .local v8, c2p2Y:F
    const v60, 0x7f0c01e5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v9

    .line 362
    .local v9, c3p1X:F
    const v60, 0x7f0c01e6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v10

    .line 363
    .local v10, c3p1Y:F
    const v60, 0x7f0c01e7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v11

    .line 364
    .local v11, c3p2X:F
    const v60, 0x7f0c01e8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v12

    .line 365
    .local v12, c3p2Y:F
    const v60, 0x7f0c01e9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v13

    .line 366
    .local v13, c3p3X:F
    const v60, 0x7f0c01ea

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v14

    .line 369
    .local v14, c3p3Y:F
    const v60, 0x7f0c01eb

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v15

    .line 370
    .local v15, c4p1X:F
    const v60, 0x7f0c01ec

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v16

    .line 371
    .local v16, c4p1Y:F
    const v60, 0x7f0c01ed

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v17

    .line 372
    .local v17, c4p2X:F
    const v60, 0x7f0c01ee

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v18

    .line 373
    .local v18, c4p2Y:F
    const v60, 0x7f0c01ef

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v19

    .line 374
    .local v19, c4p3X:F
    const v60, 0x7f0c01f0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v20

    .line 375
    .local v20, c4p3Y:F
    const v60, 0x7f0c01f1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v21

    .line 376
    .local v21, c4p4X:F
    const v60, 0x7f0c01f2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v22

    .line 382
    .local v22, c4p4Y:F
    const v60, 0x7f0c00d3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v23

    .line 383
    .local v23, c5p1X:F
    const v60, 0x7f0c00d4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v24

    .line 384
    .local v24, c5p1Y:F
    const v60, 0x7f0c00d5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v25

    .line 385
    .local v25, c5p2X:F
    const v60, 0x7f0c00d6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v26

    .line 386
    .local v26, c5p2Y:F
    const v60, 0x7f0c00d7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v27

    .line 387
    .local v27, c5p3X:F
    const v60, 0x7f0c00d8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v28

    .line 388
    .local v28, c5p3Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v29

    .line 389
    .local v29, c5p4X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v30

    .line 390
    .local v30, c5p4Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v31

    .line 391
    .local v31, c5p5X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v32

    .line 395
    .local v32, c5p5Y:F
    const v60, 0x7f0c00d3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v33

    .line 396
    .local v33, c6p1X:F
    const v60, 0x7f0c00d4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v34

    .line 397
    .local v34, c6p1Y:F
    const v60, 0x7f0c00d5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v35

    .line 398
    .local v35, c6p2X:F
    const v60, 0x7f0c00d6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v36

    .line 399
    .local v36, c6p2Y:F
    const v60, 0x7f0c00d7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v37

    .line 400
    .local v37, c6p3X:F
    const v60, 0x7f0c00d8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v38

    .line 401
    .local v38, c6p3Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v39

    .line 402
    .local v39, c6p4X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v40

    .line 403
    .local v40, c6p4Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v41

    .line 404
    .local v41, c6p5X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v42

    .line 405
    .local v42, c6p5Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v43

    .line 406
    .local v43, c6p6X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v44

    .line 409
    .local v44, c6p6Y:F
    const v60, 0x7f0c00d3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v45

    .line 410
    .local v45, c7p1X:F
    const v60, 0x7f0c00d4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v46

    .line 411
    .local v46, c7p1Y:F
    const v60, 0x7f0c00d5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v47

    .line 412
    .local v47, c7p2X:F
    const v60, 0x7f0c00d6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v48

    .line 413
    .local v48, c7p2Y:F
    const v60, 0x7f0c00d7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v49

    .line 414
    .local v49, c7p3X:F
    const v60, 0x7f0c00d8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v50

    .line 415
    .local v50, c7p3Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v51

    .line 416
    .local v51, c7p4X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v52

    .line 417
    .local v52, c7p4Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v53

    .line 418
    .local v53, c7p5X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v54

    .line 419
    .local v54, c7p5Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v55

    .line 420
    .local v55, c7p6X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v56

    .line 421
    .local v56, c7p6Y:F
    const v60, 0x7f0c00d9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v57

    .line 422
    .local v57, c7p7X:F
    const v60, 0x7f0c00da

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getIconCordFromRes(Landroid/content/res/Resources;I)F

    move-result v58

    .line 424
    .local v58, c7p7Y:F
    const/16 v60, 0x7

    move/from16 v0, v60

    new-array v0, v0, [[[F

    move-object/from16 v59, v0

    const/16 v60, 0x0

    const/16 v61, 0x1

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v3, v63, v64

    const/16 v64, 0x1

    aput v4, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x1

    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v5, v63, v64

    const/16 v64, 0x1

    aput v6, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v7, v63, v64

    const/16 v64, 0x1

    aput v8, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x2

    const/16 v61, 0x3

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v9, v63, v64

    const/16 v64, 0x1

    aput v10, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v11, v63, v64

    const/16 v64, 0x1

    aput v12, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v13, v63, v64

    const/16 v64, 0x1

    aput v14, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x3

    const/16 v61, 0x4

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v15, v63, v64

    const/16 v64, 0x1

    aput v16, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v17, v63, v64

    const/16 v64, 0x1

    aput v18, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v19, v63, v64

    const/16 v64, 0x1

    aput v20, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x3

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v21, v63, v64

    const/16 v64, 0x1

    aput v22, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x4

    const/16 v61, 0x5

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v23, v63, v64

    const/16 v64, 0x1

    aput v24, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v25, v63, v64

    const/16 v64, 0x1

    aput v26, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v27, v63, v64

    const/16 v64, 0x1

    aput v28, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x3

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v29, v63, v64

    const/16 v64, 0x1

    aput v30, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x4

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v31, v63, v64

    const/16 v64, 0x1

    aput v32, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x5

    const/16 v61, 0x6

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v33, v63, v64

    const/16 v64, 0x1

    aput v34, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v35, v63, v64

    const/16 v64, 0x1

    aput v36, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v37, v63, v64

    const/16 v64, 0x1

    aput v38, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x3

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v39, v63, v64

    const/16 v64, 0x1

    aput v40, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x4

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v41, v63, v64

    const/16 v64, 0x1

    aput v42, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x5

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v43, v63, v64

    const/16 v64, 0x1

    aput v44, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x6

    const/16 v61, 0x7

    move/from16 v0, v61

    new-array v0, v0, [[F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v45, v63, v64

    const/16 v64, 0x1

    aput v46, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x1

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v47, v63, v64

    const/16 v64, 0x1

    aput v48, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x2

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v49, v63, v64

    const/16 v64, 0x1

    aput v50, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x3

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v51, v63, v64

    const/16 v64, 0x1

    aput v52, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x4

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v53, v63, v64

    const/16 v64, 0x1

    aput v54, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x5

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v55, v63, v64

    const/16 v64, 0x1

    aput v56, v63, v64

    aput-object v63, v61, v62

    const/16 v62, 0x6

    const/16 v63, 0x2

    move/from16 v0, v63

    new-array v0, v0, [F

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput v57, v63, v64

    const/16 v64, 0x1

    aput v58, v63, v64

    aput-object v63, v61, v62

    aput-object v61, v59, v60

    .line 434
    .local v59, iconPositions:[[[F
    return-object v59
.end method
