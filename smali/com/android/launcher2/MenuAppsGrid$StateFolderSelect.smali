.class public Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateFolderSelect"
.end annotation


# static fields
.field private static final SELECTED_FOLDER_ID:Ljava/lang/String; = "SELECTED_FOLDER_ID"

.field private static final UNSPECIFIED:J = -0x1L


# instance fields
.field private ModifyAppsList:Z

.field private mTargetFolderId:J

.field private needToSyncAppsList:Z

.field private prevState:Lcom/android/launcher2/MenuAppsGrid$State;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2350
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    .line 2352
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    .line 2353
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 2354
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->ModifyAppsList:Z

    .line 2355
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->needToSyncAppsList:Z

    .line 2350
    return-void
.end method

.method static synthetic access$5802(Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2350
    iput-wide p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    return-wide p1
.end method


# virtual methods
.method public bridge synthetic allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 2350
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->allowCustomizeGrid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic appBadgeUpdated(Ljava/util/List;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2350
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->appBadgeUpdated(Ljava/util/List;)V

    return-void
.end method

.method public backState()V
    .locals 2

    .prologue
    .line 2422
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3100()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_2

    .line 2424
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2431
    :goto_0
    return-void

    .line 2428
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method protected complete()V
    .locals 13

    .prologue
    .line 2449
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4400()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2450
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->getFolderTitletoAddButton()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v10, v11, v12}, Lcom/android/launcher2/MenuAppsGrid;->preCreateFolder(Ljava/lang/String;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2452
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v8

    .line 2454
    .local v8, targetFolder:Lcom/android/launcher2/FolderItem;
    if-nez v8, :cond_2

    .line 2521
    :cond_1
    :goto_0
    return-void

    .line 2456
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getCheckedViews()Ljava/util/List;

    move-result-object v9

    .line 2457
    .local v9, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getCheckedItems()Ljava/util/List;

    move-result-object v6

    .line 2459
    .local v6, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/high16 v2, -0x8000

    .line 2460
    .local v2, folderScreenIndex:I
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    .line 2461
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 2462
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10, v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v11

    move-object v10, v8

    check-cast v10, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v11, v10}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2463
    move v2, v3

    .line 2469
    :cond_3
    const/high16 v10, -0x8000

    if-eq v10, v2, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v10

    if-eq v10, v2, :cond_4

    .line 2470
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10, v2}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    .line 2474
    :cond_4
    const/4 v10, 0x1

    invoke-interface {v8, v10}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    .line 2475
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #calls: Lcom/android/launcher2/MenuAppsGrid;->animateSelectedToFolder(Ljava/util/List;Lcom/android/launcher2/FolderItem;Ljava/util/List;I)V
    invoke-static {v10, v9, v8, v6, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$5300(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Lcom/android/launcher2/FolderItem;Ljava/util/List;I)V

    .line 2477
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    .line 2478
    .local v5, item:Lcom/android/launcher2/AppItem;
    invoke-interface {v8, v5}, Lcom/android/launcher2/FolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_2

    .line 2461
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/android/launcher2/AppItem;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2480
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_6
    const-wide/16 v10, -0x1

    iput-wide v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    .line 2481
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4400()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3100()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2483
    :cond_7
    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    move-object v5, v8

    .line 2484
    check-cast v5, Lcom/android/launcher2/AppItem;

    .line 2485
    .restart local v5       #item:Lcom/android/launcher2/AppItem;
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v1

    .line 2490
    .local v1, currentScreen:I
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->ModifyAppsList:Z

    .line 2492
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 2494
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;
    invoke-static {v10}, Lcom/android/launcher2/MenuAppsGrid;->access$5400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v10, v11, :cond_9

    .line 2496
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-wide v11, v5, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v10, v11, v12}, Lcom/android/launcher2/MenuAppsGrid;->getPageIndexForItemId(J)I

    move-result v7

    .line 2497
    .local v7, pageIndex:I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_8

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v10

    if-eq v7, v10, :cond_8

    .line 2498
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10, v7}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    .line 2504
    .end local v7           #pageIndex:I
    :cond_8
    :goto_3
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v11, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v10, v11, :cond_a

    .line 2505
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v10}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2509
    :goto_4
    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 2512
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v11, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v10, v11, :cond_1

    .line 2513
    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    goto/16 :goto_0

    .line 2500
    :cond_9
    iget v10, v5, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v10, v1, :cond_8

    .line 2501
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v11, v5, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    goto :goto_3

    .line 2507
    :cond_a
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v10}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_4

    .line 2518
    .end local v1           #currentScreen:I
    .end local v5           #item:Lcom/android/launcher2/AppItem;
    :cond_b
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v10}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto/16 :goto_0
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .parameter
    .parameter "oldState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2360
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2361
    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 2362
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Ljava/util/List;Z)V
    invoke-static {v1, p1, v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V

    .line 2371
    return-void

    .line 2362
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic enterItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2350
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enterItemViews(Ljava/lang/Iterable;)V

    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 6
    .parameter
    .parameter "newState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2396
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2397
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    .line 2399
    .local v0, targetFolder:Lcom/android/launcher2/FolderItem;
    if-eqz v0, :cond_0

    .line 2400
    invoke-interface {v0, v5}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    .line 2403
    :cond_0
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4400()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3100()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v1, :cond_3

    .line 2406
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3800()Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3900()Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2416
    :cond_3
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->ModifyAppsList:Z

    .line 2417
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$4402(Z)Z

    .line 2418
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$3102(Z)Z

    .line 2419
    return-void
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2435
    .local p1, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    .line 2437
    .local v1, targetFolder:Lcom/android/launcher2/FolderItem;
    if-eqz v1, :cond_1

    .line 2438
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 2439
    .local v2, v:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_0

    .line 2440
    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->invalidate()V

    goto :goto_0

    .line 2444
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #v:Lcom/android/launcher2/AppIconView;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exitItemViews(Ljava/lang/Iterable;)V

    .line 2445
    return-void
.end method

.method public getAppsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2390
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v0

    .line 2391
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    return-object v0
.end method

.method public getTargetFolder()Lcom/android/launcher2/FolderItem;
    .locals 5

    .prologue
    .line 2563
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 2565
    .local v0, item:Lcom/android/launcher2/AppItem;
    const/4 v1, 0x0

    .line 2566
    .local v1, targetFolder:Lcom/android/launcher2/FolderItem;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2567
    check-cast v1, Lcom/android/launcher2/FolderItem;

    .line 2570
    :cond_0
    return-object v1
.end method

.method public onAppModelUpdated()V
    .locals 5

    .prologue
    .line 2550
    iget-wide v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 2560
    :cond_0
    :goto_0
    return-void

    .line 2555
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    .line 2557
    .local v0, targetFolder:Lcom/android/launcher2/FolderItem;
    if-eqz v0, :cond_0

    .line 2558
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2350
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 2350
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->onResume()V

    return-void
.end method

.method public bridge synthetic preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2350
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2350
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "bundle"

    .prologue
    .line 2534
    const/4 v0, 0x0

    .line 2535
    .local v0, rc:Z
    if-eqz p1, :cond_0

    .line 2536
    const-string v2, "SELECTED_FOLDER_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    .line 2537
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->getTargetFolder()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    .line 2538
    .local v1, targetFolder:Lcom/android/launcher2/FolderItem;
    if-eqz v1, :cond_0

    .line 2539
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    .line 2540
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->restore(Landroid/os/Bundle;)Z

    .line 2541
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 2542
    const/4 v0, 0x1

    .line 2545
    .end local v1           #targetFolder:Lcom/android/launcher2/FolderItem;
    :cond_0
    return v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 2526
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->save(Landroid/os/Bundle;)V

    .line 2527
    if-eqz p1, :cond_0

    .line 2528
    const-string v0, "SELECTED_FOLDER_ID"

    iget-wide v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2530
    :cond_0
    return-void
.end method
