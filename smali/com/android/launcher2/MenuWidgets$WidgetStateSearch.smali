.class Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetStateSearch"
.end annotation


# instance fields
.field private mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 1
    .parameter

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    .line 1299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1297
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method


# virtual methods
.method public closeKeyboard()V
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsSearch;->closeKeyboard()V

    .line 1355
    return-void
.end method

.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 7
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
    .line 1308
    .local p2, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v4, Lcom/android/launcher2/MenuWidgetsSearch;

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;
    invoke-static {v5}, Lcom/android/launcher2/MenuWidgets;->access$100(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgetsFragment;->getTabHost()Lcom/android/launcher2/MenuView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {v4, v5, v6}, Lcom/android/launcher2/MenuWidgetsSearch;-><init>(Lcom/android/launcher2/MenuView;Lcom/android/launcher2/MenuWidgets;)V

    iput-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    .line 1310
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v4, p1, p2}, Lcom/android/launcher2/MenuWidgetsSearch;->enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V

    .line 1312
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v4, :cond_0

    .line 1313
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v4}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 1314
    .local v3, searchTitleBar:Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 1315
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v2

    .line 1316
    .local v2, loader:Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v2}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1317
    const v4, 0x7f070094

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1318
    .local v0, allAppsButton:Landroid/widget/ImageView;
    const-string v4, "all_apps_button_icon"

    invoke-virtual {v2, v4}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1319
    .local v1, allAppsIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1320
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1325
    .end local v0           #allAppsButton:Landroid/widget/ImageView;
    .end local v1           #allAppsIcon:Landroid/graphics/drawable/Drawable;
    .end local v2           #loader:Lcom/android/launcher2/ThemeLoader;
    .end local v3           #searchTitleBar:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 1
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
    .line 1329
    .local p2, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/MenuWidgetsSearch;->exit(Ljava/util/List;)V

    .line 1331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    .line 1333
    :cond_0
    return-void
.end method

.method public getSearchState()Lcom/android/launcher2/MenuWidgetsSearch;
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    return-object v0
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 1
    .parameter "item"
    .parameter "view"

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->this$0:Lcom/android/launcher2/MenuWidgets;

    #calls: Lcom/android/launcher2/MenuWidgets;->clickNotAllowed(Landroid/view/View;)V
    invoke-static {v0, p2}, Lcom/android/launcher2/MenuWidgets;->access$1800(Lcom/android/launcher2/MenuWidgets;Landroid/view/View;)V

    .line 1304
    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 1348
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    .line 1349
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->restore(Landroid/os/Bundle;)V

    .line 1351
    :cond_0
    return-void
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 1341
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    .line 1342
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->mSearchState:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->save(Landroid/os/Bundle;)V

    .line 1344
    :cond_0
    return-void
.end method
