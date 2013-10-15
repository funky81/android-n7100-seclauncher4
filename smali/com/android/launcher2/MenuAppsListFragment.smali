.class public final Lcom/android/launcher2/MenuAppsListFragment;
.super Landroid/app/Fragment;
.source "MenuAppsListFragment.java"

# interfaces
.implements Lcom/android/launcher2/MenuView$AppModelNotifications;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/launcher2/MenuView$NeedsTabHost;
.implements Lcom/android/launcher2/Launcher$HardwareKeys;


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuAppsListFragment"


# instance fields
.field private mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

.field private mNormalTitleBar:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppsListFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    return-void
.end method

.method public appModelLoaded()V
    .locals 0

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->appModelUpdated()V

    .line 244
    return-void
.end method

.method public appModelUpdated()V
    .locals 3

    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    if-eqz v2, :cond_0

    .line 249
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    .line 250
    .local v1, topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v1, :cond_0

    .line 251
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuAppsListAdapter;->setApps(Ljava/util/List;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, mainView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 254
    check-cast v0, Lcom/android/launcher2/AlphabeticalListContainer;

    .end local v0           #mainView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/launcher2/AlphabeticalListContainer;->notifyDataChanged()V

    .line 264
    .end local v1           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 227
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 233
    :goto_0
    return v1

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isMenuExiting()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v1, p3, p4}, Lcom/android/launcher2/MenuAppsListAdapter;->getChild(II)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 232
    .local v0, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move v1, v2

    .line 233
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 55
    const-string v1, "MenuAppsListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate. savedInstanceState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppsListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    .line 58
    return-void

    .line 55
    :cond_0
    const-string v0, "not null"

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 71
    const-string v3, "MenuAppsListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView. savedInstanceState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_2

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const v2, 0x7f030036

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AlphabeticalListContainer;

    .line 75
    .local v1, v:Lcom/android/launcher2/AlphabeticalListContainer;
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v0, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/MenuAppsListAdapter;->setApps(Ljava/util/List;)V

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AlphabeticalListContainer;->setAdapter(Lcom/android/launcher2/MenuAppsListAdapter;)V

    .line 81
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AlphabeticalListContainer;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 82
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AlphabeticalListContainer;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 83
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AlphabeticalListContainer;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 87
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 91
    :cond_1
    return-object v1

    .line 71
    .end local v0           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v1           #v:Lcom/android/launcher2/AlphabeticalListContainer;
    :cond_2
    const-string v2, "not null"

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "MenuAppsListFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 107
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "MenuAppsListFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 98
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 214
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v3

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 218
    .local v0, item:Lcom/android/launcher2/AppItem;
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isMenuExiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onHideTab(Lcom/android/launcher2/MenuView;)V
    .locals 0
    .parameter "tabHost"

    .prologue
    .line 311
    return-void
.end method

.method public onHomePressed(Z)Z
    .locals 1
    .parameter "moveToDefaultScreen"

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->dismiss(Landroid/app/FragmentManager;)V

    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 24
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-boolean v20, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v20, :cond_2

    .line 112
    const-string v20, "add_widgets"

    sget-object v21, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 113
    const/4 v10, 0x0

    .line 209
    :goto_0
    return v10

    .line 114
    :cond_0
    sget-object v20, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v21, "addapps"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    sget-object v20, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v21, "create_folder"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 115
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    .line 116
    .local v18, tag:Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/AppItem;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v15, v18

    .line 117
    check-cast v15, Lcom/android/launcher2/AppItem;

    .line 118
    .local v15, item:Lcom/android/launcher2/AppItem;
    iget-object v0, v15, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 120
    const/4 v10, 0x0

    goto :goto_0

    .line 125
    .end local v15           #item:Lcom/android/launcher2/AppItem;
    .end local v18           #tag:Ljava/lang/Object;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v20

    if-nez v20, :cond_4

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsListFragment;->mAdapter:Lcom/android/launcher2/MenuAppsListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v15

    .line 127
    .restart local v15       #item:Lcom/android/launcher2/AppItem;
    iget-object v0, v15, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 128
    const/4 v10, 0x0

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Launcher;

    invoke-virtual {v15}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 131
    const/4 v10, 0x1

    goto :goto_0

    .line 135
    .end local v15           #item:Lcom/android/launcher2/AppItem;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuView;->isMenuExiting()Z

    move-result v20

    if-eqz v20, :cond_5

    const/4 v10, 0x0

    goto :goto_0

    .line 137
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Launcher;

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 140
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 157
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    .line 158
    .restart local v18       #tag:Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/BaseItem;

    move/from16 v20, v0

    if-nez v20, :cond_7

    .line 159
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v15, v18

    .line 161
    check-cast v15, Lcom/android/launcher2/BaseItem;

    .line 163
    .local v15, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsListFragment;->getView()Landroid/view/View;

    move-result-object v19

    .line 164
    .local v19, temp:Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 165
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v8, v19

    .line 167
    check-cast v8, Lcom/android/launcher2/AlphabeticalListContainer;

    .line 169
    .local v8, container:Lcom/android/launcher2/AlphabeticalListContainer;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 170
    .local v17, res:Landroid/content/res/Resources;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 171
    .local v9, context:Landroid/content/Context;
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 172
    .local v14, inflater:Landroid/view/LayoutInflater;
    const/4 v13, 0x0

    .line 174
    .local v13, iconView:Lcom/android/launcher2/AppIconView;
    instance-of v0, v15, Lcom/android/launcher2/AppFolderItem;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 175
    const v20, 0x7f03003a

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v14, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .end local v13           #iconView:Lcom/android/launcher2/AppIconView;
    check-cast v13, Lcom/android/launcher2/AppIconView;

    .line 179
    .restart local v13       #iconView:Lcom/android/launcher2/AppIconView;
    :cond_9
    :goto_1
    if-nez v13, :cond_b

    .line 180
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 176
    :cond_a
    instance-of v0, v15, Lcom/android/launcher2/AppItem;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 177
    const v20, 0x7f03003c

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v14, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .end local v13           #iconView:Lcom/android/launcher2/AppIconView;
    check-cast v13, Lcom/android/launcher2/AppIconView;

    .restart local v13       #iconView:Lcom/android/launcher2/AppIconView;
    goto :goto_1

    .line 182
    :cond_b
    invoke-virtual {v13, v15}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    .line 184
    const v20, 0x7f0c0089

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 185
    .local v5, cellWidth:I
    const v20, 0x7f0c008a

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 187
    .local v4, cellHeight:I
    invoke-virtual {v8, v13}, Lcom/android/launcher2/AlphabeticalListContainer;->addAppIconViewForDrag(Lcom/android/launcher2/AppIconView;)V

    .line 188
    const/high16 v20, 0x4000

    move/from16 v0, v20

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 189
    .local v6, childWidthMeasureSpec:I
    const/high16 v20, 0x4000

    move/from16 v0, v20

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 190
    .local v7, childheightMeasureSpec:I
    invoke-virtual {v13, v6, v7}, Lcom/android/launcher2/AppIconView;->measure(II)V

    .line 192
    div-int/lit8 v11, v5, 0x2

    .line 193
    .local v11, halfX:I
    div-int/lit8 v12, v4, 0x2

    .line 194
    .local v12, halfY:I
    invoke-virtual {v13, v11, v12}, Lcom/android/launcher2/AppIconView;->setLastTouchPoint(II)V

    .line 196
    invoke-virtual {v8}, Lcom/android/launcher2/AlphabeticalListContainer;->getLastRawTouchPoint()Landroid/graphics/PointF;

    move-result-object v16

    .line 197
    .local v16, lastTouch:Landroid/graphics/PointF;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sub-int v20, v20, v11

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v22, v22, v11

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v23, v23, v12

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/launcher2/AppIconView;->layout(IIII)V

    .line 199
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/launcher2/AppIconView;->setVisibility(I)V

    .line 200
    sget-boolean v20, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v20, :cond_c

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    .line 205
    :cond_c
    new-instance v20, Lcom/android/launcher2/ShadowBuilder;

    new-instance v21, Landroid/graphics/Canvas;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Canvas;-><init>()V

    sget v22, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v13, v0, v1}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v10

    .line 208
    .local v10, dragRes:Z
    invoke-virtual {v8, v13}, Lcom/android/launcher2/AlphabeticalListContainer;->removeViewInLayout(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onShowTab(Lcom/android/launcher2/MenuView;)V
    .locals 2
    .parameter "tabHost"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuAppsListFragment$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsListFragment$1;-><init>(Lcom/android/launcher2/MenuAppsListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 306
    :cond_0
    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 1
    .parameter "tabHost"

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const v0, 0x7f07009a

    invoke-virtual {p1, v0}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsListFragment;->mNormalTitleBar:Landroid/view/ViewGroup;

    goto :goto_0
.end method
