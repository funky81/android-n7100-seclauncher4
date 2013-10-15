.class public Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateShareAppSelect"
.end annotation


# instance fields
.field private mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1
    .parameter

    .prologue
    .line 2579
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    return-void
.end method


# virtual methods
.method public allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 2583
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic appBadgeUpdated(Ljava/util/List;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2579
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->appBadgeUpdated(Ljava/util/List;)V

    return-void
.end method

.method protected complete()V
    .locals 17

    .prologue
    .line 2609
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2611
    .local v9, r:Landroid/content/res/Resources;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2613
    .local v11, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->getCheckedItems()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    .line 2614
    .local v7, item:Lcom/android/launcher2/AppItem;
    const/4 v5, 0x0

    .line 2615
    .local v5, info:Landroid/content/pm/PackageInfo;
    iget-object v8, v7, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2618
    .local v8, packName:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v14}, Lcom/android/launcher2/MenuAppsGrid;->access$5500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/pm/PackageManager;

    move-result-object v14

    iget-object v15, v7, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2623
    :goto_1
    const/4 v1, 0x0

    .line 2624
    .local v1, appWithVersion:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 2625
    move-object v1, v8

    .line 2630
    :goto_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-eqz v14, :cond_0

    .line 2631
    const-string v14, ", "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2633
    :cond_0
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2619
    .end local v1           #appWithVersion:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2621
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 2627
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #appWithVersion:Ljava/lang/String;
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " v "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2636
    .end local v1           #appWithVersion:Ljava/lang/String;
    .end local v5           #info:Landroid/content/pm/PackageInfo;
    .end local v7           #item:Lcom/android/launcher2/AppItem;
    .end local v8           #packName:Ljava/lang/String;
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2640
    .local v12, strAllLabels:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    .end local v11           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2642
    .restart local v11       #sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->getCheckedItems()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    .line 2643
    .restart local v7       #item:Lcom/android/launcher2/AppItem;
    const/4 v5, 0x0

    .line 2644
    .restart local v5       #info:Landroid/content/pm/PackageInfo;
    iget-object v8, v7, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2645
    .restart local v8       #packName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2648
    .restart local v1       #appWithVersion:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v14}, Lcom/android/launcher2/MenuAppsGrid;->access$5500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/pm/PackageManager;

    move-result-object v14

    iget-object v15, v7, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 2654
    :goto_4
    if-nez v5, :cond_3

    .line 2655
    move-object v1, v8

    .line 2660
    :goto_5
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2661
    const-string v14, " ( http://market.android.com/search?q=pname:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2662
    iget-object v14, v7, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2663
    const-string v14, " )\n"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2649
    :catch_1
    move-exception v3

    .line 2651
    .restart local v3       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 2657
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " v "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 2665
    .end local v1           #appWithVersion:Ljava/lang/String;
    .end local v5           #info:Landroid/content/pm/PackageInfo;
    .end local v7           #item:Lcom/android/launcher2/AppItem;
    .end local v8           #packName:Ljava/lang/String;
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2667
    .local v13, strAllLinks:Ljava/lang/String;
    const v14, 0x7f0e0072

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    const/16 v16, 0x1

    aput-object v13, v15, v16

    invoke-virtual {v9, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 2669
    .local v10, retString:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.SEND"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2670
    .local v6, intent:Landroid/content/Intent;
    const-string v14, "text/plain"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2671
    const-string v14, "android.intent.extra.TEXT"

    invoke-virtual {v6, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2673
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e0073

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 2676
    .local v2, chooserIntent:Landroid/content/Intent;
    const/high16 v14, 0x2000

    invoke-virtual {v2, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2677
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/Launcher;

    invoke-virtual {v14, v2}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;)Z

    .line 2678
    return-void
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1
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
    .line 2587
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v0, :cond_0

    .line 2588
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->saveLastStatesCurrentPage()V

    .line 2590
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2591
    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 2592
    return-void
.end method

.method public bridge synthetic enterItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2579
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enterItemViews(Ljava/lang/Iterable;)V

    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 0
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
    .line 2596
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->restoreLastStatesCurrentPage()V

    .line 2597
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2598
    return-void
.end method

.method public bridge synthetic exitItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2579
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exitItemViews(Ljava/lang/Iterable;)V

    return-void
.end method

.method public getAppsList()Ljava/util/List;
    .locals 5
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
    .line 2602
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getUninstallableApps()Ljava/util/List;

    move-result-object v1

    .line 2603
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-nez v1, :cond_0

    const/4 v0, -0x1

    .line 2604
    .local v0, itemCount:I
    :goto_0
    const-string v2, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateShareAppSelect::getAppsList() item count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    return-object v1

    .line 2603
    .end local v0           #itemCount:I
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onAppModelUpdated()V
    .locals 0

    .prologue
    .line 2579
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->onAppModelUpdated()V

    return-void
.end method

.method public bridge synthetic onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2579
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 2579
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->onResume()V

    return-void
.end method

.method public bridge synthetic preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2579
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2579
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method public bridge synthetic restore(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2579
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->restore(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public returnToPreviousState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2683
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 2685
    .local v1, newState:Lcom/android/launcher2/MenuAppsGrid$State;
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    const-string v4, "com.android.launcher2.prefs"

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2688
    .local v2, prefs:Landroid/content/SharedPreferences;
    sget-object v3, Lcom/android/launcher2/MenuAppsGridFragment;->SHARE_SELECT_MODE:Ljava/lang/String;

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2689
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2690
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/android/launcher2/MenuAppsGridFragment;->SHARE_SELECT_MODE:Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2691
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2692
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;
    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$5200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuStateAnimatorSet;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuTitleBarManager;->slideDownTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuStateAnimatorSet;)V

    .line 2693
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGridFragment;->handleDownloadedAppsStateChange()V

    .line 2698
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_1
    return-void

    .line 2683
    .end local v1           #newState:Lcom/android/launcher2/MenuAppsGrid$State;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

    goto :goto_0

    .line 2695
    .restart local v1       #newState:Lcom/android/launcher2/MenuAppsGrid$State;
    .restart local v2       #prefs:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_1
.end method

.method public bridge synthetic save(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2579
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->save(Landroid/os/Bundle;)V

    return-void
.end method
