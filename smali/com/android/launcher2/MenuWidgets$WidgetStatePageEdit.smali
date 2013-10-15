.class public Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"

# interfaces
.implements Lcom/android/launcher2/QuickView$QuickViewInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetStatePageEdit"
.end annotation


# instance fields
.field private mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0
    .parameter

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method

.method private isQuickViewOpen()Z
    .locals 1

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 4
    .parameter "oldState"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1368
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setVisibility(I)V

    .line 1369
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->clearAccessibilityFocus()V

    .line 1370
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-nez v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuView;->getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    .line 1389
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 1390
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const v1, 0x7f0e0070

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnlyToastId(I)V

    .line 1391
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnly(Z)V

    .line 1392
    if-eqz p1, :cond_1

    .line 1393
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->drawOpenAnimation()V

    .line 1394
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher2/MenuTitleBarManager;->slideUpTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V

    .line 1400
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/MenuWidgets;->setWidgetTextVisible(Z)V

    .line 1402
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->open()V

    .line 1403
    return-void

    .line 1396
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->openInstantly()V

    .line 1397
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V

    goto :goto_0
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 3
    .parameter "newState"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    .line 1407
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->setDirtyFlags()V

    .line 1408
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuWidgets;->setVisibility(I)V

    .line 1409
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->exitWithoutAnimation()V

    .line 1410
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->resetTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1411
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    .line 1412
    return-void
.end method

.method public exitWithAnimation()V
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1499
    :goto_0
    return-void

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 1497
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    .line 1498
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public exitWithoutAnimation()V
    .locals 3

    .prologue
    .line 1502
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1506
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->setWidgetTextVisible(Z)V

    .line 1508
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 1509
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->close()V

    .line 1510
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    .line 1511
    .local v0, curPage:I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1512
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuWidgets;->setCurrentPage(I)V

    .line 1514
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->setVisibility(I)V

    .line 1515
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->updateVisiblePages()I

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getNumSecretPages()I
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getSecretWidgetPageCount()I

    move-result v0

    return v0
.end method

.method public getPage(I)Landroid/view/View;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageHorizontalOffset()I
    .locals 2

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    #calls: Lcom/android/launcher2/MenuWidgets;->getDesiredChildPageWidth()I
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$2100(Lcom/android/launcher2/MenuWidgets;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPagesLocationOnScreen([I)V
    .locals 1
    .parameter "location"

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets;->getLocationOnScreen([I)V

    .line 1442
    return-void
.end method

.method public getPagesTop()I
    .locals 3

    .prologue
    .line 1451
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1452
    .local v0, normalTitleBar:Landroid/view/View;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getTop()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public movePage(II)V
    .locals 0
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 1437
    return-void
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 0
    .parameter "item"
    .parameter "view"

    .prologue
    .line 1364
    return-void
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 1

    .prologue
    .line 1464
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->isQuickViewOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1465
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->exitWithoutAnimation()V

    .line 1466
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->changeToWidgetStateNormal()V

    .line 1468
    :cond_0
    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 3

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2200(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuStateAnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->slideDownTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuStateAnimatorSet;)V

    .line 1473
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setWidgetTextVisible(Z)V

    .line 1474
    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1484
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1485
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    #calls: Lcom/android/launcher2/MenuWidgets;->setDragInProgress(Z)V
    invoke-static {v0, v2}, Lcom/android/launcher2/MenuWidgets;->access$2300(Lcom/android/launcher2/MenuWidgets;Z)V

    .line 1486
    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 3

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1479
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x1

    #calls: Lcom/android/launcher2/MenuWidgets;->setDragInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuWidgets;->access$2300(Lcom/android/launcher2/MenuWidgets;Z)V

    .line 1480
    return-void
.end method

.method public refreshModel()V
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 1522
    :cond_0
    return-void
.end method

.method public refreshQuickView(Z)V
    .locals 2
    .parameter "isSecret"

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1547
    :goto_0
    return-void

    .line 1540
    :cond_0
    if-eqz p1, :cond_1

    .line 1541
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    .line 1546
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    goto :goto_0

    .line 1543
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    goto :goto_1
.end method

.method public refreshView()V
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 1527
    return-void
.end method

.method public bridge synthetic restore(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1358
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1358
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveCurrentPageOrder()V
    .locals 0

    .prologue
    .line 1460
    return-void
.end method

.method updateQuickView()V
    .locals 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->loadLayoutParameters()V

    .line 1532
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->requestLayout()V

    .line 1533
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setWidgetTextVisible(Z)V

    .line 1535
    :cond_0
    return-void
.end method
