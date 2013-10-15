.class Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMoveToSecretBox"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1
    .parameter

    .prologue
    .line 1929
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1929
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method protected complete()V
    .locals 2

    .prologue
    .line 1933
    const-string v0, "SecretItem_TEST"

    const-string v1, "StateMoveToSecretBox complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->moveToSecretBox()V

    .line 1944
    return-void
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 5
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
    .line 1948
    .local p1, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enterItemViews(Ljava/lang/Iterable;)V

    .line 1949
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

    .line 1950
    .local v2, v:Lcom/android/launcher2/AppIconView;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v4, 0x1

    #calls: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    invoke-static {v3, v4, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V

    .line 1951
    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 1952
    .local v1, item:Lcom/android/launcher2/BaseItem;
    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    check-cast v1, Lcom/android/launcher2/AppItem;

    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v3, :cond_0

    .line 1953
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    goto :goto_0

    .line 1956
    .end local v2           #v:Lcom/android/launcher2/AppIconView;
    :cond_1
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
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
    .line 2022
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 2023
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2024
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
    .line 2016
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v0

    .line 2017
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    return-object v0
.end method

.method public moveToSecretBox()V
    .locals 19

    .prologue
    .line 1960
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->hasCheckedItems()Z

    move-result v14

    if-nez v14, :cond_0

    .line 2008
    :goto_0
    return-void

    .line 1963
    :cond_0
    const/4 v2, 0x0

    .line 1964
    .local v2, checked_item:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1965
    .local v7, mPM:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getSecretPageManager()Lcom/android/launcher2/SecretPageManager;

    move-result-object v11

    .line 1967
    .local v11, spMgr:Lcom/android/launcher2/SecretPageManager;
    const/4 v1, 0x0

    .line 1968
    .local v1, checkedItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v6, 0x0

    .line 1969
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1971
    .local v10, secretMoveItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #checkedItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1972
    .restart local v1       #checkedItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1974
    .restart local v6       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->getCheckedItems()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    .line 1975
    .local v5, item:Lcom/android/launcher2/AppItem;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1976
    invoke-virtual {v5}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1977
    invoke-virtual {v5}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1979
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1981
    .end local v5           #item:Lcom/android/launcher2/AppItem;
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1983
    .local v3, hItemList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #calls: Lcom/android/launcher2/MenuAppsGrid;->getRealatedApps(Ljava/util/List;)Ljava/util/List;
    invoke-static {v14, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4700(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 1984
    sget-object v14, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 1985
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    .line 1986
    .restart local v5       #item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v5}, Lcom/android/launcher2/AppItem;->moveSecretBox()V

    goto :goto_2

    .line 1988
    .end local v5           #item:Lcom/android/launcher2/AppItem;
    :cond_3
    sget-object v14, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 1990
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1991
    .local v9, pkName:Ljava/lang/String;
    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->addSecretPackage(Ljava/lang/String;)Z

    .line 1992
    invoke-virtual {v11, v3, v9}, Lcom/android/launcher2/SecretPageManager;->getHomeViewItemListByPackageName(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_3

    .line 1995
    .end local v9           #pkName:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/Launcher;

    iget-object v14, v14, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v14}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    .line 1996
    .local v13, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v13, v3}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V

    .line 1998
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v8

    .line 1999
    .local v8, mv:Lcom/android/launcher2/MenuView;
    const/4 v14, 0x1

    invoke-virtual {v8, v6, v14}, Lcom/android/launcher2/MenuView;->setSecretAvailableWidgets(Ljava/util/List;Z)V

    .line 2000
    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->setSecretWidgetByFiltering()V

    .line 2001
    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    .line 2002
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v14}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v14

    sget-object v15, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v14, v15}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2004
    const/4 v12, 0x0

    .line 2006
    .local v12, toast:Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/launcher2/MenuAppsGrid;->access$4800(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0e00d1

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 2007
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
