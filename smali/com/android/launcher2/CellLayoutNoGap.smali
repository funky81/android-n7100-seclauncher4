.class public Lcom/android/launcher2/CellLayoutNoGap;
.super Lcom/android/launcher2/CellLayout;
.source "CellLayoutNoGap.java"


# static fields
.field static final REORDER_ANIMATION_DURATION:I = 0xe6


# instance fields
.field private mCloseLayoutGapPosted:Z

.field protected mDisabled:Z

.field mDragOutline:Landroid/graphics/Bitmap;

.field mFolder:Lcom/android/launcher2/Folder;

.field private mForceReorder:Z

.field protected mHiddenItem:Lcom/android/launcher2/BaseItem;

.field private mPreviousTargetCell:I

.field private mReOrderingEnabled:Z

.field private mReorderAlarm:Lcom/android/launcher2/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

.field protected mReorderImmediately:Z

.field mTargetCell:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Lcom/android/launcher2/Alarm;

    invoke-direct {v0}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    .line 37
    iput v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 38
    iput v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderImmediately:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mCloseLayoutGapPosted:Z

    .line 209
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    .line 519
    new-instance v0, Lcom/android/launcher2/CellLayoutNoGap$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayoutNoGap$2;-><init>(Lcom/android/launcher2/CellLayoutNoGap;)V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    .line 543
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mForceReorder:Z

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayoutNoGap;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mCloseLayoutGapPosted:Z

    return p1
.end method

.method private forceRealTimeReorder()V
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mForceReorder:Z

    .line 546
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mForceReorder:Z

    .line 548
    return-void
.end method

.method private updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V
    .locals 8
    .parameter "item"
    .parameter "pos"

    .prologue
    .line 630
    iget v0, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 632
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    .line 633
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 634
    const/4 v6, 0x0

    .line 635
    .local v6, instant:Z
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/PagedView;

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedView;

    .line 637
    .local v7, p:Lcom/android/launcher2/PagedView;
    invoke-virtual {v7}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v6

    .line 638
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    const/4 v6, 0x1

    .line 644
    .end local v7           #p:Lcom/android/launcher2/PagedView;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    .line 652
    .end local v6           #instant:Z
    :cond_1
    :goto_1
    return-void

    .line 640
    .restart local v6       #instant:Z
    .restart local v7       #p:Lcom/android/launcher2/PagedView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getScreen()I

    move-result v0

    invoke-virtual {v7}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 641
    const/4 v6, 0x1

    goto :goto_0

    .line 645
    .end local v7           #p:Lcom/android/launcher2/PagedView;
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v2

    .line 646
    .local v2, x:I
    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v3

    .line 647
    .local v3, y:I
    instance-of v0, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 648
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    .line 650
    :cond_4
    const/16 v4, 0xe6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayoutNoGap;->animateChildToPosition(Landroid/view/View;IIIIZ)Z

    goto :goto_1
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher2/FolderItem;->contains(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-interface {v0, p1, v1}, Lcom/android/launcher2/FolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    .line 400
    :cond_0
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelAllFolderAnimations()V
    .locals 4

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 621
    .local v1, l:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 622
    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 623
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_0

    .line 624
    check-cast v2, Lcom/android/launcher2/FolderIconView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    .line 621
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 627
    :cond_1
    return-void
.end method

.method cancelRealTimeReorder()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 528
    return-void
.end method

.method cellToPosition(II)I
    .locals 1
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v0

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0
.end method

.method protected closeLayoutGap()V
    .locals 9

    .prologue
    const/4 v7, -0x1

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->hasAnimatingChild()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 67
    iget-boolean v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mCloseLayoutGapPosted:Z

    if-eqz v6, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mCloseLayoutGapPosted:Z

    .line 69
    new-instance v6, Lcom/android/launcher2/CellLayoutNoGap$1;

    invoke-direct {v6, p0}, Lcom/android/launcher2/CellLayoutNoGap$1;-><init>(Lcom/android/launcher2/CellLayoutNoGap;)V

    const-wide/16 v7, 0x14

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/launcher2/CellLayoutNoGap;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 78
    .local v0, _i:Lcom/android/launcher2/BaseItem;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 81
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v1

    .line 82
    .local v1, e:I
    if-ne v1, v7, :cond_4

    .line 100
    .end local v1           #e:I
    :cond_3
    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 102
    iget-object v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v6, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    goto :goto_0

    .line 83
    .restart local v1       #e:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findAllOccupiedCells()[Z

    move-result-object v4

    .line 86
    .local v4, occupied:[Z
    const/4 v5, -0x1

    .line 87
    .local v5, target:I
    add-int/lit8 v3, v1, 0x1

    .local v3, j:I
    :goto_2
    array-length v6, v4

    if-ge v3, v6, :cond_5

    .line 88
    aget-boolean v6, v4, v3

    if-eqz v6, :cond_6

    .line 89
    move v5, v3

    .line 93
    :cond_5
    if-eq v5, v1, :cond_3

    if-eq v5, v7, :cond_3

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    .line 96
    .local v2, item:Lcom/android/launcher2/BaseItem;
    if-eqz v2, :cond_3

    .line 97
    invoke-direct {p0, v2, v1}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V

    goto :goto_1

    .line 87
    .end local v2           #item:Lcom/android/launcher2/BaseItem;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method existsEmptyCell()Z
    .locals 3

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v0

    .line 488
    .local v0, c:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    .line 489
    add-int/lit8 v0, v0, -0x1

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method existsEmptyCellIgnoreHidden()Z
    .locals 3

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method findAllOccupiedCells()[Z
    .locals 7

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v6

    mul-int v0, v5, v6

    .line 496
    .local v0, count:I
    new-array v3, v0, [Z

    .line 497
    .local v3, ops:[Z
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 498
    .local v2, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    .line 499
    .local v4, pos:I
    if-ltz v4, :cond_0

    if-ge v4, v0, :cond_0

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    goto :goto_0

    .line 501
    .end local v2           #item:Lcom/android/launcher2/BaseItem;
    .end local v4           #pos:I
    :cond_1
    return-object v3
.end method

.method public findDropLocation(IIILjava/lang/Object;)V
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "localState"

    .prologue
    .line 139
    move-object/from16 v7, p4

    check-cast v7, Lcom/android/launcher2/DragState;

    .line 141
    .local v7, dragState:Lcom/android/launcher2/DragState;
    packed-switch p3, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 143
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    .line 144
    .local v13, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    sget v3, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-virtual {v13, v1, v2, v3}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    .line 148
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const/4 v1, 0x2

    new-array v12, v1, [I

    .line 150
    .local v12, r:[I
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v11

    .line 151
    .local v11, position:I
    invoke-virtual {p0, v11}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v1

    invoke-virtual {p0, v11}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v2

    invoke-virtual {p0, v1, v2, v12}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPoint(II[I)V

    .line 153
    :try_start_0
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v10

    .line 154
    .local v10, o:[I
    const/4 v1, 0x0

    aget v1, v12, v1

    const/4 v2, 0x0

    aget v2, v10, v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getWidthGap()I

    move-result v2

    add-int p1, v1, v2

    .line 155
    const/4 v1, 0x1

    aget v1, v12, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getHeightGap()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int p2, v1, v2

    .line 166
    .end local v10           #o:[I
    .end local v11           #position:I
    .end local v12           #r:[I
    .end local v13           #ws:Lcom/android/launcher2/Workspace;
    :goto_1
    :pswitch_1
    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 167
    .local v4, tmp:[I
    move/from16 v0, p2

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/launcher2/CellLayoutNoGap;->pointToCellExact(II[I)V

    .line 168
    const/4 v1, 0x0

    aget v1, v4, v1

    const/4 v2, 0x1

    aget v2, v4, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPosition(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v9

    .line 171
    .local v9, max:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-nez v1, :cond_1

    add-int/lit8 v9, v9, 0x1

    .line 172
    :cond_1
    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    if-ge v1, v9, :cond_2

    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    if-gez v1, :cond_3

    .line 173
    :cond_2
    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    if-gez v1, :cond_5

    .line 175
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 179
    .end local v9           #max:I
    :goto_2
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v2

    aput v2, v4, v1

    .line 180
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v2

    aput v2, v4, v1

    .line 183
    :cond_3
    const/4 v1, 0x2

    move/from16 v0, p3

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/FolderItem;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    aget v1, v4, v1

    const/4 v2, 0x1

    aget v2, v4, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/FolderIconView;

    if-nez v1, :cond_0

    .line 186
    :cond_4
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/CellLayoutNoGap;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    goto/16 :goto_0

    .line 156
    .end local v4           #tmp:[I
    .restart local v11       #position:I
    .restart local v12       #r:[I
    .restart local v13       #ws:Lcom/android/launcher2/Workspace;
    :catch_0
    move-exception v8

    .line 157
    .local v8, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    aget v1, v12, v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getWidthGap()I

    move-result v2

    add-int p1, v1, v2

    .line 158
    const/4 v1, 0x1

    aget v1, v12, v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getHeightGap()I

    move-result v2

    add-int p2, v1, v2

    goto :goto_1

    .line 177
    .end local v8           #e:Ljava/lang/Exception;
    .end local v11           #position:I
    .end local v12           #r:[I
    .end local v13           #ws:Lcom/android/launcher2/Workspace;
    .restart local v4       #tmp:[I
    .restart local v9       #max:I
    :cond_5
    if-nez v9, :cond_6

    .end local v9           #max:I
    :goto_3
    iput v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    goto :goto_2

    .restart local v9       #max:I
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public findDropLocation(Landroid/view/DragEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(IIILjava/lang/Object;)V

    .line 136
    return-void
.end method

.method public findFirstEmptySpace()I
    .locals 3

    .prologue
    .line 505
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    .line 512
    :cond_0
    :goto_0
    return v0

    .line 507
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findAllOccupiedCells()[Z

    move-result-object v1

    .line 509
    .local v1, ops:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 510
    aget-boolean v2, v1, v0

    if-eqz v2, :cond_0

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 512
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getCellXFromPos(I)I
    .locals 1
    .parameter "idx"

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v0

    rem-int v0, p1, v0

    return v0
.end method

.method getCellYFromPos(I)I
    .locals 2
    .parameter "idx"

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v0

    div-int v0, p1, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getContainerType()J
    .locals 3

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v0

    .line 408
    .local v0, parent:Lcom/android/launcher2/CellLayoutContainer;
    instance-of v1, v0, Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    .line 410
    check-cast v0, Lcom/android/launcher2/Folder;

    .end local v0           #parent:Lcom/android/launcher2/CellLayoutContainer;
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getContainerType()J

    move-result-wide v1

    .line 412
    :goto_0
    return-wide v1

    .restart local v0       #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method hasAnimatingChild()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 531
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 532
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 533
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 534
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v3, v5, :cond_1

    .line 532
    .end local v0           #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    instance-of v3, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 536
    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 540
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v3

    .line 537
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 540
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hide(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 368
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->hide(Lcom/android/launcher2/BaseItem;)V

    .line 369
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method isDraggingOverIcon()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public isReOrderingEnabled()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    return v0
.end method

.method newCellPositioner()Lcom/android/launcher2/CellPositioner;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/android/launcher2/CellPositionerNoGap;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellPositionerNoGap;-><init>(Lcom/android/launcher2/CellLayout;)V

    return-object v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 213
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x0

    .line 347
    :goto_0
    return v1

    .line 215
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/DragState;

    if-nez v1, :cond_2

    .line 217
    const/4 v1, 0x0

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState;

    .line 222
    .local v0, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 231
    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    .line 232
    iget-object v1, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eq v1, p0, :cond_4

    iget-object v1, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v1, v1, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_4

    .line 233
    iget-object v10, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v10, Lcom/android/launcher2/CellLayout;

    .line 234
    .local v10, l:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 241
    .end local v10           #l:Lcom/android/launcher2/CellLayout;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(Landroid/view/DragEvent;)V

    .line 245
    :cond_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 347
    const/4 v1, 0x0

    goto :goto_0

    .line 248
    :pswitch_0
    iget-object v1, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-ne v1, p0, :cond_6

    .line 249
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->setIsDragOverlapping(Z)V

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEnter()V

    .line 252
    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    .line 257
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->clearDragOutlines()V

    .line 258
    const/4 v1, 0x1

    goto :goto_0

    .line 260
    :pswitch_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    .line 262
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v9

    .line 263
    .local v9, folder:Lcom/android/launcher2/Folder;
    if-eqz v9, :cond_7

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eq v9, v1, :cond_7

    .line 264
    invoke-virtual {v9}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    .line 266
    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    .line 268
    .end local v9           #folder:Lcom/android/launcher2/Folder;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 269
    :cond_8
    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    iget v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    if-eq v1, v4, :cond_e

    .line 270
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 271
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderImmediately:Z

    if-eqz v1, :cond_a

    .line 272
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 276
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    iget v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v8

    .line 277
    .local v8, dragedOverChild:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v11

    .line 278
    .local v11, p:Lcom/android/launcher2/Folder;
    if-eqz v11, :cond_b

    iget-object v1, v11, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-eq v1, p0, :cond_b

    invoke-virtual {v11}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 279
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget v4, v11, Lcom/android/launcher2/Folder;->mExpandDuration:I

    add-int/lit16 v4, v4, 0x320

    add-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 287
    :goto_2
    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:I

    .line 293
    .end local v8           #dragedOverChild:Landroid/view/View;
    .end local v11           #p:Lcom/android/launcher2/Folder;
    :cond_9
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 274
    :cond_a
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    goto :goto_1

    .line 280
    .restart local v8       #dragedOverChild:Landroid/view/View;
    .restart local v11       #p:Lcom/android/launcher2/Folder;
    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/PagedView;

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 281
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedView;

    iget v5, v1, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedView;

    iget-object v1, v1, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->timePassed()I

    move-result v1

    sub-int v1, v5, v1

    add-int/lit16 v1, v1, 0xc8

    int-to-long v12, v1

    invoke-virtual {v4, v12, v13}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_2

    .line 282
    :cond_c
    instance-of v1, v8, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_d

    .line 283
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_2

    .line 285
    :cond_d
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_2

    .line 289
    .end local v8           #dragedOverChild:Landroid/view/View;
    .end local v11           #p:Lcom/android/launcher2/Folder;
    :cond_e
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v1

    if-nez v1, :cond_9

    .line 290
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_3

    .line 296
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->cancelAllFolderAnimations()V

    .line 297
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    .line 300
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e006c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->onDragExit()V

    .line 304
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 307
    :cond_f
    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_10

    .line 310
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 313
    :cond_10
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutNoGap;->forceRealTimeReorder()V

    .line 315
    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v2

    .line 316
    .local v2, cx:I
    iget v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v3

    .line 317
    .local v3, cy:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getScreen()I

    move-result v6

    .line 318
    .local v6, screen:I
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v7

    .line 319
    .local v7, dragItem:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v7}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v4

    invoke-virtual {v7}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 320
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 321
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 323
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 327
    .end local v2           #cx:I
    .end local v3           #cy:I
    .end local v6           #screen:I
    .end local v7           #dragItem:Lcom/android/launcher2/BaseItem;
    :pswitch_5
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 328
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 329
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 330
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 332
    :cond_12
    iget-boolean v1, v0, Lcom/android/launcher2/DragState;->mRevertDrag:Z

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-ne p0, v1, :cond_13

    .line 333
    iget-object v1, v0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->hide(Lcom/android/launcher2/BaseItem;)V

    .line 334
    iget v1, v0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder(I)V

    .line 335
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->show(Lcom/android/launcher2/BaseItem;)V

    .line 339
    :goto_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 342
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    .line 343
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->clearDragOutlines()V

    .line 344
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->onDragExit()V

    .line 345
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 337
    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    goto :goto_4

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 353
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 356
    :cond_0
    return-void
.end method

.method public onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V
    .locals 9
    .parameter "event"
    .parameter "fiv"

    .prologue
    const/4 v6, 0x0

    .line 193
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 194
    .local v4, y:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 195
    .local v2, temp:Landroid/graphics/Rect;
    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 196
    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->getScrollX()I

    move-result v0

    .line 197
    .local v0, sx:I
    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->getScrollY()I

    move-result v1

    .line 198
    .local v1, sy:I
    invoke-virtual {p2, v6, v6}, Lcom/android/launcher2/FolderIconView;->scrollTo(II)V

    .line 199
    invoke-virtual {p0, p2, v2}, Lcom/android/launcher2/CellLayoutNoGap;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 200
    invoke-virtual {p2, v0, v1}, Lcom/android/launcher2/FolderIconView;->scrollTo(II)V

    .line 202
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(IIILjava/lang/Object;)V

    .line 205
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 206
    iget-object v5, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget-object v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    .line 207
    return-void
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    const/4 v3, -0x1

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 420
    .local v1, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->isReOrderingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 422
    .local v0, idx:I
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    .line 434
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->onViewAddedToLayout(Landroid/view/View;)V

    .line 435
    return-void

    .line 423
    .end local v0           #idx:I
    :cond_0
    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ne v2, v3, :cond_3

    .line 424
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    .line 425
    .restart local v0       #idx:I
    if-gez v0, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v0

    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 429
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    goto :goto_0

    .line 431
    .end local v0           #idx:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    .line 432
    .restart local v0       #idx:I
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    goto :goto_0
.end method

.method realTimeReorder()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 556
    iget-boolean v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mForceReorder:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->hasAnimatingChild()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 557
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v4

    if-nez v4, :cond_0

    .line 558
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v5, 0x14

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v0

    .line 568
    .local v0, empty:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    .line 569
    .local v2, maxTarget:I
    if-eqz v2, :cond_0

    .line 571
    iget v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 576
    .local v3, target:I
    iput v3, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 578
    if-eq v3, v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 581
    if-ne v0, v6, :cond_2

    .line 582
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find empty cell. This should never happen! Cell Occupancy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findAllOccupiedCells()[Z

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " item count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v6, v6, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 585
    :cond_2
    if-ne v3, v6, :cond_3

    .line 586
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Couldn\'t find target cell. This should never happen!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 589
    :cond_3
    const/4 v1, 0x0

    .line 590
    .local v1, item:Lcom/android/launcher2/BaseItem;
    :goto_1
    if-ge v3, v0, :cond_6

    .line 592
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 593
    if-nez v1, :cond_4

    .line 594
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "item in < was null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 595
    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V

    .line 596
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 603
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V

    .line 604
    add-int/lit8 v0, v0, 0x1

    .line 598
    :cond_6
    if-le v3, v0, :cond_7

    .line 600
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 601
    if-nez v1, :cond_5

    .line 602
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "item in > was null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 607
    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    .line 610
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    goto/16 :goto_0
.end method

.method public realTimeReorder(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 551
    iput p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 552
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 553
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 378
    .local v0, rc:Z
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_3

    .line 379
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    .line 380
    if-eqz v0, :cond_3

    .line 381
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v1, p1, :cond_2

    .line 385
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 387
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    .line 390
    :cond_3
    return v0
.end method

.method final setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V
    .locals 1
    .parameter "lp"
    .parameter "idx"

    .prologue
    .line 672
    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 673
    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 674
    return-void
.end method

.method public setEnableReOrdering(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 654
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    .line 655
    return-void
.end method

.method protected setItemLocation(Lcom/android/launcher2/BaseItem;II)V
    .locals 9
    .parameter "item"
    .parameter "position"
    .parameter "screen"

    .prologue
    .line 466
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid position"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_0
    iput p3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 470
    invoke-virtual {p1, p2}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 473
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_1

    move-object v1, p1

    .line 474
    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 476
    .local v1, h:Lcom/android/launcher2/HomeItem;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget v5, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v7, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v8, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    move v4, p2

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    .line 479
    .end local v1           #h:Lcom/android/launcher2/HomeItem;
    :cond_1
    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V
    .locals 9
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "screen"
    .parameter "container"

    .prologue
    .line 441
    iput p6, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 442
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 443
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPosition(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 445
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_1
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_2

    .line 452
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result p6

    .line 454
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    move-wide/from16 v2, p7

    move v4, p6

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    .line 457
    :cond_2
    return-void
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->show(Lcom/android/launcher2/BaseItem;)V

    .line 361
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method updateCustomViewToCellLayout()V
    .locals 7

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 692
    .local v3, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 693
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 694
    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 695
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 693
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 697
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 698
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v5

    .line 699
    .local v5, pos:I
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    .line 700
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 702
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v5           #pos:I
    :cond_1
    return-void
.end method

.method protected updateViewToCellLayout(I)V
    .locals 8
    .parameter "oldCountX"

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v1

    .line 678
    .local v1, countX:I
    if-lez p1, :cond_0

    if-eq p1, v1, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    .line 680
    .local v4, l:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 681
    invoke-virtual {v4, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 682
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 683
    .local v5, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    mul-int/2addr v6, p1

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int v2, v6, v7

    .line 684
    .local v2, gridPosition:I
    invoke-virtual {p0, v5, v2}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    .line 685
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 688
    .end local v0           #child:Landroid/view/View;
    .end local v2           #gridPosition:I
    .end local v3           #i:I
    .end local v4           #l:Lcom/android/launcher2/CellLayoutChildren;
    .end local v5           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected updateViewsToTheirItemPositions()V
    .locals 7

    .prologue
    .line 120
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 121
    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v6, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 122
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 120
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    .line 124
    .local v3, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 125
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v0

    .line 126
    .local v0, cellX:I
    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v1

    .line 127
    .local v1, cellY:I
    iget v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v6, v0, :cond_2

    iget v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-eq v6, v1, :cond_0

    .line 128
    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v6

    invoke-direct {p0, v3, v6}, Lcom/android/launcher2/CellLayoutNoGap;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;I)V

    goto :goto_1

    .line 131
    .end local v0           #cellX:I
    .end local v1           #cellY:I
    .end local v3           #item:Lcom/android/launcher2/BaseItem;
    .end local v4           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :cond_3
    return-void
.end method
