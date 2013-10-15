.class public Lcom/android/launcher2/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# static fields
.field public static final ALLAPPS_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final APPS_CUSTOMIZE_TABKEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final DOWNLOADED_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDERNAME_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDER_ADDITEM_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDER_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final HOME_MAGAZINE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final MENUAPPGRID_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final QUICK_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final QUICK_CAMERA_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final TITLEBAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field private static sHomeView:Lcom/android/launcher2/HomeView;

.field private static sIsLoopingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Launcher_DisablePageRotation"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    .line 48
    new-instance v0, Lcom/android/launcher2/FocusHelper$1;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->DOWNLOADED_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 55
    new-instance v0, Lcom/android/launcher2/FocusHelper$2;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$2;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->TITLEBAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 65
    new-instance v0, Lcom/android/launcher2/FocusHelper$3;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$3;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 73
    new-instance v0, Lcom/android/launcher2/FocusHelper$4;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$4;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->ALLAPPS_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 84
    new-instance v0, Lcom/android/launcher2/FocusHelper$5;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$5;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->QUICK_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 96
    new-instance v0, Lcom/android/launcher2/FocusHelper$6;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$6;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->QUICK_CAMERA_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 107
    new-instance v0, Lcom/android/launcher2/FocusHelper$7;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$7;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDER_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 114
    new-instance v0, Lcom/android/launcher2/FocusHelper$8;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$8;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDERNAME_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 122
    new-instance v0, Lcom/android/launcher2/FocusHelper$9;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$9;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDER_ADDITEM_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 132
    new-instance v0, Lcom/android/launcher2/FocusHelper$10;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$10;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 140
    new-instance v0, Lcom/android/launcher2/FocusHelper$11;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$11;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->MENUAPPGRID_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 151
    new-instance v0, Lcom/android/launcher2/FocusHelper$12;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$12;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->APPS_CUSTOMIZE_TABKEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 993
    new-instance v0, Lcom/android/launcher2/FocusHelper$13;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$13;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->HOME_MAGAZINE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleDownloadedIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleTitleBarKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleMenuAppGridIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleHomeMagazineButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleWorkspaceIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleWorkspaceAllAppsKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleQuickAllappsIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleQuickCameraIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderNameKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderAddItemKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "i"
    .parameter "delta"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 1376
    .local p0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1377
    .local v0, count:I
    add-int v1, p1, p2

    .line 1378
    .local v1, newI:I
    :goto_0
    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 1379
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1380
    .local v2, newV:Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_0

    .line 1385
    .end local v2           #newV:Landroid/view/View;
    :goto_1
    return-object v2

    .line 1383
    .restart local v2       #newV:Landroid/view/View;
    :cond_0
    add-int/2addr v1, p2

    .line 1384
    goto :goto_0

    .line 1385
    .end local v2           #newV:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 2
    .parameter "v"

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 163
    .local v0, p:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TabHost;

    if-nez v1, :cond_0

    .line 164
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_0
    check-cast v0, Landroid/widget/TabHost;

    .end local v0           #p:Landroid/view/ViewParent;
    return-object v0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;
    .locals 2
    .parameter "container"
    .parameter "i"

    .prologue
    .line 1339
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1340
    .local v0, parent:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    return-object v1
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 5
    .parameter "layout"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 1351
    .local v0, cellCountX:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1352
    .local v1, count:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    .local v3, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1354
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1356
    :cond_0
    new-instance v4, Lcom/android/launcher2/FocusHelper$14;

    invoke-direct {v4, v0}, Lcom/android/launcher2/FocusHelper$14;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1366
    return-object v3
.end method

.method private static getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 21
    .parameter "layout"
    .parameter "parent"
    .parameter "v"
    .parameter "lineDelta"

    .prologue
    .line 1416
    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1417
    .local v14, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1418
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    .line 1419
    .local v2, cellCountY:I
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1420
    .local v10, row:I
    add-int v8, v10, p3

    .line 1421
    .local v8, newRow:I
    if-ltz v8, :cond_7

    if-ge v8, v2, :cond_7

    .line 1422
    const v3, 0x7f7fffff

    .line 1423
    .local v3, closestDistance:F
    const/4 v4, -0x1

    .line 1424
    .local v4, closestIndex:I
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1425
    .local v6, index:I
    if-gez p3, :cond_1

    const/4 v5, -0x1

    .line 1426
    .local v5, endIndex:I
    :goto_0
    if-eq v6, v5, :cond_6

    .line 1427
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1428
    .local v9, newV:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1429
    .local v13, tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-gez p3, :cond_3

    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ge v15, v10, :cond_2

    const/4 v11, 0x1

    .line 1430
    .local v11, satisfiesRow:Z
    :goto_1
    if-eqz v11, :cond_0

    instance-of v15, v9, Lcom/android/launcher2/AppIconView;

    if-eqz v15, :cond_0

    .line 1432
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v17, v0

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v12, v15

    .line 1434
    .local v12, tmpDistance:F
    cmpg-float v15, v12, v3

    if-gez v15, :cond_0

    .line 1435
    move v4, v6

    .line 1436
    move v3, v12

    .line 1439
    .end local v12           #tmpDistance:F
    :cond_0
    if-gt v6, v5, :cond_5

    .line 1440
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1425
    .end local v5           #endIndex:I
    .end local v9           #newV:Landroid/view/View;
    .end local v11           #satisfiesRow:Z
    .end local v13           #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    .line 1429
    .restart local v5       #endIndex:I
    .restart local v9       #newV:Landroid/view/View;
    .restart local v13       #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-le v15, v10, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 1442
    .restart local v11       #satisfiesRow:Z
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1445
    .end local v9           #newV:Landroid/view/View;
    .end local v11           #satisfiesRow:Z
    .end local v13           #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_6
    const/4 v15, -0x1

    if-le v4, v15, :cond_7

    .line 1446
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 1449
    .end local v3           #closestDistance:F
    .end local v4           #closestIndex:I
    .end local v5           #endIndex:I
    .end local v6           #index:I
    :goto_2
    return-object v15

    :cond_7
    const/4 v15, 0x0

    goto :goto_2
.end method

.method private static getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;
    .locals 3
    .parameter "layout"
    .parameter "position"
    .parameter "itemsPerRow"

    .prologue
    .line 1403
    div-int v1, p1, p2

    .line 1404
    .local v1, y:I
    rem-int v0, p1, p2

    .line 1405
    .local v0, x:I
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2
    .parameter "layout"
    .parameter "parent"
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 1389
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1390
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, p2, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .parameter "layout"
    .parameter "parent"
    .parameter "v"
    .parameter "delta"

    .prologue
    .line 1394
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1395
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;
    .locals 2
    .parameter "container"
    .parameter "index"

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 457
    .local v0, page:Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v1, :cond_0

    .line 459
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #page:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 461
    .restart local v0       #page:Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method private static handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 23
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 300
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/FocusOnlyTabWidget;

    .line 301
    .local v16, parent:Lcom/android/launcher2/FocusOnlyTabWidget;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v17

    .line 302
    .local v17, tabHost:Landroid/widget/TabHost;
    const v21, 0x1020011

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .local v6, contents:Landroid/view/ViewGroup;
    move-object/from16 v21, v17

    .line 304
    check-cast v21, Lcom/android/launcher2/MenuView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuView;->getMenuOrMarketButton()Landroid/view/View;

    move-result-object v12

    .local v12, menuOrMarket:Landroid/view/View;
    move-object/from16 v21, v17

    .line 305
    check-cast v21, Lcom/android/launcher2/MenuView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuView;->getDownButton()Landroid/view/View;

    move-result-object v2

    .line 306
    .local v2, DownButton:Landroid/view/View;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 307
    .local v18, tabs_apps:Landroid/view/View;
    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 309
    .local v19, tabs_widgets:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    .line 312
    .local v3, MenuView:Lcom/android/launcher2/MenuView;
    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v11

    .line 313
    .local v11, menuGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v13

    .line 314
    .local v13, menuWidgets:Lcom/android/launcher2/PagedView;
    const/4 v14, 0x0

    .line 315
    .local v14, newParent:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 316
    .local v5, child:Landroid/view/View;
    const/4 v7, 0x0

    .line 317
    .local v7, grandparent:Lcom/android/launcher2/CellLayoutMenu;
    const/4 v9, 0x0

    .line 318
    .local v9, mChildCount:I
    const/4 v10, 0x0

    .line 319
    .local v10, mCountX:I
    const/4 v15, 0x0

    .line 322
    .local v15, pageIndex:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    .line 323
    .local v4, action:I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v4, v0, :cond_1

    const/4 v8, 0x1

    .line 324
    .local v8, handleKeyEvent:Z
    :goto_0
    const/16 v20, 0x0

    .line 325
    .local v20, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 449
    :cond_0
    :goto_1
    return v20

    .line 323
    .end local v8           #handleKeyEvent:Z
    .end local v20           #wasHandled:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 327
    .restart local v8       #handleKeyEvent:Z
    .restart local v20       #wasHandled:Z
    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 329
    if-eqz v8, :cond_2

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 331
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    .line 332
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 363
    :cond_2
    :goto_2
    const/16 v20, 0x1

    goto :goto_1

    .line 333
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 335
    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v15

    .line 336
    invoke-static {v11, v15}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v14

    .line 338
    if-eqz v14, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v21

    const-string v22, "WIDGETS"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 339
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 340
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .end local v7           #grandparent:Lcom/android/launcher2/CellLayoutMenu;
    check-cast v7, Lcom/android/launcher2/CellLayoutMenu;

    .line 341
    .restart local v7       #grandparent:Lcom/android/launcher2/CellLayoutMenu;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v10

    move-object/from16 v21, v14

    .line 342
    check-cast v21, Lcom/android/launcher2/CellLayoutChildren;

    add-int/lit8 v22, v9, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v10}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    .line 343
    if-eqz v5, :cond_2

    .line 345
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 346
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 350
    :cond_4
    invoke-virtual {v13}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v15

    .line 351
    invoke-static {v13, v15}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v14

    .line 352
    if-eqz v14, :cond_2

    .line 353
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 354
    if-eqz v5, :cond_2

    .line 356
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 357
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 366
    :cond_5
    if-eqz v8, :cond_6

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 369
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    .line 370
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 384
    :cond_6
    :goto_3
    const/16 v20, 0x1

    .line 386
    goto/16 :goto_1

    .line 371
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    if-eqz v2, :cond_9

    .line 372
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 373
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 374
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 376
    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 377
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 379
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    if-nez v2, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 380
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 381
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 388
    :sswitch_1
    if-eqz v8, :cond_a

    .line 389
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 390
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    .line 391
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 394
    :cond_a
    const/16 v20, 0x1

    .line 395
    goto/16 :goto_1

    .line 397
    :sswitch_2
    if-eqz v8, :cond_b

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 400
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    .line 401
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 415
    :cond_b
    :goto_4
    const/16 v20, 0x1

    .line 416
    goto/16 :goto_1

    .line 402
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_e

    if-eqz v2, :cond_e

    .line 403
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 404
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 405
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 407
    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 408
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 410
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    if-nez v2, :cond_b

    invoke-virtual {v12}, Landroid/view/View;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 411
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 412
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 418
    :sswitch_3
    if-eqz v8, :cond_0

    .line 420
    move-object/from16 v0, p0

    if-ne v0, v12, :cond_0

    .line 421
    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 422
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 429
    :sswitch_4
    if-eqz v8, :cond_11

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 431
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 445
    :cond_f
    :goto_5
    const/16 v20, 0x1

    .line 446
    goto/16 :goto_1

    .line 432
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 433
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_5

    .line 435
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 436
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 437
    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    .line 438
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    .line 439
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 440
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 441
    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    .line 442
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    .line 325
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_4
        0x3d -> :sswitch_0
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleDownloadedIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 174
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v6

    .line 175
    .local v6, tabHost:Landroid/widget/TabHost;
    const v9, 0x1020011

    invoke-virtual {v6, v9}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 177
    .local v2, contents:Landroid/view/ViewGroup;
    const v9, 0x1020013

    invoke-virtual {v6, v9}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FocusOnlyTabWidget;

    .line 178
    .local v3, focusOnlyTab:Lcom/android/launcher2/FocusOnlyTabWidget;
    invoke-virtual {v3, v4}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .local v7, tabs_widgets:Landroid/view/View;
    move-object v9, v6

    .line 179
    check-cast v9, Lcom/android/launcher2/MenuView;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->getMenuOrMarketButton()Landroid/view/View;

    move-result-object v5

    .local v5, menuOrMarket:Landroid/view/View;
    move-object v9, v6

    .line 180
    check-cast v9, Lcom/android/launcher2/MenuView;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->getDownButton()Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, DownButton:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 183
    .local v1, action:I
    if-eq v1, v4, :cond_1

    .line 184
    .local v4, handleKeyEvent:Z
    :goto_0
    const/4 v8, 0x0

    .line 185
    .local v8, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 228
    :cond_0
    :goto_1
    return v8

    .end local v4           #handleKeyEvent:Z
    .end local v8           #wasHandled:Z
    :cond_1
    move v4, v10

    .line 183
    goto :goto_0

    .line 187
    .restart local v4       #handleKeyEvent:Z
    .restart local v8       #wasHandled:Z
    :pswitch_0
    if-eqz v4, :cond_2

    .line 189
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v9

    if-nez v9, :cond_6

    .line 190
    if-ne p0, v5, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 192
    invoke-virtual {v0, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 205
    :cond_2
    :goto_2
    const/4 v8, 0x1

    .line 206
    goto :goto_1

    .line 193
    :cond_3
    if-ne p0, v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    if-ne p0, v0, :cond_2

    .line 195
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 196
    invoke-virtual {v7, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 199
    :cond_6
    if-eq p0, v6, :cond_2

    .line 200
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 201
    invoke-virtual {v7, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 208
    :pswitch_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v9

    if-nez v9, :cond_7

    .line 209
    if-eqz v4, :cond_7

    .line 210
    if-ne p0, v0, :cond_7

    .line 211
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 212
    invoke-virtual {v5, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 216
    :cond_7
    const/4 v8, 0x1

    .line 217
    goto :goto_1

    .line 219
    :pswitch_2
    if-eqz v4, :cond_0

    .line 220
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 221
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 222
    const/4 v8, 0x1

    goto :goto_1

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleFolderAddItemKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 15
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 1822
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 1823
    .local v8, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/widget/ScrollView;

    .line 1824
    .local v10, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v10}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Folder;

    .line 1825
    .local v4, folder:Lcom/android/launcher2/Folder;
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutChildren;

    .line 1826
    .local v2, child:Lcom/android/launcher2/CellLayoutChildren;
    iget-object v11, v4, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 1828
    .local v11, title:Landroid/view/View;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1829
    .local v0, action:I
    const/4 v13, 0x1

    if-eq v0, v13, :cond_1

    const/4 v5, 0x1

    .line 1831
    .local v5, handleKeyEvent:Z
    :goto_0
    const/4 v12, 0x0

    .line 1832
    .local v12, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 1880
    :cond_0
    :goto_1
    return v12

    .line 1829
    .end local v5           #handleKeyEvent:Z
    .end local v12           #wasHandled:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1836
    .restart local v5       #handleKeyEvent:Z
    .restart local v12       #wasHandled:Z
    :sswitch_0
    const/4 v12, 0x1

    .line 1837
    goto :goto_1

    .line 1840
    :sswitch_1
    if-eqz v5, :cond_0

    .line 1842
    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-static {v8, v2, v13, v14}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    .line 1843
    .local v6, icon:Landroid/view/View;
    if-eqz v6, :cond_4

    .line 1845
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayoutChildren;

    .line 1846
    .local v7, iconParent:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v9, 0x0

    .line 1847
    .local v9, newIcon:Landroid/view/View;
    if-eqz v7, :cond_3

    .line 1848
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1849
    .local v1, cellLayout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    .line 1850
    .local v3, count:I
    if-gez v3, :cond_2

    const/4 v3, 0x0

    .line 1851
    :cond_2
    if-eqz v1, :cond_3

    .line 1852
    invoke-static {v1, v7, v6, v3}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 1855
    .end local v1           #cellLayout:Lcom/android/launcher2/CellLayout;
    .end local v3           #count:I
    :cond_3
    if-eqz v9, :cond_5

    .line 1856
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 1857
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/View;->playSoundEffect(I)V

    .line 1863
    .end local v7           #iconParent:Lcom/android/launcher2/CellLayoutChildren;
    .end local v9           #newIcon:Landroid/view/View;
    :cond_4
    :goto_2
    const/4 v12, 0x1

    .line 1864
    goto :goto_1

    .line 1858
    .restart local v7       #iconParent:Lcom/android/launcher2/CellLayoutChildren;
    .restart local v9       #newIcon:Landroid/view/View;
    :cond_5
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v13

    if-nez v13, :cond_4

    .line 1859
    invoke-virtual {v11}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 1860
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 1868
    .end local v6           #icon:Landroid/view/View;
    .end local v7           #iconParent:Lcom/android/launcher2/CellLayoutChildren;
    .end local v9           #newIcon:Landroid/view/View;
    :sswitch_2
    if-eqz v5, :cond_0

    .line 1869
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v3

    .line 1870
    .restart local v3       #count:I
    const/4 v13, 0x1

    if-ne v3, v13, :cond_0

    .line 1871
    invoke-virtual {v11}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 1872
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/view/View;->playSoundEffect(I)V

    .line 1873
    const/4 v12, 0x1

    goto :goto_1

    .line 1832
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 1661
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutChildren;

    .line 1662
    .local v6, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 1663
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    .line 1664
    .local v7, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v7}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder;

    .line 1665
    .local v1, folder:Lcom/android/launcher2/Folder;
    iget-object v8, v1, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 1666
    .local v8, title:Landroid/view/View;
    const v10, 0x7f070037

    invoke-virtual {v1, v10}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1668
    .local v2, folderAddButton:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1669
    .local v0, action:I
    const/4 v10, 0x1

    if-eq v0, v10, :cond_0

    const/4 v3, 0x1

    .line 1670
    .local v3, handleKeyEvent:Z
    :goto_0
    const/4 v9, 0x0

    .line 1671
    .local v9, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 1754
    :goto_1
    return v9

    .line 1669
    .end local v3           #handleKeyEvent:Z
    .end local v9           #wasHandled:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1673
    .restart local v3       #handleKeyEvent:Z
    .restart local v9       #wasHandled:Z
    :sswitch_0
    if-eqz v3, :cond_1

    .line 1675
    const/4 v10, -0x1

    invoke-static {v4, v6, p0, v10}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1676
    .local v5, newIcon:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1677
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1678
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 1684
    .end local v5           #newIcon:Landroid/view/View;
    :cond_1
    :goto_2
    const/4 v9, 0x1

    .line 1685
    goto :goto_1

    .line 1680
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_2
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 1681
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 1688
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_1
    if-eqz v3, :cond_3

    .line 1691
    const/4 v10, 0x1

    invoke-static {v4, v6, p0, v10}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1692
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_4

    .line 1693
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1694
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 1702
    .end local v5           #newIcon:Landroid/view/View;
    :cond_3
    :goto_3
    const/4 v9, 0x1

    .line 1703
    goto :goto_1

    .line 1696
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_4
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1697
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1698
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 1705
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_2
    if-eqz v3, :cond_5

    .line 1707
    const/4 v10, -0x1

    invoke-static {v4, v6, p0, v10}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1708
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_6

    .line 1709
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1710
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 1716
    .end local v5           #newIcon:Landroid/view/View;
    :cond_5
    :goto_4
    const/4 v9, 0x1

    .line 1717
    goto :goto_1

    .line 1712
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_6
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 1713
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 1719
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_3
    if-eqz v3, :cond_7

    .line 1721
    const/4 v10, 0x1

    invoke-static {v4, v6, p0, v10}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1722
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_7

    .line 1723
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1724
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 1727
    .end local v5           #newIcon:Landroid/view/View;
    :cond_7
    const/4 v9, 0x1

    .line 1728
    goto :goto_1

    .line 1730
    :sswitch_4
    if-eqz v3, :cond_8

    .line 1732
    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-static {v4, v6, v10, v11}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 1733
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_8

    .line 1734
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1735
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 1738
    .end local v5           #newIcon:Landroid/view/View;
    :cond_8
    const/4 v9, 0x1

    .line 1739
    goto :goto_1

    .line 1741
    :sswitch_5
    if-eqz v3, :cond_9

    .line 1743
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v10

    const/4 v11, -0x1

    invoke-static {v4, v6, v10, v11}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 1745
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_9

    .line 1746
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1747
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 1750
    .end local v5           #newIcon:Landroid/view/View;
    :cond_9
    const/4 v9, 0x1

    .line 1751
    goto/16 :goto_1

    .line 1671
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method private static handleFolderNameKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 1758
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Folder;

    .local v2, folder:Lcom/android/launcher2/Folder;
    move-object v8, p0

    .line 1759
    check-cast v8, Lcom/android/launcher2/FolderEditText;

    .line 1760
    .local v8, title:Lcom/android/launcher2/FolderEditText;
    const v10, 0x7f0700c0

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 1761
    .local v5, layout:Lcom/android/launcher2/CellLayout;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    .line 1762
    .local v1, child:Lcom/android/launcher2/CellLayoutChildren;
    const v10, 0x7f070037

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1764
    .local v3, folderAddButton:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1765
    .local v0, action:I
    const/4 v10, 0x1

    if-eq v0, v10, :cond_1

    const/4 v4, 0x1

    .line 1766
    .local v4, handleKeyEvent:Z
    :goto_0
    const/4 v9, 0x0

    .line 1767
    .local v9, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 1817
    :cond_0
    :goto_1
    return v9

    .line 1765
    .end local v4           #handleKeyEvent:Z
    .end local v9           #wasHandled:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1769
    .restart local v4       #handleKeyEvent:Z
    .restart local v9       #wasHandled:Z
    :sswitch_0
    if-eqz v4, :cond_0

    .line 1770
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->getSelectionStart()I

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->getSelectionEnd()I

    move-result v10

    if-nez v10, :cond_0

    .line 1771
    const/4 v9, 0x1

    goto :goto_1

    .line 1775
    :sswitch_1
    if-eqz v4, :cond_0

    .line 1776
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->length()I

    move-result v6

    .line 1777
    .local v6, length:I
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->getSelectionStart()I

    move-result v10

    if-ne v10, v6, :cond_0

    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->getSelectionEnd()I

    move-result v10

    if-ne v10, v6, :cond_0

    .line 1778
    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-static {v5, v1, v10, v11}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1779
    .local v7, newIcon:Landroid/view/View;
    if-eqz v7, :cond_3

    .line 1780
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1781
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 1786
    :cond_2
    :goto_2
    const/4 v9, 0x1

    goto :goto_1

    .line 1782
    :cond_3
    if-eqz v3, :cond_2

    .line 1783
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1784
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 1792
    .end local v6           #length:I
    .end local v7           #newIcon:Landroid/view/View;
    :sswitch_2
    const/4 v9, 0x1

    .line 1793
    goto :goto_1

    .line 1795
    :sswitch_3
    if-eqz v4, :cond_4

    .line 1796
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v10

    if-eqz v10, :cond_5

    .line 1797
    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-static {v5, v1, v10, v11}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1798
    .restart local v7       #newIcon:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 1799
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1800
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 1807
    .end local v7           #newIcon:Landroid/view/View;
    :cond_4
    :goto_3
    const/4 v9, 0x1

    .line 1808
    goto :goto_1

    .line 1802
    :cond_5
    if-eqz v3, :cond_4

    .line 1803
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1804
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 1810
    :sswitch_4
    if-eqz v4, :cond_6

    .line 1811
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 1813
    :cond_6
    const/4 v9, 0x1

    .line 1814
    goto :goto_1

    .line 1767
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleHomeMagazineButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 19
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 1001
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 1002
    .local v12, parent:Landroid/view/ViewGroup;
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1003
    .local v6, launcher:Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v17

    const v18, 0x7f070060

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/Workspace;

    .line 1004
    .local v16, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v11

    .line 1005
    .local v11, pageIndex:I
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v10

    .line 1008
    .local v10, pageCount:I
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 1009
    .local v4, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 1011
    .local v3, cc:Lcom/android/launcher2/CellLayoutChildren;
    sget-object v17, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->getMagazineSoftKey()Lcom/android/launcher2/HomeMagazineSoftKey;

    move-result-object v7

    .line 1013
    .local v7, magazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1014
    .local v2, action:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v2, v0, :cond_1

    const/4 v5, 0x1

    .line 1015
    .local v5, handleKeyEvent:Z
    :goto_0
    const/4 v14, 0x0

    .line 1016
    .local v14, wasHandled:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1019
    .local v15, whichButton:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1107
    :cond_0
    :goto_1
    return v14

    .line 1014
    .end local v5           #handleKeyEvent:Z
    .end local v14           #wasHandled:Z
    .end local v15           #whichButton:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1021
    .restart local v5       #handleKeyEvent:Z
    .restart local v14       #wasHandled:Z
    .restart local v15       #whichButton:Ljava/lang/String;
    :pswitch_0
    if-eqz v5, :cond_0

    .line 1022
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_2

    .line 1023
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1024
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1025
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v11

    .line 1028
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v7, v15, v0}, Lcom/android/launcher2/HomeMagazineSoftKey;->getNextButton(Ljava/lang/String;I)Landroid/widget/ImageButton;

    move-result-object v8

    .line 1029
    .local v8, newIcon:Landroid/view/View;
    if-eqz v8, :cond_3

    .line 1030
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 1031
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1034
    :cond_3
    if-nez v8, :cond_5

    .line 1035
    if-lez v11, :cond_6

    .line 1036
    add-int/lit8 v13, v11, -0x1

    .line 1042
    .local v13, prevPage:I
    :goto_2
    if-eq v13, v11, :cond_5

    .line 1043
    sget-boolean v17, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v17, :cond_4

    .line 1044
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1046
    :cond_4
    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 1047
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 1048
    .restart local v4       #cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v8

    .line 1049
    if-eqz v8, :cond_5

    .line 1050
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 1051
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1056
    .end local v13           #prevPage:I
    :cond_5
    const/4 v14, 0x1

    goto :goto_1

    .line 1037
    :cond_6
    sget-boolean v17, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v17, :cond_7

    .line 1038
    add-int/lit8 v13, v10, -0x1

    .restart local v13       #prevPage:I
    goto :goto_2

    .line 1040
    .end local v13           #prevPage:I
    :cond_7
    move v13, v11

    .restart local v13       #prevPage:I
    goto :goto_2

    .line 1061
    .end local v8           #newIcon:Landroid/view/View;
    .end local v13           #prevPage:I
    :pswitch_1
    if-eqz v5, :cond_0

    .line 1062
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_8

    .line 1063
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1064
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1065
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v11

    .line 1068
    :cond_8
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v15, v0}, Lcom/android/launcher2/HomeMagazineSoftKey;->getNextButton(Ljava/lang/String;I)Landroid/widget/ImageButton;

    move-result-object v8

    .line 1069
    .restart local v8       #newIcon:Landroid/view/View;
    if-eqz v8, :cond_9

    .line 1070
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 1071
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1074
    :cond_9
    if-nez v8, :cond_b

    .line 1075
    add-int/lit8 v17, v10, -0x1

    move/from16 v0, v17

    if-ge v11, v0, :cond_c

    .line 1076
    add-int/lit8 v9, v11, 0x1

    .line 1081
    .local v9, nextPage:I
    :goto_3
    if-eq v9, v11, :cond_b

    .line 1082
    sget-boolean v17, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v17, :cond_a

    .line 1083
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1085
    :cond_a
    move-object/from16 v0, v16

    invoke-static {v0, v9}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 1086
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 1087
    .restart local v4       #cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    .line 1088
    if-eqz v8, :cond_b

    .line 1089
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 1090
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1095
    .end local v9           #nextPage:I
    :cond_b
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 1077
    :cond_c
    sget-boolean v17, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v17, :cond_d

    .line 1078
    const/4 v9, 0x0

    .restart local v9       #nextPage:I
    goto :goto_3

    .line 1080
    .end local v9           #nextPage:I
    :cond_d
    move v9, v11

    .restart local v9       #nextPage:I
    goto :goto_3

    .line 1100
    .end local v8           #newIcon:Landroid/view/View;
    .end local v9           #nextPage:I
    :pswitch_2
    const/4 v14, 0x1

    .line 1101
    goto/16 :goto_1

    .line 1019
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 29
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"
    .parameter "orientation"

    .prologue
    .line 1115
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 1116
    .local v23, parent:Landroid/view/ViewGroup;
    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 1117
    .local v13, launcher:Landroid/view/ViewGroup;
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v27

    const v28, 0x7f070060

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/Workspace;

    .line 1118
    .local v26, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 1119
    .local v22, pageIndex:I
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v21

    .line 1122
    .local v21, pageCount:I
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 1123
    .local v7, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 1124
    .local v3, cc:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v7, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v17

    .line 1130
    .local v17, newIcon_left:Landroid/view/View;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1131
    .local v2, action:I
    const/16 v27, 0x1

    move/from16 v0, v27

    if-eq v2, v0, :cond_0

    const/4 v12, 0x1

    .line 1132
    .local v12, handleKeyEvent:Z
    :goto_0
    const/16 v25, 0x0

    .line 1133
    .local v25, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    :goto_1
    move/from16 v27, v25

    .line 1332
    :goto_2
    return v27

    .line 1131
    .end local v12           #handleKeyEvent:Z
    .end local v25           #wasHandled:Z
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 1135
    .restart local v12       #handleKeyEvent:Z
    .restart local v25       #wasHandled:Z
    :pswitch_0
    if-eqz v12, :cond_2

    .line 1136
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_1

    .line 1137
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->timePassed()I

    move-result v27

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->getDuration()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_3

    .line 1138
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1139
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1140
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 1142
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #cl:Lcom/android/launcher2/CellLayout;
    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 1143
    .restart local v7       #cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 1144
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v7, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v17

    .line 1149
    :cond_1
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v27

    if-nez v27, :cond_8

    .line 1150
    if-eqz v17, :cond_4

    .line 1151
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    .line 1152
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 1207
    :cond_2
    :goto_3
    const/16 v25, 0x1

    .line 1208
    goto :goto_1

    .line 1146
    :cond_3
    const/16 v27, 0x1

    goto :goto_2

    .line 1154
    :cond_4
    if-lez v22, :cond_6

    .line 1155
    add-int/lit8 v24, v22, -0x1

    .line 1161
    .local v24, prevPage:I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 1162
    sget-boolean v27, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v27, :cond_5

    .line 1163
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1164
    :cond_5
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    .line 1165
    .local v9, cl_left:Lcom/android/launcher2/CellLayout;
    if-eqz v9, :cond_2

    .line 1166
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    .line 1167
    .local v4, cc_left:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v9, v4, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    .line 1168
    .local v19, newIcon_prevpage:Landroid/view/View;
    if-eqz v19, :cond_2

    .line 1169
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    .line 1170
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 1156
    .end local v4           #cc_left:Lcom/android/launcher2/CellLayoutChildren;
    .end local v9           #cl_left:Lcom/android/launcher2/CellLayout;
    .end local v19           #newIcon_prevpage:Landroid/view/View;
    .end local v24           #prevPage:I
    :cond_6
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_7

    .line 1157
    add-int/lit8 v24, v21, -0x1

    .restart local v24       #prevPage:I
    goto :goto_4

    .line 1159
    .end local v24           #prevPage:I
    :cond_7
    move/from16 v24, v22

    .restart local v24       #prevPage:I
    goto :goto_4

    .line 1176
    .end local v24           #prevPage:I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 1177
    .local v11, clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 1178
    .local v8, cl_hot:Lcom/android/launcher2/CellLayout;
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 1180
    .local v16, newIcon_hot:Landroid/view/View;
    if-eqz v16, :cond_9

    .line 1181
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 1182
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 1184
    :cond_9
    if-lez v22, :cond_b

    .line 1185
    add-int/lit8 v24, v22, -0x1

    .line 1191
    .restart local v24       #prevPage:I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 1192
    sget-boolean v27, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v27, :cond_a

    .line 1193
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1194
    :cond_a
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    .line 1195
    .restart local v9       #cl_left:Lcom/android/launcher2/CellLayout;
    if-eqz v9, :cond_2

    .line 1196
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    .line 1197
    .restart local v4       #cc_left:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v9, v4, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    .line 1198
    .restart local v19       #newIcon_prevpage:Landroid/view/View;
    if-eqz v19, :cond_2

    .line 1199
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    .line 1200
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1186
    .end local v4           #cc_left:Lcom/android/launcher2/CellLayoutChildren;
    .end local v9           #cl_left:Lcom/android/launcher2/CellLayout;
    .end local v19           #newIcon_prevpage:Landroid/view/View;
    .end local v24           #prevPage:I
    :cond_b
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_c

    .line 1187
    add-int/lit8 v24, v21, -0x1

    .restart local v24       #prevPage:I
    goto :goto_5

    .line 1189
    .end local v24           #prevPage:I
    :cond_c
    move/from16 v24, v22

    .restart local v24       #prevPage:I
    goto :goto_5

    .line 1210
    .end local v8           #cl_hot:Lcom/android/launcher2/CellLayout;
    .end local v11           #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    .end local v16           #newIcon_hot:Landroid/view/View;
    .end local v24           #prevPage:I
    :pswitch_1
    if-eqz v12, :cond_f

    .line 1211
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_d

    .line 1212
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->timePassed()I

    move-result v27

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->getDuration()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_10

    .line 1213
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1214
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1215
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 1220
    :cond_d
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v27

    if-nez v27, :cond_13

    .line 1221
    add-int/lit8 v27, v21, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    .line 1222
    add-int/lit8 v20, v22, 0x1

    .line 1228
    .local v20, nextPage:I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 1229
    sget-boolean v27, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v27, :cond_e

    .line 1230
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1231
    :cond_e
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    .line 1232
    .local v10, cl_right:Lcom/android/launcher2/CellLayout;
    if-eqz v10, :cond_f

    .line 1233
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 1234
    .local v5, cc_right:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v10, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    .line 1235
    .local v18, newIcon_nextpage:Landroid/view/View;
    if-eqz v18, :cond_f

    .line 1236
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    .line 1237
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 1273
    .end local v5           #cc_right:Lcom/android/launcher2/CellLayoutChildren;
    .end local v10           #cl_right:Lcom/android/launcher2/CellLayout;
    .end local v18           #newIcon_nextpage:Landroid/view/View;
    .end local v20           #nextPage:I
    :cond_f
    :goto_7
    const/16 v25, 0x1

    .line 1274
    goto/16 :goto_1

    .line 1217
    :cond_10
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 1223
    :cond_11
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_12

    .line 1224
    const/16 v20, 0x0

    .restart local v20       #nextPage:I
    goto :goto_6

    .line 1226
    .end local v20           #nextPage:I
    :cond_12
    move/from16 v20, v22

    .restart local v20       #nextPage:I
    goto :goto_6

    .line 1242
    .end local v20           #nextPage:I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 1243
    .restart local v11       #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 1244
    .restart local v8       #cl_hot:Lcom/android/launcher2/CellLayout;
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 1246
    .restart local v16       #newIcon_hot:Landroid/view/View;
    if-eqz v16, :cond_14

    .line 1247
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 1248
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    .line 1250
    :cond_14
    add-int/lit8 v27, v21, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    .line 1251
    add-int/lit8 v20, v22, 0x1

    .line 1257
    .restart local v20       #nextPage:I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 1258
    sget-boolean v27, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v27, :cond_15

    .line 1259
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1260
    :cond_15
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    .line 1261
    .restart local v10       #cl_right:Lcom/android/launcher2/CellLayout;
    if-eqz v10, :cond_f

    .line 1262
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 1263
    .restart local v5       #cc_right:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v10, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    .line 1264
    .restart local v18       #newIcon_nextpage:Landroid/view/View;
    if-eqz v18, :cond_f

    .line 1265
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    .line 1266
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    .line 1252
    .end local v5           #cc_right:Lcom/android/launcher2/CellLayoutChildren;
    .end local v10           #cl_right:Lcom/android/launcher2/CellLayout;
    .end local v18           #newIcon_nextpage:Landroid/view/View;
    .end local v20           #nextPage:I
    :cond_16
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_17

    .line 1253
    const/16 v20, 0x0

    .restart local v20       #nextPage:I
    goto :goto_8

    .line 1255
    .end local v20           #nextPage:I
    :cond_17
    move/from16 v20, v22

    .restart local v20       #nextPage:I
    goto :goto_8

    .line 1276
    .end local v8           #cl_hot:Lcom/android/launcher2/CellLayout;
    .end local v11           #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    .end local v16           #newIcon_hot:Landroid/view/View;
    .end local v20           #nextPage:I
    :pswitch_2
    if-eqz v12, :cond_19

    .line 1277
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_18

    .line 1278
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1279
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1280
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 1283
    :cond_18
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v27

    if-nez v27, :cond_1a

    .line 1284
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 1285
    .restart local v11       #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 1286
    .restart local v8       #cl_hot:Lcom/android/launcher2/CellLayout;
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 1288
    .restart local v16       #newIcon_hot:Landroid/view/View;
    if-eqz v16, :cond_19

    .line 1289
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 1290
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 1308
    .end local v8           #cl_hot:Lcom/android/launcher2/CellLayout;
    .end local v11           #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    .end local v16           #newIcon_hot:Landroid/view/View;
    :cond_19
    :goto_9
    const/16 v25, 0x1

    .line 1309
    goto/16 :goto_1

    .line 1293
    :cond_1a
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->is12KEYNaviKeyFocus(Landroid/view/View;)Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 1294
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 1297
    :cond_1b
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout;

    .line 1298
    .local v14, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v14}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    .line 1299
    .local v6, children:Lcom/android/launcher2/CellLayoutChildren;
    const/16 v27, -0x1

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v14, v6, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v15

    .line 1300
    .local v15, newIcon:Landroid/view/View;
    if-eqz v15, :cond_1c

    .line 1301
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    .line 1302
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_9

    .line 1304
    :cond_1c
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->requestFocus()Z

    goto :goto_9

    .line 1311
    .end local v6           #children:Lcom/android/launcher2/CellLayoutChildren;
    .end local v14           #layout:Lcom/android/launcher2/CellLayout;
    .end local v15           #newIcon:Landroid/view/View;
    :pswitch_3
    if-eqz v12, :cond_1e

    .line 1312
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_1d

    .line 1313
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1314
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1315
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 1317
    :cond_1d
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v27

    if-nez v27, :cond_1e

    .line 1318
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 1319
    .restart local v11       #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 1320
    .restart local v8       #cl_hot:Lcom/android/launcher2/CellLayout;
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 1322
    .restart local v16       #newIcon_hot:Landroid/view/View;
    if-eqz v16, :cond_1e

    .line 1323
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 1324
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 1328
    .end local v8           #cl_hot:Lcom/android/launcher2/CellLayout;
    .end local v11           #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    .end local v16           #newIcon_hot:Landroid/view/View;
    :cond_1e
    const/16 v25, 0x1

    .line 1329
    goto/16 :goto_1

    .line 1133
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleMenuAppGridIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 27
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 679
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/CellLayoutChildren;

    .line 680
    .local v20, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayoutMenu;

    .line 681
    .local v9, grandparent:Lcom/android/launcher2/CellLayoutMenu;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 682
    .local v14, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v7

    .line 683
    .local v7, countX:I
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v8

    .line 685
    .local v8, countY:I
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/MenuAppsGrid;

    .line 686
    .local v15, menuGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v12

    .line 687
    .local v12, itemCount:I
    invoke-virtual {v15, v9}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuAppsGrid;->indexToPage(I)I

    move-result v19

    .line 688
    .local v19, pageIndex:I
    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v18

    .line 691
    .local v18, pageCount:I
    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v23, v0

    .line 692
    .local v23, x:I
    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v24, v0

    .line 693
    .local v24, y:I
    mul-int v25, v24, v7

    add-int v11, v25, v23

    .line 695
    .local v11, iconIndex:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 696
    .local v2, action:I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v2, v0, :cond_1

    const/4 v10, 0x1

    .line 697
    .local v10, handleKeyEvent:Z
    :goto_0
    const/16 v16, 0x0

    .line 700
    .local v16, newParent:Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .line 701
    .local v4, child:Landroid/view/View;
    const/16 v22, 0x0

    .line 702
    .local v22, wasHandled:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 704
    .local v6, configuration:Landroid/content/res/Configuration;
    sparse-switch p1, :sswitch_data_0

    .line 930
    :cond_0
    :goto_1
    return v22

    .line 696
    .end local v4           #child:Landroid/view/View;
    .end local v6           #configuration:Landroid/content/res/Configuration;
    .end local v10           #handleKeyEvent:Z
    .end local v16           #newParent:Landroid/view/ViewGroup;
    .end local v22           #wasHandled:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 706
    .restart local v4       #child:Landroid/view/View;
    .restart local v6       #configuration:Landroid/content/res/Configuration;
    .restart local v10       #handleKeyEvent:Z
    .restart local v16       #newParent:Landroid/view/ViewGroup;
    .restart local v22       #wasHandled:Z
    :sswitch_0
    if-eqz v10, :cond_2

    .line 708
    if-lez v11, :cond_3

    .line 709
    add-int/lit8 v25, v11, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 710
    if-eqz v4, :cond_2

    .line 711
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 712
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 742
    :cond_2
    :goto_2
    const/16 v22, 0x1

    .line 743
    goto :goto_1

    .line 715
    :cond_3
    sget-boolean v25, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v25, :cond_2

    .line 716
    if-lez v19, :cond_4

    .line 717
    add-int/lit8 v25, v19, -0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    .line 718
    if-eqz v16, :cond_2

    .line 719
    add-int/lit8 v25, v19, -0x1

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageFromFocusHelper(II)V

    move-object/from16 v25, v16

    .line 720
    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 721
    if-eqz v4, :cond_2

    .line 723
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 724
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 727
    :cond_4
    sget-boolean v25, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v25, :cond_2

    .line 728
    add-int/lit8 v25, v18, -0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    .line 729
    if-eqz v16, :cond_2

    .line 730
    add-int/lit8 v25, v18, -0x1

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageFromFocusHelper(II)V

    move-object/from16 v25, v16

    .line 731
    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 732
    if-eqz v4, :cond_2

    .line 734
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 735
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 745
    :sswitch_1
    if-eqz v10, :cond_5

    .line 747
    add-int/lit8 v25, v12, -0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_6

    .line 748
    add-int/lit8 v25, v11, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 749
    if-eqz v4, :cond_5

    .line 751
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 752
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 782
    :cond_5
    :goto_3
    const/16 v22, 0x1

    .line 783
    goto/16 :goto_1

    .line 755
    :cond_6
    sget-boolean v25, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v25, :cond_5

    .line 756
    add-int/lit8 v25, v18, -0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 757
    add-int/lit8 v25, v19, 0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    .line 758
    if-eqz v16, :cond_5

    .line 759
    add-int/lit8 v25, v19, 0x1

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageFromFocusHelper(II)V

    move-object/from16 v25, v16

    .line 760
    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 761
    if-eqz v4, :cond_5

    .line 763
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 764
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 767
    :cond_7
    sget-boolean v25, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v25, :cond_5

    .line 768
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    .line 769
    if-eqz v16, :cond_5

    .line 770
    const/16 v25, 0x0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageFromFocusHelper(II)V

    move-object/from16 v25, v16

    .line 771
    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 772
    if-eqz v4, :cond_5

    .line 774
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 775
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 785
    :sswitch_2
    if-eqz v10, :cond_8

    .line 787
    if-lez v24, :cond_9

    .line 788
    add-int/lit8 v25, v24, -0x1

    mul-int v25, v25, v7

    add-int v17, v25, v23

    .line 789
    .local v17, newiconIndex:I
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 790
    if-eqz v4, :cond_8

    .line 792
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 793
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 807
    .end local v17           #newiconIndex:I
    :cond_8
    :goto_4
    const/16 v22, 0x1

    .line 808
    goto/16 :goto_1

    .line 795
    :cond_9
    if-eqz v15, :cond_8

    .line 796
    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v21

    .line 797
    .local v21, stateTitleBar:Landroid/view/ViewGroup;
    if-eqz v21, :cond_8

    .line 798
    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 799
    .local v5, childCount:I
    if-lez v5, :cond_8

    .line 800
    add-int/lit8 v25, v5, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 801
    .local v3, activeTitleBar:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 802
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 810
    .end local v3           #activeTitleBar:Landroid/view/View;
    .end local v5           #childCount:I
    .end local v21           #stateTitleBar:Landroid/view/ViewGroup;
    :sswitch_3
    if-eqz v10, :cond_a

    .line 812
    add-int/lit8 v25, v8, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 813
    add-int/lit8 v25, v12, -0x1

    add-int/lit8 v26, v24, 0x1

    mul-int v26, v26, v7

    add-int v26, v26, v23

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 814
    .restart local v17       #newiconIndex:I
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 815
    if-eqz v4, :cond_a

    .line 817
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 818
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 822
    .end local v17           #newiconIndex:I
    :cond_a
    const/16 v22, 0x1

    .line 823
    goto/16 :goto_1

    .line 827
    :sswitch_4
    iget v0, v6, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    iget v0, v6, Landroid/content/res/Configuration;->navigation:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 830
    :cond_b
    move-object/from16 v0, v20

    invoke-static {v0, v11, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 831
    if-nez v10, :cond_d

    if-eqz v4, :cond_d

    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v25

    sget-object v26, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_d

    .line 833
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuAppsGrid;->onClick(Landroid/view/View;)V

    .line 834
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 840
    :cond_c
    :goto_5
    const/16 v22, 0x1

    .line 841
    goto/16 :goto_1

    .line 835
    :cond_d
    if-eqz v10, :cond_c

    if-eqz v4, :cond_c

    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v25

    sget-object v26, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 837
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuAppsGrid;->onClick(Landroid/view/View;)V

    .line 838
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    .line 843
    :sswitch_5
    if-eqz v10, :cond_e

    .line 846
    if-lez v19, :cond_f

    .line 847
    add-int/lit8 v25, v19, -0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    .line 848
    if-eqz v16, :cond_e

    .line 849
    add-int/lit8 v25, v19, -0x1

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    move-object/from16 v25, v16

    .line 850
    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 851
    if-eqz v4, :cond_e

    .line 853
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 854
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 866
    :cond_e
    :goto_6
    const/16 v22, 0x1

    .line 867
    goto/16 :goto_1

    .line 857
    :cond_f
    if-eqz v11, :cond_e

    .line 858
    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 859
    if-eqz v4, :cond_e

    .line 861
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 862
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_6

    .line 869
    :sswitch_6
    if-eqz v10, :cond_10

    .line 872
    add-int/lit8 v25, v18, -0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    .line 873
    add-int/lit8 v25, v19, 0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    .line 874
    if-eqz v16, :cond_10

    .line 875
    add-int/lit8 v25, v19, 0x1

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    move-object/from16 v25, v16

    .line 876
    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 877
    if-eqz v4, :cond_10

    .line 879
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 880
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 895
    :cond_10
    :goto_7
    const/16 v22, 0x1

    .line 896
    goto/16 :goto_1

    .line 884
    :cond_11
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v25

    add-int/lit8 v13, v25, -0x1

    .line 885
    .local v13, lastIndex:I
    if-eq v11, v13, :cond_10

    .line 886
    move-object/from16 v0, v20

    invoke-static {v0, v13, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 887
    if-eqz v4, :cond_10

    .line 889
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 890
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    .line 898
    .end local v13           #lastIndex:I
    :sswitch_7
    if-eqz v10, :cond_12

    .line 900
    if-eqz v11, :cond_12

    .line 901
    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 902
    if-eqz v4, :cond_12

    .line 904
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 905
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 909
    :cond_12
    const/16 v22, 0x1

    .line 910
    goto/16 :goto_1

    .line 912
    :sswitch_8
    if-eqz v10, :cond_13

    .line 914
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v25

    add-int/lit8 v13, v25, -0x1

    .line 915
    .restart local v13       #lastIndex:I
    if-eq v11, v13, :cond_13

    .line 916
    move-object/from16 v0, v20

    invoke-static {v0, v13, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 917
    if-eqz v4, :cond_13

    .line 919
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 920
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 925
    .end local v13           #lastIndex:I
    :cond_13
    const/16 v22, 0x1

    .line 926
    goto/16 :goto_1

    .line 704
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handlePagedViewWidgetKeyEvent(Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .locals 24
    .parameter "w"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/PagedViewGridLayout;

    .line 471
    .local v14, parent:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v14}, Lcom/android/launcher2/PagedViewGridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/MenuWidgets;

    .line 472
    .local v9, menuWidgets:Lcom/android/launcher2/PagedView;
    invoke-static {v9}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v15

    .line 473
    .local v15, tabHost:Landroid/widget/TabHost;
    const v22, 0x1020013

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TabWidget;

    .line 474
    .local v16, tabs:Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v19

    .line 475
    .local v19, widgetIndex:I
    invoke-virtual {v14}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v18

    .line 476
    .local v18, widgetCount:I
    invoke-virtual {v9, v14}, Lcom/android/launcher2/MenuWidgets;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/MenuWidgets;->indexToPage(I)I

    move-result v13

    .line 477
    .local v13, pageIndex:I
    invoke-virtual {v9}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v12

    .line 478
    .local v12, pageCount:I
    invoke-virtual {v14}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v3

    .line 479
    .local v3, cellCountX:I
    invoke-virtual {v14}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v4

    .line 480
    .local v4, cellCountY:I
    rem-int v20, v19, v3

    .line 481
    .local v20, x:I
    div-int v21, v19, v3

    .line 483
    .local v21, y:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 484
    .local v2, action:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_0

    const/4 v7, 0x1

    .line 485
    .local v7, handleKeyEvent:Z
    :goto_0
    const/4 v10, 0x0

    .line 488
    .local v10, newParent:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 489
    .local v5, child:Landroid/view/View;
    const/16 v17, 0x0

    .line 490
    .local v17, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 672
    :goto_1
    return v17

    .line 484
    .end local v5           #child:Landroid/view/View;
    .end local v7           #handleKeyEvent:Z
    .end local v10           #newParent:Landroid/view/ViewGroup;
    .end local v17           #wasHandled:Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 492
    .restart local v5       #child:Landroid/view/View;
    .restart local v7       #handleKeyEvent:Z
    .restart local v10       #newParent:Landroid/view/ViewGroup;
    .restart local v17       #wasHandled:Z
    :sswitch_0
    if-eqz v7, :cond_1

    .line 494
    if-lez v19, :cond_2

    .line 495
    add-int/lit8 v22, v19, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 496
    add-int/lit8 v22, v19, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->playSoundEffect(I)V

    .line 525
    :cond_1
    :goto_2
    const/16 v17, 0x1

    .line 526
    goto :goto_1

    .line 498
    :cond_2
    sget-boolean v22, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v22, :cond_1

    .line 499
    if-lez v13, :cond_3

    .line 500
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 501
    if-eqz v10, :cond_1

    .line 502
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 503
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 504
    if-eqz v5, :cond_1

    .line 506
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 507
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 510
    :cond_3
    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v22, :cond_1

    .line 511
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 512
    if-eqz v10, :cond_1

    .line 513
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 514
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 515
    if-eqz v5, :cond_1

    .line 517
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 518
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 528
    :sswitch_1
    if-eqz v7, :cond_4

    .line 530
    add-int/lit8 v22, v18, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 531
    add-int/lit8 v22, v19, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 532
    add-int/lit8 v22, v19, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->playSoundEffect(I)V

    .line 561
    :cond_4
    :goto_3
    const/16 v17, 0x1

    .line 562
    goto/16 :goto_1

    .line 534
    :cond_5
    sget-boolean v22, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v22, :cond_4

    .line 535
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    if-ge v13, v0, :cond_6

    .line 536
    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 537
    if-eqz v10, :cond_4

    .line 538
    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 539
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 540
    if-eqz v5, :cond_4

    .line 542
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 543
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 546
    :cond_6
    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v22, :cond_4

    .line 547
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 548
    if-eqz v10, :cond_4

    .line 549
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 550
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 551
    if-eqz v5, :cond_4

    .line 553
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 554
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 564
    :sswitch_2
    if-eqz v7, :cond_7

    .line 566
    if-lez v21, :cond_8

    .line 567
    add-int/lit8 v22, v21, -0x1

    mul-int v22, v22, v3

    add-int v11, v22, v20

    .line 568
    .local v11, newWidgetIndex:I
    invoke-virtual {v14, v11}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 569
    if-eqz v5, :cond_7

    .line 571
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 572
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 584
    .end local v11           #newWidgetIndex:I
    :cond_7
    :goto_4
    const/16 v17, 0x1

    .line 585
    goto/16 :goto_1

    .line 575
    :cond_8
    const v22, 0x7f0700a6

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 576
    .local v8, mSearchTitleBar:Landroid/view/ViewGroup;
    if-eqz v8, :cond_9

    .line 577
    const/16 v17, 0x0

    .line 578
    goto/16 :goto_1

    .line 580
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TabWidget;->requestFocus()Z

    .line 581
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->playSoundEffect(I)V

    goto :goto_4

    .line 587
    .end local v8           #mSearchTitleBar:Landroid/view/ViewGroup;
    :sswitch_3
    if-eqz v7, :cond_a

    .line 589
    add-int/lit8 v22, v4, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 590
    add-int/lit8 v22, v18, -0x1

    add-int/lit8 v23, v21, 0x1

    mul-int v23, v23, v3

    add-int v23, v23, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 591
    .restart local v11       #newWidgetIndex:I
    invoke-virtual {v14, v11}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 592
    if-eqz v5, :cond_a

    .line 594
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 595
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 599
    .end local v11           #newWidgetIndex:I
    :cond_a
    const/16 v17, 0x1

    .line 600
    goto/16 :goto_1

    .line 603
    :sswitch_4
    if-eqz v7, :cond_b

    move-object v6, v9

    .line 605
    check-cast v6, Landroid/view/View$OnClickListener;

    .line 606
    .local v6, clickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 608
    .end local v6           #clickListener:Landroid/view/View$OnClickListener;
    :cond_b
    const/16 v17, 0x1

    .line 609
    goto/16 :goto_1

    .line 611
    :sswitch_5
    if-eqz v7, :cond_d

    .line 614
    if-lez v13, :cond_e

    .line 615
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 616
    if-eqz v10, :cond_c

    .line 617
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 622
    :cond_c
    :goto_5
    if-eqz v5, :cond_d

    .line 624
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 625
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 628
    :cond_d
    const/16 v17, 0x1

    .line 629
    goto/16 :goto_1

    .line 620
    :cond_e
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_5

    .line 631
    :sswitch_6
    if-eqz v7, :cond_10

    .line 634
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    if-ge v13, v0, :cond_11

    .line 635
    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 636
    if-eqz v10, :cond_f

    .line 637
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 642
    :cond_f
    :goto_6
    if-eqz v5, :cond_10

    .line 644
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 645
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 648
    :cond_10
    const/16 v17, 0x1

    .line 649
    goto/16 :goto_1

    .line 640
    :cond_11
    add-int/lit8 v22, v18, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_6

    .line 651
    :sswitch_7
    if-eqz v7, :cond_12

    .line 653
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 654
    if-eqz v5, :cond_12

    .line 656
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 657
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 660
    :cond_12
    const/16 v17, 0x1

    .line 661
    goto/16 :goto_1

    .line 663
    :sswitch_8
    if-eqz v7, :cond_13

    .line 665
    add-int/lit8 v22, v18, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 666
    add-int/lit8 v22, v18, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->playSoundEffect(I)V

    .line 668
    :cond_13
    const/16 v17, 0x1

    .line 669
    goto/16 :goto_1

    .line 490
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method private static handleQuickAllappsIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 21
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"
    .parameter "orientation"

    .prologue
    .line 2099
    if-nez p0, :cond_0

    .line 2100
    const/16 v17, 0x1

    .line 2188
    :goto_0
    return v17

    .line 2101
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2102
    .local v3, allAppsIcon:Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/QuickLaunch;

    .line 2103
    .local v15, quickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-virtual {v15}, Lcom/android/launcher2/QuickLaunch;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 2104
    .local v5, frameLayout:Landroid/widget/FrameLayout;
    const v19, 0x7f070060

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Workspace;

    .line 2105
    .local v18, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 2107
    .local v7, launcher:Landroid/view/ViewGroup;
    const v19, 0x7f07006a

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/QuickLaunch;

    .line 2108
    .local v16, quickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    if-nez v16, :cond_1

    .line 2109
    sget-object v19, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v16

    .line 2111
    :cond_1
    const/4 v14, 0x0

    .line 2113
    .local v14, quickAppsButton:Landroid/view/View;
    invoke-virtual {v15}, Lcom/android/launcher2/QuickLaunch;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v14

    .line 2114
    const/4 v4, 0x0

    .line 2115
    .local v4, cameraButton:Landroid/view/View;
    if-eqz v16, :cond_4

    .line 2116
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    .line 2120
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v12

    .line 2121
    .local v12, pageIndex:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 2122
    .local v8, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v11

    .line 2125
    .local v11, pageCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 2126
    .local v2, action:I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v2, v0, :cond_5

    const/4 v6, 0x1

    .line 2127
    .local v6, handleKeyEvent:Z
    :goto_2
    const/16 v17, 0x0

    .line 2129
    .local v17, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2164
    :pswitch_0
    if-eqz v6, :cond_3

    .line 2166
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_2

    .line 2167
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2168
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 2169
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v12

    .line 2171
    :cond_2
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v13

    .line 2173
    .local v13, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v13}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v13, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v9

    .line 2175
    .local v9, newIcon:Landroid/view/View;
    if-eqz v9, :cond_b

    const/16 v19, 0x2

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 2177
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 2182
    .end local v9           #newIcon:Landroid/view/View;
    .end local v13           #parent:Lcom/android/launcher2/CellLayoutChildren;
    :cond_3
    :goto_3
    const/16 v17, 0x1

    .line 2183
    goto/16 :goto_0

    .line 2118
    .end local v2           #action:I
    .end local v6           #handleKeyEvent:Z
    .end local v8           #layout:Lcom/android/launcher2/CellLayout;
    .end local v11           #pageCount:I
    .end local v12           #pageIndex:I
    .end local v17           #wasHandled:Z
    :cond_4
    invoke-virtual {v15}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    goto :goto_1

    .line 2126
    .restart local v2       #action:I
    .restart local v8       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v11       #pageCount:I
    .restart local v12       #pageIndex:I
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 2132
    .restart local v6       #handleKeyEvent:Z
    .restart local v17       #wasHandled:Z
    :pswitch_1
    if-eqz v6, :cond_7

    .line 2134
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_6

    .line 2135
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2136
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 2137
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v12

    .line 2140
    :cond_6
    add-int/lit8 v19, v11, -0x1

    move/from16 v0, v19

    if-ge v12, v0, :cond_8

    .line 2141
    add-int/lit8 v10, v12, 0x1

    .line 2147
    .local v10, nextPage:I
    :goto_4
    if-eq v10, v12, :cond_7

    .line 2148
    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v13

    .line 2150
    .restart local v13       #parent:Lcom/android/launcher2/CellLayoutChildren;
    const/16 v19, -0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v13, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v9

    .line 2151
    .restart local v9       #newIcon:Landroid/view/View;
    if-eqz v9, :cond_a

    .line 2152
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 2161
    .end local v9           #newIcon:Landroid/view/View;
    .end local v10           #nextPage:I
    .end local v13           #parent:Lcom/android/launcher2/CellLayoutChildren;
    :cond_7
    :goto_5
    const/16 v17, 0x1

    .line 2162
    goto/16 :goto_0

    .line 2142
    :cond_8
    sget-boolean v19, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v19, :cond_9

    .line 2143
    const/4 v10, 0x0

    .restart local v10       #nextPage:I
    goto :goto_4

    .line 2145
    .end local v10           #nextPage:I
    :cond_9
    move v10, v12

    .restart local v10       #nextPage:I
    goto :goto_4

    .line 2155
    .restart local v9       #newIcon:Landroid/view/View;
    .restart local v13       #parent:Lcom/android/launcher2/CellLayoutChildren;
    :cond_a
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2156
    if-eqz v15, :cond_7

    if-eqz v14, :cond_7

    .line 2157
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 2178
    .end local v10           #nextPage:I
    :cond_b
    if-eqz v4, :cond_3

    .line 2179
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 2129
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleQuickCameraIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 23
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"
    .parameter "orientation"

    .prologue
    .line 1999
    if-nez p0, :cond_0

    .line 2000
    const/16 v19, 0x1

    .line 2090
    :goto_0
    return v19

    .line 2001
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2002
    .local v4, cameraIconLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/QuickLaunch;

    .line 2003
    .local v10, layoutParent:Lcom/android/launcher2/QuickLaunch;
    invoke-virtual {v10}, Lcom/android/launcher2/QuickLaunch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 2004
    .local v6, framelayout:Landroid/widget/FrameLayout;
    const v21, 0x7f070060

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Workspace;

    .line 2005
    .local v20, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 2007
    .local v8, launcher:Landroid/view/ViewGroup;
    const v21, 0x7f07006a

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/QuickLaunch;

    .line 2008
    .local v18, quickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    const v21, 0x7f070068

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/QuickLaunch;

    .line 2009
    .local v17, quickLaunch:Lcom/android/launcher2/QuickLaunch;
    if-nez v18, :cond_1

    .line 2010
    sget-object v21, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v18

    .line 2011
    :cond_1
    if-nez v17, :cond_2

    .line 2012
    sget-object v21, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v17

    .line 2013
    :cond_2
    const/16 v16, 0x0

    .line 2014
    .local v16, quickAppsButton:Landroid/view/View;
    if-eqz v17, :cond_3

    .line 2015
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/QuickLaunch;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v16

    .line 2016
    :cond_3
    const/4 v3, 0x0

    .line 2017
    .local v3, cameraButton:Landroid/view/View;
    if-eqz v18, :cond_7

    .line 2018
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    .line 2022
    :cond_4
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v13

    .line 2023
    .local v13, pageIndex:I
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    .line 2024
    .local v9, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v12

    .line 2027
    .local v12, pageCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 2028
    .local v2, action:I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v2, v0, :cond_8

    const/4 v7, 0x1

    .line 2029
    .local v7, handleKeyEvent:Z
    :goto_2
    const/16 v19, 0x0

    .line 2031
    .local v19, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2033
    :pswitch_0
    if-eqz v7, :cond_6

    .line 2035
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->isFinished()Z

    move-result v21

    if-nez v21, :cond_5

    .line 2036
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2037
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 2038
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v13

    .line 2041
    :cond_5
    if-lez v13, :cond_9

    .line 2042
    add-int/lit8 v15, v13, -0x1

    .line 2048
    .local v15, prevPage:I
    :goto_3
    if-eq v15, v13, :cond_6

    .line 2050
    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v14

    .line 2052
    .local v14, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v14}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v9, v14, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v11

    .line 2055
    .local v11, newIcon:Landroid/view/View;
    if-eqz v11, :cond_b

    .line 2056
    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    .line 2065
    .end local v11           #newIcon:Landroid/view/View;
    .end local v14           #parent:Lcom/android/launcher2/CellLayoutChildren;
    .end local v15           #prevPage:I
    :cond_6
    :goto_4
    const/16 v19, 0x1

    .line 2066
    goto/16 :goto_0

    .line 2019
    .end local v2           #action:I
    .end local v7           #handleKeyEvent:Z
    .end local v9           #layout:Lcom/android/launcher2/CellLayout;
    .end local v12           #pageCount:I
    .end local v13           #pageIndex:I
    .end local v19           #wasHandled:Z
    :cond_7
    if-eqz v17, :cond_4

    .line 2020
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    goto :goto_1

    .line 2028
    .restart local v2       #action:I
    .restart local v9       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v12       #pageCount:I
    .restart local v13       #pageIndex:I
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 2043
    .restart local v7       #handleKeyEvent:Z
    .restart local v19       #wasHandled:Z
    :cond_9
    sget-boolean v21, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v21, :cond_a

    .line 2044
    add-int/lit8 v15, v12, -0x1

    .restart local v15       #prevPage:I
    goto :goto_3

    .line 2046
    .end local v15           #prevPage:I
    :cond_a
    move v15, v13

    .restart local v15       #prevPage:I
    goto :goto_3

    .line 2057
    .restart local v11       #newIcon:Landroid/view/View;
    .restart local v14       #parent:Lcom/android/launcher2/CellLayoutChildren;
    :cond_b
    if-eqz v3, :cond_6

    .line 2059
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2060
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 2068
    .end local v11           #newIcon:Landroid/view/View;
    .end local v14           #parent:Lcom/android/launcher2/CellLayoutChildren;
    .end local v15           #prevPage:I
    :pswitch_1
    if-eqz v7, :cond_d

    .line 2070
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->isFinished()Z

    move-result v21

    if-nez v21, :cond_c

    .line 2071
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2072
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 2073
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v13

    .line 2075
    :cond_c
    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 2077
    .local v5, cc:Lcom/android/launcher2/CellLayoutChildren;
    const/16 v21, -0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v9, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v11

    .line 2078
    .restart local v11       #newIcon:Landroid/view/View;
    if-eqz v11, :cond_e

    const/16 v21, 0x2

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 2080
    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    .line 2085
    .end local v5           #cc:Lcom/android/launcher2/CellLayoutChildren;
    .end local v11           #newIcon:Landroid/view/View;
    :cond_d
    :goto_5
    const/16 v19, 0x1

    .line 2086
    goto/16 :goto_0

    .line 2081
    .restart local v5       #cc:Lcom/android/launcher2/CellLayoutChildren;
    .restart local v11       #newIcon:Landroid/view/View;
    :cond_e
    if-eqz v16, :cond_d

    .line 2082
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 2031
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleTabKeyEvent(Lcom/android/launcher2/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 937
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v9

    if-nez v9, :cond_0

    move v7, v8

    .line 989
    :goto_0
    return v7

    .line 939
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FocusOnlyTabWidget;

    .line 940
    .local v3, parent:Lcom/android/launcher2/FocusOnlyTabWidget;
    invoke-static {v3}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 941
    .local v5, tabHost:Landroid/widget/TabHost;
    const v9, 0x1020011

    invoke-virtual {v5, v9}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 943
    .local v1, contents:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v4

    .line 944
    .local v4, tabCount:I
    invoke-virtual {v3, p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabIndex(Landroid/view/View;)I

    move-result v6

    .line 946
    .local v6, tabIndex:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 947
    .local v0, action:I
    if-eq v0, v2, :cond_1

    .line 948
    .local v2, handleKeyEvent:Z
    :goto_1
    const/4 v7, 0x0

    .line 949
    .local v7, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 974
    :sswitch_0
    const/4 v7, 0x1

    .line 975
    goto :goto_0

    .end local v2           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_1
    move v2, v8

    .line 947
    goto :goto_1

    .line 951
    .restart local v2       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :sswitch_1
    if-eqz v2, :cond_2

    .line 953
    if-lez v6, :cond_2

    .line 954
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 957
    :cond_2
    const/4 v7, 0x1

    .line 958
    goto :goto_0

    .line 960
    :sswitch_2
    if-eqz v2, :cond_3

    .line 962
    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_4

    .line 963
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 970
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 971
    goto :goto_0

    .line 965
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 966
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 977
    :sswitch_3
    if-eqz v2, :cond_5

    .line 979
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 980
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 982
    :cond_5
    const/4 v7, 0x1

    .line 983
    goto :goto_0

    .line 985
    :sswitch_4
    const/4 v7, 0x1

    .line 986
    goto :goto_0

    .line 949
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleTitleBarKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f070084

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuAppsGrid;

    .line 233
    .local v6, menuGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 234
    .local v0, action:I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_0

    const/4 v5, 0x1

    .line 235
    .local v5, handleKeyEvent:Z
    :goto_0
    const/4 v7, 0x0

    .line 236
    .local v7, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 291
    :goto_1
    return v7

    .line 234
    .end local v5           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 238
    .restart local v5       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :pswitch_0
    if-eqz v5, :cond_1

    .line 239
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 240
    .local v1, activeTitleBar:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v8, v9, :cond_2

    .line 244
    const v8, 0x7f07008f

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 248
    .local v2, backButton:Landroid/view/View;
    :goto_2
    const v8, 0x7f07005d

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 249
    .local v4, doneButton:Landroid/view/View;
    const v8, 0x7f070095

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 251
    .local v3, cancelButton:Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v4, :cond_3

    if-eqz v3, :cond_3

    .line 252
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 253
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 261
    .end local v1           #activeTitleBar:Landroid/view/ViewGroup;
    .end local v2           #backButton:Landroid/view/View;
    .end local v3           #cancelButton:Landroid/view/View;
    .end local v4           #doneButton:Landroid/view/View;
    :cond_1
    :goto_3
    const/4 v7, 0x1

    .line 262
    goto :goto_1

    .line 246
    .restart local v1       #activeTitleBar:Landroid/view/ViewGroup;
    :cond_2
    const v8, 0x7f070092

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .restart local v2       #backButton:Landroid/view/View;
    goto :goto_2

    .line 254
    .restart local v3       #cancelButton:Landroid/view/View;
    .restart local v4       #doneButton:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v3, :cond_4

    if-eqz v2, :cond_4

    .line 255
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 256
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 257
    :cond_4
    if-eqz v2, :cond_1

    .line 258
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 264
    .end local v1           #activeTitleBar:Landroid/view/ViewGroup;
    .end local v2           #backButton:Landroid/view/View;
    .end local v3           #cancelButton:Landroid/view/View;
    .end local v4           #doneButton:Landroid/view/View;
    :pswitch_1
    if-eqz v5, :cond_5

    .line 265
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 266
    .restart local v1       #activeTitleBar:Landroid/view/ViewGroup;
    if-eqz v1, :cond_5

    .line 269
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v8, v9, :cond_6

    .line 270
    const v8, 0x7f07008f

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 274
    .restart local v2       #backButton:Landroid/view/View;
    :goto_4
    const v8, 0x7f07005d

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 275
    .restart local v4       #doneButton:Landroid/view/View;
    const v8, 0x7f070095

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 277
    .restart local v3       #cancelButton:Landroid/view/View;
    if-eqz v3, :cond_7

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v3, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 278
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 279
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 287
    .end local v1           #activeTitleBar:Landroid/view/ViewGroup;
    .end local v2           #backButton:Landroid/view/View;
    .end local v3           #cancelButton:Landroid/view/View;
    .end local v4           #doneButton:Landroid/view/View;
    :cond_5
    :goto_5
    const/4 v7, 0x1

    .line 288
    goto/16 :goto_1

    .line 272
    .restart local v1       #activeTitleBar:Landroid/view/ViewGroup;
    :cond_6
    const v8, 0x7f070092

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .restart local v2       #backButton:Landroid/view/View;
    goto :goto_4

    .line 280
    .restart local v3       #cancelButton:Landroid/view/View;
    .restart local v4       #doneButton:Landroid/view/View;
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v2, :cond_8

    if-eqz v3, :cond_8

    .line 281
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 282
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    .line 283
    :cond_8
    if-eqz v2, :cond_5

    .line 284
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleWorkspaceAllAppsKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 1884
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1885
    .local v10, parent:Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1886
    .local v5, launcher:Landroid/view/ViewGroup;
    const v14, 0x7f070060

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Workspace;

    .line 1887
    .local v13, workspace:Lcom/android/launcher2/Workspace;
    const v14, 0x7f07006e

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1889
    .local v0, AllAppsButton:Landroid/view/View;
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 1890
    .local v9, pageIndex:I
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .line 1892
    .local v8, pageCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 1893
    .local v1, action:I
    const/4 v14, 0x1

    if-eq v1, v14, :cond_0

    const/4 v4, 0x1

    .line 1894
    .local v4, handleKeyEvent:Z
    :goto_0
    const/4 v11, 0x0

    .line 1896
    .local v11, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 1991
    :goto_1
    return v11

    .line 1893
    .end local v4           #handleKeyEvent:Z
    .end local v11           #wasHandled:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1898
    .restart local v4       #handleKeyEvent:Z
    .restart local v11       #wasHandled:Z
    :sswitch_0
    const/4 v11, 0x1

    .line 1899
    goto :goto_1

    .line 1901
    :sswitch_1
    if-eqz v4, :cond_2

    .line 1903
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1904
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1905
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1906
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 1908
    :cond_1
    if-lez v9, :cond_3

    .line 1909
    add-int/lit8 v14, v9, -0x1

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1915
    .local v12, whichPage:I
    :goto_2
    if-eq v12, v9, :cond_2

    .line 1916
    invoke-virtual {v13, v12}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 1918
    .local v6, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v13, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1919
    invoke-static {v13, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    .line 1920
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v14

    const/4 v15, -0x1

    invoke-static {v6, v10, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1922
    .local v7, newIcon:Landroid/view/View;
    if-eqz v7, :cond_5

    .line 1923
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1930
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    .end local v12           #whichPage:I
    :cond_2
    :goto_3
    const/4 v11, 0x1

    .line 1931
    goto :goto_1

    .line 1910
    :cond_3
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_4

    .line 1911
    move v12, v8

    .restart local v12       #whichPage:I
    goto :goto_2

    .line 1913
    .end local v12           #whichPage:I
    :cond_4
    move v12, v9

    .restart local v12       #whichPage:I
    goto :goto_2

    .line 1925
    .restart local v6       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1926
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 1934
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    .end local v12           #whichPage:I
    :sswitch_2
    if-eqz v4, :cond_7

    .line 1935
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_6

    .line 1936
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1937
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1938
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 1940
    :cond_6
    if-ge v9, v8, :cond_8

    .line 1941
    add-int/lit8 v14, v9, 0x1

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1947
    .restart local v12       #whichPage:I
    :goto_4
    if-eq v12, v9, :cond_7

    .line 1948
    invoke-virtual {v13, v12}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 1950
    .restart local v6       #layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v13, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1951
    invoke-static {v13, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    .line 1952
    const/4 v14, -0x1

    const/4 v15, 0x1

    invoke-static {v6, v10, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1954
    .restart local v7       #newIcon:Landroid/view/View;
    if-eqz v7, :cond_a

    .line 1955
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1962
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    .end local v12           #whichPage:I
    :cond_7
    :goto_5
    const/4 v11, 0x1

    .line 1963
    goto/16 :goto_1

    .line 1942
    :cond_8
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_9

    .line 1943
    const/4 v12, 0x0

    .restart local v12       #whichPage:I
    goto :goto_4

    .line 1945
    .end local v12           #whichPage:I
    :cond_9
    move v12, v9

    .restart local v12       #whichPage:I
    goto :goto_4

    .line 1957
    .restart local v6       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1958
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    .line 1965
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    .end local v12           #whichPage:I
    :sswitch_3
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1966
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->launchAllAppsIcon()V

    .line 1969
    :cond_b
    :sswitch_4
    const/4 v11, 0x1

    .line 1970
    goto/16 :goto_1

    .line 1972
    :sswitch_5
    if-eqz v4, :cond_d

    .line 1973
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_c

    .line 1974
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1975
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1976
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 1978
    :cond_c
    invoke-virtual {v13, v9}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 1979
    .local v3, cl:Lcom/android/launcher2/CellLayout;
    if-eqz v3, :cond_d

    .line 1980
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 1981
    .local v2, cc:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v14

    const/4 v15, -0x1

    invoke-static {v3, v2, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1982
    .restart local v7       #newIcon:Landroid/view/View;
    if-eqz v7, :cond_d

    .line 1983
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1986
    .end local v2           #cc:Lcom/android/launcher2/CellLayoutChildren;
    .end local v3           #cl:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    :cond_d
    const/4 v11, 0x1

    .line 1987
    goto/16 :goto_1

    .line 1896
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_5
        0x14 -> :sswitch_4
        0x15 -> :sswitch_0
        0x16 -> :sswitch_2
        0x42 -> :sswitch_3
        0x5c -> :sswitch_1
        0x5d -> :sswitch_2
    .end sparse-switch
.end method

.method private static handleWorkspaceIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 27
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"
    .parameter "orientation"

    .prologue
    .line 1458
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/launcher2/CellLayoutChildren;

    move/from16 v24, v0

    if-nez v24, :cond_2

    :cond_0
    const/16 v22, 0x1

    .line 1654
    :cond_1
    :goto_0
    return v22

    .line 1459
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/CellLayoutChildren;

    .line 1460
    .local v17, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayout;

    .line 1461
    .local v11, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/Workspace;

    .line 1462
    .local v23, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1463
    .local v10, launcher:Landroid/view/ViewGroup;
    const v24, 0x7f070062

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Hotseat;

    .line 1464
    .local v8, hotseat:Lcom/android/launcher2/Hotseat;
    const v24, 0x7f07006a

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/QuickLaunch;

    .line 1465
    .local v21, quickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    const v24, 0x7f070068

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/QuickLaunch;

    .line 1466
    .local v20, quickLaunch:Lcom/android/launcher2/QuickLaunch;
    if-nez v21, :cond_3

    .line 1467
    sget-object v24, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v21

    .line 1468
    :cond_3
    if-nez v20, :cond_4

    .line 1469
    sget-object v24, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v20

    .line 1470
    :cond_4
    const/16 v19, 0x0

    .line 1471
    .local v19, quickAppsButton:Landroid/view/View;
    if-eqz v20, :cond_5

    .line 1472
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/QuickLaunch;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v19

    .line 1473
    :cond_5
    const/4 v4, 0x0

    .line 1474
    .local v4, cameraButton:Landroid/view/View;
    if-eqz v21, :cond_b

    .line 1475
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    .line 1479
    :cond_6
    :goto_1
    if-nez v8, :cond_7

    .line 1480
    sget-object v24, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v8

    .line 1483
    :cond_7
    const/4 v12, 0x0

    .line 1484
    .local v12, magazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;
    sget-boolean v24, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v24, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1485
    sget-object v24, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/HomeView;->getMagazineSoftKey()Lcom/android/launcher2/HomeMagazineSoftKey;

    move-result-object v12

    .line 1488
    :cond_8
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v16

    .line 1489
    .local v16, pageIndex:I
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v15

    .line 1492
    .local v15, pageCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 1493
    .local v3, action:I
    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v3, v0, :cond_c

    const/4 v7, 0x1

    .line 1494
    .local v7, handleKeyEvent:Z
    :goto_2
    const/16 v22, 0x0

    .line 1497
    .local v22, wasHandled:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 1499
    .local v5, config:Landroid/content/res/Configuration;
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1598
    :sswitch_0
    if-eqz v7, :cond_a

    .line 1599
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->isFinished()Z

    move-result v24

    if-nez v24, :cond_9

    .line 1600
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1601
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1602
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v16

    .line 1604
    :cond_9
    const/16 v24, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-static {v11, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1605
    .local v13, newIcon:Landroid/view/View;
    if-eqz v13, :cond_1f

    .line 1606
    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 1607
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1615
    .end local v13           #newIcon:Landroid/view/View;
    :cond_a
    :goto_3
    const/16 v22, 0x1

    .line 1616
    goto/16 :goto_0

    .line 1476
    .end local v3           #action:I
    .end local v5           #config:Landroid/content/res/Configuration;
    .end local v7           #handleKeyEvent:Z
    .end local v12           #magazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;
    .end local v15           #pageCount:I
    .end local v16           #pageIndex:I
    .end local v22           #wasHandled:Z
    :cond_b
    if-eqz v20, :cond_6

    .line 1477
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    goto :goto_1

    .line 1493
    .restart local v3       #action:I
    .restart local v12       #magazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;
    .restart local v15       #pageCount:I
    .restart local v16       #pageIndex:I
    :cond_c
    const/4 v7, 0x0

    goto :goto_2

    .line 1501
    .restart local v5       #config:Landroid/content/res/Configuration;
    .restart local v7       #handleKeyEvent:Z
    .restart local v22       #wasHandled:Z
    :sswitch_1
    iget v0, v5, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1503
    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher2/Workspace;->setAllowLongPress(Z)V

    goto/16 :goto_0

    .line 1507
    :sswitch_2
    if-eqz v7, :cond_e

    .line 1508
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->isFinished()Z

    move-result v24

    if-nez v24, :cond_d

    .line 1509
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1510
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1511
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v16

    .line 1513
    :cond_d
    const/16 v24, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-static {v11, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1514
    .restart local v13       #newIcon:Landroid/view/View;
    if-eqz v13, :cond_f

    .line 1515
    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 1516
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1546
    .end local v13           #newIcon:Landroid/view/View;
    :cond_e
    :goto_4
    const/16 v22, 0x1

    .line 1547
    goto/16 :goto_0

    .line 1517
    .restart local v13       #newIcon:Landroid/view/View;
    :cond_f
    if-eqz v21, :cond_10

    if-eqz v4, :cond_10

    const/16 v24, 0x2

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 1518
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 1520
    :cond_10
    if-lez v16, :cond_11

    .line 1521
    add-int/lit8 v18, v16, -0x1

    .line 1527
    .local v18, prevPage:I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    .line 1528
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v17

    .line 1529
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v24

    const/16 v25, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v11, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v13

    .line 1531
    if-eqz v13, :cond_13

    .line 1532
    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 1533
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 1522
    .end local v18           #prevPage:I
    :cond_11
    sget-boolean v24, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v24, :cond_12

    .line 1523
    add-int/lit8 v18, v15, -0x1

    .restart local v18       #prevPage:I
    goto :goto_5

    .line 1525
    .end local v18           #prevPage:I
    :cond_12
    move/from16 v18, v16

    .restart local v18       #prevPage:I
    goto :goto_5

    .line 1536
    :cond_13
    sget-boolean v24, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v24, :cond_14

    .line 1537
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1538
    :cond_14
    if-eqz v8, :cond_e

    .line 1539
    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    .line 1540
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/android/launcher2/Hotseat;->playSoundEffect(I)V

    goto :goto_4

    .line 1549
    .end local v13           #newIcon:Landroid/view/View;
    .end local v18           #prevPage:I
    :sswitch_3
    if-eqz v7, :cond_16

    .line 1550
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->isFinished()Z

    move-result v24

    if-nez v24, :cond_15

    .line 1551
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1552
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1553
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v16

    .line 1555
    :cond_15
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-static {v11, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1556
    .restart local v13       #newIcon:Landroid/view/View;
    if-eqz v13, :cond_17

    .line 1557
    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 1558
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1595
    .end local v13           #newIcon:Landroid/view/View;
    :cond_16
    :goto_6
    const/16 v22, 0x1

    .line 1596
    goto/16 :goto_0

    .line 1559
    .restart local v13       #newIcon:Landroid/view/View;
    :cond_17
    if-eqz v21, :cond_18

    if-eqz v19, :cond_18

    const/16 v24, 0x2

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 1560
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    .line 1561
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_6

    .line 1563
    :cond_18
    add-int/lit8 v24, v15, -0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_19

    .line 1564
    add-int/lit8 v14, v16, 0x1

    .line 1569
    .local v14, nextPage:I
    :goto_7
    move/from16 v0, v16

    if-eq v14, v0, :cond_16

    .line 1570
    move-object/from16 v0, v23

    invoke-static {v0, v14}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v17

    .line 1571
    const/16 v24, -0x1

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v11, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v13

    .line 1572
    if-eqz v13, :cond_1b

    .line 1573
    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 1574
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_6

    .line 1565
    .end local v14           #nextPage:I
    :cond_19
    sget-boolean v24, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v24, :cond_1a

    .line 1566
    const/4 v14, 0x0

    .restart local v14       #nextPage:I
    goto :goto_7

    .line 1568
    .end local v14           #nextPage:I
    :cond_1a
    move/from16 v14, v16

    .restart local v14       #nextPage:I
    goto :goto_7

    .line 1577
    :cond_1b
    sget-boolean v24, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v24, :cond_1c

    .line 1578
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1580
    :cond_1c
    if-eqz v8, :cond_16

    .line 1581
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->is12KEYNaviKeyFocus(Landroid/view/View;)Z

    move-result v24

    if-eqz v24, :cond_1e

    iget-object v0, v8, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1e

    .line 1582
    iget-object v0, v8, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/android/launcher2/CellLayoutHotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    .line 1583
    .local v9, hv:Landroid/view/View;
    if-eqz v9, :cond_1d

    .line 1584
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 1589
    .end local v9           #hv:Landroid/view/View;
    :cond_1d
    :goto_8
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/android/launcher2/Hotseat;->playSoundEffect(I)V

    goto/16 :goto_6

    .line 1587
    :cond_1e
    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    goto :goto_8

    .line 1609
    .end local v14           #nextPage:I
    :cond_1f
    if-eqz v8, :cond_a

    const/16 v24, 0x2

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v24

    if-nez v24, :cond_a

    .line 1610
    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    .line 1611
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/android/launcher2/Hotseat;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1618
    .end local v13           #newIcon:Landroid/view/View;
    :sswitch_4
    if-eqz v7, :cond_21

    .line 1619
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->isFinished()Z

    move-result v24

    if-nez v24, :cond_20

    .line 1620
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1621
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1622
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v16

    .line 1624
    :cond_20
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-static {v11, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1625
    .restart local v13       #newIcon:Landroid/view/View;
    if-eqz v13, :cond_22

    .line 1626
    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 1627
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1649
    .end local v13           #newIcon:Landroid/view/View;
    :cond_21
    :goto_9
    const/16 v22, 0x1

    .line 1650
    goto/16 :goto_0

    .line 1629
    .restart local v13       #newIcon:Landroid/view/View;
    :cond_22
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->is12KEYNaviKeyFocus(Landroid/view/View;)Z

    move-result v24

    if-eqz v24, :cond_23

    .line 1630
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1632
    :cond_23
    if-eqz v8, :cond_24

    .line 1633
    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    .line 1634
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/android/launcher2/Hotseat;->playSoundEffect(I)V

    goto :goto_9

    .line 1635
    :cond_24
    if-eqz v20, :cond_25

    if-eqz v19, :cond_25

    const/16 v24, 0x1

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_25

    .line 1637
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    .line 1638
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_9

    .line 1639
    :cond_25
    if-eqz v12, :cond_21

    .line 1640
    invoke-virtual {v12}, Lcom/android/launcher2/HomeMagazineSoftKey;->getFirstIcon()Landroid/widget/ImageButton;

    move-result-object v6

    .line 1641
    .local v6, firstIcon:Landroid/view/View;
    if-eqz v6, :cond_21

    .line 1642
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 1643
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_9

    .line 1499
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method static is12KEYNaviKeyFocus(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 2195
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2197
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "CHN"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2199
    const/4 v1, 0x1

    .line 2202
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setup(Lcom/android/launcher2/HomeView;)V
    .locals 0
    .parameter "home"

    .prologue
    .line 170
    sput-object p0, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    .line 171
    return-void
.end method
