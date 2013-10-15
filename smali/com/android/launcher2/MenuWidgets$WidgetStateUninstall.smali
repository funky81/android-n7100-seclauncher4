.class Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetStateUninstall"
.end annotation


# instance fields
.field private mUninstallOverlay:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0
    .parameter

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method


# virtual methods
.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 8
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
    .line 1227
    .local p2, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 1228
    .local v5, uninstallTitleBar:Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 1230
    if-nez p1, :cond_2

    const/4 v2, 0x1

    .line 1231
    .local v2, immediate:Z
    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    #getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v6

    invoke-virtual {v6, p2, v5, v2}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 1233
    const v6, 0x7f070089

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1234
    .local v4, mBackButton:Landroid/view/View;
    new-instance v6, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall$1;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall$1;-><init>(Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1240
    sget-boolean v6, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v6, :cond_0

    .line 1241
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v3

    .line 1242
    .local v3, loader:Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v3}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1243
    const v6, 0x7f070094

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1244
    .local v0, allAppsButton:Landroid/widget/ImageView;
    const-string v6, "all_apps_button_icon"

    invoke-virtual {v3, v6}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1245
    .local v1, allAppsIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1246
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1251
    .end local v0           #allAppsButton:Landroid/widget/ImageView;
    .end local v1           #allAppsIcon:Landroid/graphics/drawable/Drawable;
    .end local v2           #immediate:Z
    .end local v3           #loader:Lcom/android/launcher2/ThemeLoader;
    .end local v4           #mBackButton:Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 1252
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200af

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    .line 1255
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->refreshModel()V

    .line 1256
    return-void

    .line 1230
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 5
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
    .line 1260
    .local p2, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1261
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1262
    .local v2, page:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, j:I
    :goto_1
    if-ltz v1, :cond_0

    .line 1263
    invoke-virtual {v2, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewWidget;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PagedViewWidget;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 1262
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1260
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1266
    .end local v1           #j:I
    .end local v2           #page:Lcom/android/launcher2/PagedViewGridLayout;
    :cond_1
    return-void
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 3
    .parameter "item"
    .parameter "view"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    #calls: Lcom/android/launcher2/MenuWidgets;->isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z
    invoke-static {v0, p1}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/HomePendingItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p1, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    .line 1223
    :cond_0
    return-void
.end method

.method public refreshModel()V
    .locals 7

    .prologue
    .line 1275
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 1276
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6, v0}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1277
    .local v3, page:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, j:I
    :goto_1
    if-ltz v2, :cond_2

    .line 1278
    invoke-virtual {v3, v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewWidget;

    .line 1279
    .local v5, widget:Lcom/android/launcher2/PagedViewWidget;
    invoke-virtual {v5}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1280
    .local v4, tag:Ljava/lang/Object;
    instance-of v6, v4, Lcom/android/launcher2/HomePendingItem;

    if-eqz v6, :cond_0

    move-object v1, v4

    .line 1281
    check-cast v1, Lcom/android/launcher2/HomePendingItem;

    .line 1282
    .local v1, item:Lcom/android/launcher2/HomePendingItem;
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    #calls: Lcom/android/launcher2/MenuWidgets;->isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z
    invoke-static {v6, v1}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/HomePendingItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1286
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/PagedViewWidget;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 1277
    .end local v1           #item:Lcom/android/launcher2/HomePendingItem;
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1289
    .restart local v1       #item:Lcom/android/launcher2/HomePendingItem;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/PagedViewWidget;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1275
    .end local v1           #item:Lcom/android/launcher2/HomePendingItem;
    .end local v4           #tag:Ljava/lang/Object;
    .end local v5           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1294
    .end local v2           #j:I
    .end local v3           #page:Lcom/android/launcher2/PagedViewGridLayout;
    :cond_3
    return-void
.end method
