.class Lcom/android/launcher2/MenuAppsGridFragment$1;
.super Ljava/lang/Object;
.source "MenuAppsGridFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGridFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGridFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 504
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    if-nez v6, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v10

    .line 507
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->isShown()Z

    move-result v4

    .line 508
    .local v4, isMenuShown:Z
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v3

    .line 509
    .local v3, isMenuExiting:Z
    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    .line 515
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.android.launcher2.prefs"

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 520
    .local v5, prefs:Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$100(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuAppsGrid$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 521
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 522
    .local v1, fragManager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 523
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-static {v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v6

    if-nez v6, :cond_2

    .line 524
    invoke-static {v2, v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 528
    .end local v1           #fragManager:Landroid/app/FragmentManager;
    .end local v2           #ft:Landroid/app/FragmentTransaction;
    :cond_2
    sget-object v6, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 530
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 531
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v6, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 532
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 533
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    const-string v7, "MenuView.ViewType"

    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v7

    #setter for: Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;
    invoke-static {v6, v7}, Lcom/android/launcher2/MenuAppsGridFragment;->access$202(Lcom/android/launcher2/MenuAppsGridFragment;Lcom/android/launcher2/MenuView$ViewType;)Lcom/android/launcher2/MenuView$ViewType;

    .line 535
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;
    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGridFragment;->access$200(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuView;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    .line 536
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    .line 537
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 556
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 559
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    new-instance v7, Lcom/android/launcher2/MenuAppsGridFragment$1$1;

    invoke-direct {v7, p0}, Lcom/android/launcher2/MenuAppsGridFragment$1$1;-><init>(Lcom/android/launcher2/MenuAppsGridFragment$1;)V

    sget-wide v8, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher2/MenuAppsGrid;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 579
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->restorePopupMenu()Z

    .line 580
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    iget-object v7, v7, Lcom/android/launcher2/MenuAppsGridFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 581
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    iput-object v11, v6, Lcom/android/launcher2/MenuAppsGridFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    goto/16 :goto_0

    .line 539
    :cond_3
    sget-object v6, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 540
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 541
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    sget-object v6, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 542
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 543
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_4
    const-string v6, "DONT_CHG_STATE_ON_PREDRAW"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 548
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$300(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V

    .line 550
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 551
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "DONT_CHG_STATE_ON_PREDRAW"

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 554
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;
    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGridFragment;->access$100(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto/16 :goto_1

    .line 569
    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #getter for: Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;
    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGridFragment;->access$400(Lcom/android/launcher2/MenuAppsGridFragment;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuAppsGrid;->restoreOpenFolderState(Landroid/os/Bundle;)V

    .line 570
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    #setter for: Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;
    invoke-static {v6, v11}, Lcom/android/launcher2/MenuAppsGridFragment;->access$402(Lcom/android/launcher2/MenuAppsGridFragment;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto/16 :goto_2
.end method
