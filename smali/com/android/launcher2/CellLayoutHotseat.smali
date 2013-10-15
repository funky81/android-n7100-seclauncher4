.class public Lcom/android/launcher2/CellLayoutHotseat;
.super Lcom/android/launcher2/CellLayoutNoGap;
.source "CellLayoutHotseat.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field static final TAG:Ljava/lang/String; = "CellLayoutHotseat"

.field private static cpuBooster:Landroid/os/DVFSHelper;

.field private static gpuBooster:Landroid/os/DVFSHelper;


# instance fields
.field private mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

.field private mBinding:Z

.field private mDragState:Lcom/android/launcher2/DragState;

.field private mHasEnded:Z

.field mIsLandscape:Z

.field mMaxCellCount:I

.field private mRemoveEmptySpacePosted:Z

.field private mReorderPosted:Z

.field private final mTmpDragXY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    .line 36
    sput-object v1, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    .line 37
    sput-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    .line 81
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    .line 227
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    .line 366
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    .line 476
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    .line 56
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getCpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    .line 57
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getGpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    .line 58
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayoutHotseat;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/CellLayoutHotseat;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    return p1
.end method

.method private animateAllChildren()V
    .locals 6

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 216
    .local v1, count:I
    sget-boolean v3, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "CellLayoutHotseat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animateAllChildren "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 218
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v3, v4, :cond_2

    .line 217
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_2
    instance-of v3, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_3

    move-object v3, v0

    .line 221
    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    .line 223
    :cond_3
    const/16 v3, 0xe6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/launcher2/CellLayoutHotseat;->animateIcon(Landroid/view/View;IZZ)Z

    goto :goto_1

    .line 225
    .end local v0           #child:Landroid/view/View;
    :cond_4
    return-void
.end method

.method private getAllappsPos()I
    .locals 3

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v1}, Lcom/android/launcher2/AllappsIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 473
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->cellToPosition(II)I

    move-result v1

    return v1
.end method

.method private setupAllAppsIcon(Landroid/content/Context;Lcom/android/launcher2/AllappsIcon;Z)V
    .locals 6
    .parameter "context"
    .parameter "icon"
    .parameter "showHotseatTitle"

    .prologue
    const v5, 0x7f0e0020

    const v4, 0x7f020007

    const/4 v3, 0x0

    .line 560
    if-nez p2, :cond_0

    .line 600
    :goto_0
    return-void

    .line 562
    :cond_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v2, :cond_4

    .line 563
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v1

    .line 564
    .local v1, loader:Lcom/android/launcher2/ThemeLoader;
    const/4 v0, 0x0

    .line 566
    .local v0, allAppsIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v2

    if-nez v2, :cond_1

    .line 567
    const-string v2, "all_apps_button_icon"

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ThemeLoader;->loadIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 570
    :cond_1
    if-nez v0, :cond_2

    .line 571
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 573
    :cond_2
    invoke-virtual {p2, v3, v0, v3, v3}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 580
    .end local v0           #allAppsIcon:Landroid/graphics/drawable/Drawable;
    .end local v1           #loader:Lcom/android/launcher2/ThemeLoader;
    :goto_1
    if-eqz p3, :cond_3

    .line 581
    invoke-virtual {p2, v5}, Lcom/android/launcher2/AllappsIcon;->setText(I)V

    .line 583
    :cond_3
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/launcher2/AllappsIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 584
    sget-object v2, Lcom/android/launcher2/FocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, v2}, Lcom/android/launcher2/AllappsIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 585
    new-instance v2, Lcom/android/launcher2/CellLayoutHotseat$4;

    invoke-direct {v2, p0}, Lcom/android/launcher2/CellLayoutHotseat$4;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    invoke-virtual {p2, v2}, Lcom/android/launcher2/AllappsIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 576
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v3, v2, v3, v3}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateViewToLandscape()V
    .locals 6

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 611
    .local v3, l:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 612
    invoke-virtual {v3, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 613
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 614
    .local v2, item:Lcom/android/launcher2/BaseItem;
    if-nez v2, :cond_0

    .line 611
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 615
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 616
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/CellLayoutHotseat;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    .line 617
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 619
    .end local v0           #child:Landroid/view/View;
    .end local v2           #item:Lcom/android/launcher2/BaseItem;
    .end local v4           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    return-void
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 200
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 201
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v4, :cond_0

    .line 203
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    .line 200
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    move-result v2

    .line 208
    .local v2, e:I
    iget-boolean v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-nez v4, :cond_2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 209
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayoutHotseat;->realTimeReorder(I)V

    .line 211
    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    return v4
.end method

.method public beginBind(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/4 v3, 0x1

    .line 478
    const-string v0, "CellLayoutHotseat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginBind:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iput-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    .line 481
    iput-boolean v3, p0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    .line 484
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 485
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_0
.end method

.method cellToPosition(II)I
    .locals 2
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 424
    .local v0, c:I
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v1, :cond_0

    sub-int p1, v0, p2

    .end local p1
    :cond_0
    return p1
.end method

.method protected closeLayoutGap()V
    .locals 0

    .prologue
    .line 449
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    .line 450
    return-void
.end method

.method public endBind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    .line 493
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    .line 494
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    .line 495
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    .line 496
    return-void
.end method

.method existsEmptyCell()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public getAllAppsIcon()Lcom/android/launcher2/AllappsIcon;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v0
.end method

.method getCellCount()I
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v0

    goto :goto_0
.end method

.method getCellXFromPos(I)I
    .locals 1
    .parameter "idx"

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    return p1
.end method

.method getCellYFromPos(I)I
    .locals 2
    .parameter "idx"

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 418
    .local v0, c:I
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v1, :cond_0

    sub-int v1, v0, p1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 440
    const-wide/16 v0, -0x65

    return-wide v0
.end method

.method public getDragState()Lcom/android/launcher2/DragState;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    return-object v0
.end method

.method public inflateAllAppsIcon(Lcom/android/launcher2/Hotseat;Z)Lcom/android/launcher2/AllappsIcon;
    .locals 8
    .parameter "hs"
    .parameter "showTitle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 542
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    .line 543
    .local v0, cl:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 544
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 546
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030003

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AllappsIcon;

    iput-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    .line 547
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-direct {p0, v1, v4, p2}, Lcom/android/launcher2/CellLayoutHotseat;->setupAllAppsIcon(Landroid/content/Context;Lcom/android/launcher2/AllappsIcon;Z)V

    .line 548
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v5, v6, v6, v7, v7}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 553
    .local v2, firstItem:Landroid/view/View;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 554
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 556
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v4
.end method

.method public isFull()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 78
    .local v0, count:I
    iget v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method makeEmptySpace()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 317
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x2

    .line 318
    .local v0, count:I
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 321
    :cond_0
    sget-boolean v2, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    const-string v2, "CellLayoutHotseat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeEmptySpace check:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v2

    if-ge v2, v0, :cond_6

    .line 323
    sget-boolean v2, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v2, :cond_2

    const-string v2, "CellLayoutHotseat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeEmptySpace count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_2
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v2, :cond_4

    .line 326
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-ge v2, v3, :cond_3

    .line 327
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    .line 332
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    .line 334
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v3, :cond_5

    :goto_1
    sub-int v1, v2, v1

    .line 336
    :goto_2
    return v1

    .line 329
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-ge v2, v3, :cond_3

    .line 330
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_0

    .line 334
    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    .line 336
    :cond_6
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public moveAppIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 300
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-nez v3, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    .line 302
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher2/AllappsIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 303
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v0, 0x0

    .line 304
    .local v0, changed:Z
    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 305
    iput v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 306
    const/4 v0, 0x1

    .line 311
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 312
    const/16 v3, 0xe6

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/launcher2/CellLayoutHotseat;->animateIcon(Landroid/view/View;IZZ)Z

    goto :goto_0

    .line 307
    :cond_3
    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-nez v3, :cond_2

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 309
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher2/DragState;

    if-nez v10, :cond_0

    .line 89
    const/4 v10, 0x0

    .line 194
    :goto_0
    return v10

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 92
    .local v0, action:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Hotseat;

    .line 94
    .local v7, parent:Lcom/android/launcher2/Hotseat;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragState;

    .line 95
    .local v3, dragState:Lcom/android/launcher2/DragState;
    if-nez v7, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v10

    goto :goto_0

    .line 97
    :cond_1
    iget-object v10, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v10, v10, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-nez v10, :cond_2

    iget-object v10, v3, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v10, v10, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v10, :cond_3

    .line 98
    :cond_2
    const/4 v10, 0x5

    if-ne v0, v10, :cond_6

    .line 99
    invoke-virtual {v7}, Lcom/android/launcher2/Hotseat;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->disableRollNavigation()V

    .line 106
    :cond_3
    :goto_1
    iget-object v1, v3, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    .line 107
    .local v1, dragItem:Lcom/android/launcher2/BaseItem;
    iget-object v10, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v10, v11, :cond_4

    iget-object v10, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v10, v11, :cond_4

    iget-object v10, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v10, :cond_7

    instance-of v10, v1, Lcom/android/launcher2/HomePendingItem;

    if-eqz v10, :cond_7

    :cond_4
    const/4 v4, 0x1

    .line 111
    .local v4, fromApps:Z
    :goto_2
    const/4 v10, 0x1

    if-ne v0, v10, :cond_5

    .line 112
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    .line 113
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    .line 115
    :cond_5
    iget-boolean v10, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_0

    .line 100
    .end local v1           #dragItem:Lcom/android/launcher2/BaseItem;
    .end local v4           #fromApps:Z
    :cond_6
    const/4 v10, 0x6

    if-ne v0, v10, :cond_3

    .line 101
    invoke-virtual {v7}, Lcom/android/launcher2/Hotseat;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->enableRollNavigation()V

    goto :goto_1

    .line 107
    .restart local v1       #dragItem:Lcom/android/launcher2/BaseItem;
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 117
    .restart local v4       #fromApps:Z
    :cond_8
    if-nez v4, :cond_9

    iget-object v10, v3, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v10, v10, Lcom/android/launcher2/HomeItem;

    if-eqz v10, :cond_9

    .line 118
    iget-object v6, v3, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v6, Lcom/android/launcher2/HomeItem;

    .line 122
    .local v6, item:Lcom/android/launcher2/HomeItem;
    iget-wide v10, v6, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_9

    .line 123
    const/4 v10, 0x2

    if-ne v0, v10, :cond_9

    invoke-virtual {v7}, Lcom/android/launcher2/Hotseat;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 124
    invoke-virtual {v7}, Lcom/android/launcher2/Hotseat;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 125
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 130
    .end local v6           #item:Lcom/android/launcher2/HomeItem;
    :cond_9
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 131
    .local v8, x:I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 132
    .local v9, y:I
    iget-object v10, p0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/launcher2/CellLayoutHotseat;->pointToCellExact(II[I)V

    .line 133
    iget-object v10, p0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher2/CellLayoutHotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 139
    .local v2, dragOverView:Landroid/view/View;
    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v10

    if-nez v10, :cond_b

    :cond_a
    invoke-virtual {v7, v3, v0, v2}, Lcom/android/launcher2/Hotseat;->checkHotSeatInteraction(Lcom/android/launcher2/DragState;ILandroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 140
    :cond_b
    const/4 v10, 0x3

    if-ne v0, v10, :cond_d

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 142
    :cond_c
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    .line 145
    :cond_d
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v10

    invoke-static {v10}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    .line 146
    .local v5, isWidget:Z
    if-eqz v5, :cond_e

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 149
    :cond_e
    const/4 v10, 0x4

    if-eq v0, v10, :cond_f

    .line 150
    iput-object v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    .line 153
    :cond_f
    const/4 v10, 0x5

    if-ne v0, v10, :cond_10

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    .line 156
    :cond_10
    iget-boolean v10, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v10, :cond_11

    .line 157
    const/4 v10, 0x4

    if-ne v0, v10, :cond_12

    .line 161
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    .line 171
    :cond_11
    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_3
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v10

    goto/16 :goto_0

    .line 163
    :cond_12
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v10

    goto/16 :goto_0

    .line 173
    :pswitch_0
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/android/launcher2/Hotseat;->setDragInContentArea(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->cancelRealTimeReorder()V

    .line 176
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 178
    :pswitch_1
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    .line 179
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    .line 181
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 182
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    .line 183
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 184
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    goto :goto_3

    .line 187
    :pswitch_2
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderImmediately:Z

    .line 188
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    .line 189
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/android/launcher2/Hotseat;->setDragInContentArea(Z)V

    goto :goto_3

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    iget v0, v1, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    .line 278
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 279
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    .line 281
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutHotseat;->realTimeReorder(I)V

    .line 283
    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 284
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onFailedDrop(Lcom/android/launcher2/BaseItem;)V

    .line 285
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 628
    .local v0, action:I
    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v2, "Launcher_touch"

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 629
    if-nez v0, :cond_0

    .line 631
    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v2, "Launcher_touch"

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    .line 634
    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 635
    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->acquire()V

    .line 638
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 639
    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    .line 642
    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 643
    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    .line 646
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onMeasure(II)V
    .locals 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 504
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 505
    .local v10, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 507
    .local v11, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 508
    .local v4, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 510
    .local v5, heightSpecSize:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v0

    .line 511
    .local v0, cellCountX:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v1

    .line 512
    .local v1, cellCountY:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPaddingLeft()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPaddingRight()I

    move-result v13

    add-int v8, v12, v13

    .line 513
    .local v8, paddingX:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPaddingTop()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPaddingBottom()I

    move-result v13

    add-int v9, v12, v13

    .line 514
    .local v9, paddingY:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellWidth()I

    move-result v12

    mul-int v6, v12, v0

    .line 515
    .local v6, minSizeX:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellHeight()I

    move-result v12

    mul-int v7, v12, v1

    .line 517
    .local v7, minSizeY:I
    if-nez v10, :cond_0

    .line 518
    add-int v11, v6, v8

    .line 520
    :cond_0
    if-nez v4, :cond_1

    .line 521
    add-int v5, v7, v9

    .line 523
    :cond_1
    const/4 v2, 0x0

    .line 524
    .local v2, gapX:I
    const/4 v3, 0x0

    .line 525
    .local v3, gapY:I
    const/4 v12, 0x1

    if-le v0, v12, :cond_2

    .line 526
    sub-int v12, v11, v6

    sub-int/2addr v12, v8

    add-int/lit8 v13, v0, 0x1

    div-int v2, v12, v13

    .line 527
    if-gez v2, :cond_2

    .line 528
    const/4 v2, 0x0

    .line 530
    :cond_2
    const/4 v12, 0x1

    if-le v1, v12, :cond_3

    .line 531
    sub-int v12, v5, v7

    sub-int/2addr v12, v9

    add-int/lit8 v13, v1, 0x1

    div-int v3, v12, v13

    .line 532
    if-gez v3, :cond_3

    .line 533
    const/4 v3, 0x0

    .line 535
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->setGaps(II)V

    .line 536
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->refreshCellDimension()V

    .line 537
    sget-boolean v12, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v12, :cond_4

    const-string v12, "CellLayoutHotseat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setGaps("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_4
    invoke-super/range {p0 .. p2}, Lcom/android/launcher2/CellLayoutNoGap;->onMeasure(II)V

    .line 539
    return-void
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 429
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onViewAddedToLayout(Landroid/view/View;)V

    .line 430
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_0

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 432
    .local v0, item:Lcom/android/launcher2/HomeItem;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 433
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 434
    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 436
    .end local v0           #item:Lcom/android/launcher2/HomeItem;
    .end local v1           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method realTimeReorder()V
    .locals 3

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->findFirstEmptySpace()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getAllappsPos()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->hasAnimatingChild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    .line 236
    new-instance v0, Lcom/android/launcher2/CellLayoutHotseat$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayoutHotseat$1;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->findFirstEmptySpace()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getAllappsPos()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    .line 250
    :cond_3
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderImmediately:Z

    goto :goto_0
.end method

.method public realTimeReorder(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->hasAnimatingChild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    if-eqz v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    .line 259
    new-instance v0, Lcom/android/launcher2/CellLayoutHotseat$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/CellLayoutHotseat$2;-><init>(Lcom/android/launcher2/CellLayoutHotseat;I)V

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 268
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder(I)V

    goto :goto_0
.end method

.method public removeAllItems()V
    .locals 3

    .prologue
    .line 358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 360
    .local v1, item:Lcom/android/launcher2/BaseItem;
    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    :cond_1
    return-void
.end method

.method public removeEmptySpace()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 368
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->hasAnimatingChild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    if-eqz v1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    .line 371
    new-instance v1, Lcom/android/launcher2/CellLayoutHotseat$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/CellLayoutHotseat$3;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 381
    .local v0, count:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 384
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 386
    sget-boolean v1, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v1, :cond_4

    const-string v1, "CellLayoutHotseat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeEmptySpace count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->closeLayoutGap()V

    .line 388
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v1, :cond_5

    .line 389
    invoke-virtual {p0, v4, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    .line 393
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    goto :goto_0

    .line 391
    :cond_5
    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_1
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 349
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    .line 351
    .local v0, rc:Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    .line 353
    :cond_0
    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeView(Landroid/view/View;)V

    .line 294
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    .line 296
    :cond_0
    return-void
.end method

.method public setAllAppsIconDimState(ZZZ)V
    .locals 1
    .parameter "dimmed"
    .parameter "invalidate"
    .parameter "enabled"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/AllappsIcon;->setDimmed(ZZ)V

    .line 605
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0, p3}, Lcom/android/launcher2/AllappsIcon;->setEnabled(Z)V

    .line 607
    :cond_0
    return-void
.end method

.method public setGridSize(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 398
    sget-boolean v0, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "CellLayoutHotseat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGridSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    .line 401
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 404
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->updateViewToLandscape()V

    .line 407
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->animateAllChildren()V

    .line 408
    return-void
.end method

.method public setup(ZI)V
    .locals 1
    .parameter "isLandscape"
    .parameter "maxCellCount"

    .prologue
    const/4 v0, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    .line 68
    iput p2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    .line 72
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    .line 73
    return-void
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V
    .locals 4
    .parameter "v"
    .parameter "dragOutline"
    .parameter "nearest"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 455
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v2, :cond_2

    .line 456
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 457
    .local v0, item:Lcom/android/launcher2/BaseItem;
    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    .line 469
    .end local v0           #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    :goto_0
    return-void

    .line 458
    .restart local v0       #item:Lcom/android/launcher2/BaseItem;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v2, v2, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/HomePendingItem;

    if-nez v2, :cond_0

    .line 461
    .end local v0           #item:Lcom/android/launcher2/BaseItem;
    :cond_2
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v2, :cond_3

    .line 462
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v2}, Lcom/android/launcher2/AllappsIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 463
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v2, 0x0

    aget v2, p3, v2

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    aget v2, p3, v2

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v3, :cond_0

    .line 468
    .end local v1           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/CellLayoutNoGap;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    goto :goto_0
.end method
