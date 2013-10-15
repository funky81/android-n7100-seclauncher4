.class public Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"

# interfaces
.implements Lcom/android/launcher2/QuickView$QuickViewInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatePageEdit"
.end annotation


# instance fields
.field private mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 2704
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 2704
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->allowCustomizeGrid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic appBadgeUpdated(Ljava/util/List;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2704
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->appBadgeUpdated(Ljava/util/List;)V

    return-void
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 6
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
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const v5, 0x7f0e006f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2800
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$5400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v1

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 2801
    .local v0, isAlphaGrid:Z
    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 2803
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-nez v1, :cond_0

    .line 2804
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuView;->getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    .line 2805
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnlyToastId(I)V

    .line 2807
    :cond_0
    if-ne v0, v2, :cond_1

    .line 2808
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnlyToastId(I)V

    .line 2810
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->setHideItems(Z)V

    .line 2811
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/launcher2/MenuAppsGrid;->hidePageIndicator(Z)V

    .line 2812
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->clearAccessibilityFocus()V

    .line 2814
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->syncPages()V

    .line 2835
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    .line 2838
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 2839
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnly(Z)V

    .line 2840
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v1, :cond_4

    .line 2841
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->drawOpenAnimation()V

    .line 2842
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v3, p1}, Lcom/android/launcher2/MenuTitleBarManager;->slideUpTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V

    .line 2847
    :goto_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-boolean v2, v1, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    .line 2848
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->open()V

    .line 2849
    return-void

    .end local v0           #isAlphaGrid:Z
    :cond_2
    move v0, v3

    .line 2800
    goto :goto_0

    .restart local v0       #isAlphaGrid:Z
    :cond_3
    move v1, v3

    .line 2811
    goto :goto_1

    .line 2844
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->openInstantly()V

    .line 2845
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V

    goto :goto_2
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 2
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
    .line 2934
    .local p1, items:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    #calls: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V
    invoke-static {v0, v1, p1}, Lcom/android/launcher2/MenuAppsGrid;->access$5600(Lcom/android/launcher2/MenuAppsGrid;ZLjava/lang/Iterable;)V

    .line 2935
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 2853
    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v1, :cond_0

    .line 2854
    const-string v1, "Launcher.MenuAppsGrid"

    const-string v2, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    :goto_0
    return-void

    .line 2858
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->setHideItems(Z)V

    .line 2859
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->setDirtyFlags()V

    .line 2861
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 2862
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->close()V

    .line 2863
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    .line 2864
    .local v0, curPage:I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2865
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPage(I)V

    .line 2867
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->setVisibility(I)V

    .line 2868
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->showPageIndicator(Z)V

    .line 2869
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->updateVisiblePages()I

    .line 2871
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 2872
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-boolean v2, v1, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    .line 2873
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    goto :goto_0
.end method

.method public bridge synthetic exitItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2704
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    return-void
.end method

.method public exitWithAnimaton()V
    .locals 1

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2887
    :goto_0
    return-void

    .line 2884
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 2885
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    .line 2886
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public exitWithoutAnimation()V
    .locals 3

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2896
    :goto_0
    return-void

    .line 2894
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x1

    const/4 v2, 0x0

    #calls: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$5600(Lcom/android/launcher2/MenuAppsGrid;ZLjava/lang/Iterable;)V

    .line 2895
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public bridge synthetic getAppsList()Ljava/util/List;
    .locals 1

    .prologue
    .line 2704
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->getAppsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getNumSecretPages()I
    .locals 1

    .prologue
    .line 2753
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getMenuSecretPageCnt()I

    move-result v0

    return v0
.end method

.method public getPage(I)Landroid/view/View;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 2721
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageHorizontalOffset()I
    .locals 4

    .prologue
    .line 2736
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getWidth()I

    move-result v1

    .line 2737
    .local v1, w:I
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2738
    .local v0, s:I
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageSpacing()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public getPagesLocationOnScreen([I)V
    .locals 1
    .parameter "location"

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getLocationOnScreen([I)V

    .line 2732
    return-void
.end method

.method public getPagesTop()I
    .locals 2

    .prologue
    .line 2743
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getTitleBarHight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isQuickViewOpen()Z
    .locals 1

    .prologue
    .line 2877
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

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

.method public movePage(II)V
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v0, p1, p2}, Lcom/android/launcher2/QuickViewMainMenu;->zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V

    .line 2727
    return-void
.end method

.method public onAppModelUpdated()V
    .locals 1

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 2908
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 2910
    :cond_0
    return-void
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 1
    .parameter "item"
    .parameter "view"

    .prologue
    .line 2711
    const/4 v0, 0x0

    return v0
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 2

    .prologue
    .line 2780
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2781
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2783
    :cond_0
    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2772
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$5200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuStateAnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->slideDownTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuStateAnimatorSet;)V

    .line 2773
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/MenuAppsGrid;->showPageIndicator(Z)V

    .line 2775
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    #calls: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V
    invoke-static {v0, v3, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$5600(Lcom/android/launcher2/MenuAppsGrid;ZLjava/lang/Iterable;)V

    .line 2776
    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2793
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #calls: Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V
    invoke-static {v0, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$5700(Lcom/android/launcher2/MenuAppsGrid;Z)V

    .line 2794
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2795
    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 3

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x1

    #calls: Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$5700(Lcom/android/launcher2/MenuAppsGrid;Z)V

    .line 2788
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2789
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 2900
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 2901
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 2903
    :cond_0
    return-void
.end method

.method public bridge synthetic preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2704
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method public refreshQuickView(Z)V
    .locals 2
    .parameter "isSecret"

    .prologue
    .line 2920
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2930
    :goto_0
    return-void

    .line 2923
    :cond_0
    if-eqz p1, :cond_1

    .line 2924
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    .line 2929
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    goto :goto_0

    .line 2926
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    goto :goto_1
.end method

.method public bridge synthetic restore(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2704
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->restore(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic save(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2704
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->save(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveCurrentPageOrder()V
    .locals 5

    .prologue
    .line 2758
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 2760
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v3

    .line 2761
    .local v3, numPages:I
    const/4 v0, 0x0

    .local v0, curPage:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 2762
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 2763
    .local v2, item:Lcom/android/launcher2/BaseItem;
    iput v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_1

    .line 2761
    .end local v2           #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2767
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 2768
    return-void
.end method

.method updateQuickView()V
    .locals 1

    .prologue
    .line 2913
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 2914
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->loadLayoutParameters()V

    .line 2915
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->requestLayout()V

    .line 2917
    :cond_0
    return-void
.end method
