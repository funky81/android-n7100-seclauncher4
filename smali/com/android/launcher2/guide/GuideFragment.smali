.class public final Lcom/android/launcher2/guide/GuideFragment;
.super Ljava/lang/Object;
.source "GuideFragment.java"


# static fields
.field public static CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z = false

.field public static GMode:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "GuideFragment"

.field public static currentPageToStopNavigation:I

.field public static instance:Lcom/android/launcher2/guide/GuideFragment;

.field public static isExtraWorkspacePageAdded:Z

.field public static isGuideCompleted:Z

.field public static isViewApps:Z

.field public static isViewAppsDialogDismissed:Z

.field public static isWallpaperGuide_Toast3_visible:Z

.field public static isWrongActionDialogVisible:Z

.field public static mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

.field public static mWrongActionDialog:Landroid/app/AlertDialog;

.field public static sHelpHubStepNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isExtraWorkspacePageAdded:Z

    .line 48
    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    .line 49
    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 50
    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    .line 51
    sput v0, Lcom/android/launcher2/guide/GuideFragment;->currentPageToStopNavigation:I

    .line 52
    sput-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    .line 53
    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWallpaperGuide_Toast3_visible:Z

    .line 54
    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 58
    sput-object v1, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 60
    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 290
    return-void
.end method

.method public static declared-synchronized deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 10
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 71
    const-class v7, Lcom/android/launcher2/guide/GuideFragment;

    monitor-enter v7

    if-nez p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    .line 74
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 75
    const-string v6, "GuideFragment"

    const-string v8, "get extras not null"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v6, "homescreen:guide_mode"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    .line 77
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 78
    const-string v6, "GuideFragment"

    const-string v8, "guide mode is not ours"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 83
    :cond_2
    :try_start_1
    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/Launcher;

    move-object v2, v0

    .line 84
    .local v2, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    .line 85
    .local v1, homeView:Lcom/android/launcher2/HomeView;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    .line 87
    .local v4, menuView:Lcom/android/launcher2/MenuView;
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "onBackPressed"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 88
    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/Launcher;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    .line 91
    :cond_3
    if-nez v1, :cond_4

    if-eqz v4, :cond_19

    .line 92
    :cond_4
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "onBackPressed"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 93
    const-string v6, "currentGmode"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, oldGmode:Ljava/lang/String;
    sput-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    .line 95
    const-string v6, "addapps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 96
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 97
    new-instance v6, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 99
    :cond_5
    const-string v6, "add_widgets"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 100
    new-instance v6, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 101
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 103
    :cond_6
    const-string v6, "view_all_apps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 104
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 105
    new-instance v6, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 107
    :cond_7
    const-string v6, "resize_widgets"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 108
    new-instance v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 110
    :cond_8
    const-string v6, "create_folder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 111
    new-instance v6, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 113
    :cond_9
    const-string v6, "move_app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 114
    new-instance v6, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 116
    :cond_a
    const-string v6, "remove_items"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 117
    new-instance v6, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 119
    :cond_b
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_0

    .line 120
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    goto/16 :goto_0

    .line 123
    .end local v5           #oldGmode:Ljava/lang/String;
    :cond_c
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "addapps"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 124
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_d

    .line 125
    const-string v6, "GuideFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 127
    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 129
    :cond_d
    new-instance v6, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 130
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->showHelpDialog()V

    .line 168
    :cond_e
    :goto_1
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 169
    .local v3, mHandler:Landroid/os/Handler;
    new-instance v6, Lcom/android/launcher2/guide/GuideFragment$1;

    invoke-direct {v6}, Lcom/android/launcher2/guide/GuideFragment$1;-><init>()V

    const-wide/16 v8, 0x190

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 132
    .end local v3           #mHandler:Landroid/os/Handler;
    :cond_f
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "view_all_apps"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 133
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 134
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_10

    .line 135
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 136
    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 138
    :cond_10
    new-instance v6, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_1

    .line 140
    :cond_11
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "change_wallpaper"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 141
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_12

    .line 142
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 143
    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 145
    :cond_12
    new-instance v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_1

    .line 147
    :cond_13
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "resize_widgets"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 148
    new-instance v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_1

    .line 150
    :cond_14
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "create_folder"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 151
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 152
    new-instance v6, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_1

    .line 154
    :cond_15
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "remove_items"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 155
    new-instance v6, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto/16 :goto_1

    .line 157
    :cond_16
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "move_app"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 158
    new-instance v6, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto/16 :goto_1

    .line 160
    :cond_17
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "add_widgets"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 161
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_18

    .line 162
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 163
    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 165
    :cond_18
    new-instance v6, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-direct {v6, p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto/16 :goto_1

    .line 179
    :cond_19
    const-string v6, "GuideFragment"

    const-string v8, "frag=null"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 4
    .parameter "activity"

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, retval:Landroid/view/ViewGroup;
    instance-of v2, p0, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 264
    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 265
    .local v0, launcher:Lcom/android/launcher2/Launcher;
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "move_app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "change_wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "view_all_apps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "remove_items"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "resize_widgets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    .line 278
    .end local v0           #launcher:Lcom/android/launcher2/Launcher;
    :cond_1
    :goto_0
    return-object v1

    .line 269
    .restart local v0       #launcher:Lcom/android/launcher2/Launcher;
    :cond_2
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "addapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "add_widgets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "create_folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    :cond_3
    sget-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-nez v2, :cond_4

    .line 271
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    goto :goto_0

    .line 274
    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    goto :goto_0
.end method

.method public static getGuideFragmentInstance()Lcom/android/launcher2/guide/GuideFragment;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->instance:Lcom/android/launcher2/guide/GuideFragment;

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->instance:Lcom/android/launcher2/guide/GuideFragment;

    .line 298
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher2/guide/GuideFragment;

    invoke-direct {v0}, Lcom/android/launcher2/guide/GuideFragment;-><init>()V

    goto :goto_0
.end method

.method public static removeWrongActionDialog()V
    .locals 1

    .prologue
    .line 249
    sget-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    .line 251
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->mWrongActionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 253
    :cond_0
    return-void
.end method

.method public static showCompleteDialog(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 193
    if-nez p0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 196
    :cond_0
    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 197
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "view_all_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 199
    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v0, p0}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 201
    sget-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-nez v0, :cond_1

    .line 202
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 207
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 185
    const v0, 0x7f0f0001

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 186
    const v0, 0x7f0e00a5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    invoke-static {}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->setAlpha()V

    .line 189
    return-void
.end method

.method public static showToast_createfolder(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 282
    const v1, 0x7f0e00ad

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 283
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 284
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    return-void
.end method

.method public static showWrongActionDialog(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 212
    if-nez p0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, builderstart:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 221
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0e00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e00a4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e00a1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/guide/GuideFragment$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/guide/GuideFragment$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/guide/GuideFragment;->mWrongActionDialog:Landroid/app/AlertDialog;

    .line 245
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 9
    .parameter "newConfig"
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    const-string v6, "Guide fragment"

    const-string v7, "Guide fragment -> onConfigurationChanged"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    if-nez p3, :cond_1

    .line 432
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 309
    :cond_1
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 310
    const-string v6, "GuideFragment"

    const-string v7, "get extras not null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v6, "homescreen:guide_mode"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    .line 312
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 313
    const-string v6, "GuideFragment"

    const-string v7, "guide mode is not ours"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 318
    :cond_2
    :try_start_2
    move-object v0, p2

    check-cast v0, Lcom/android/launcher2/Launcher;

    move-object v2, v0

    .line 319
    .local v2, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    .line 320
    .local v1, homeView:Lcom/android/launcher2/HomeView;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    .line 326
    .local v4, menuView:Lcom/android/launcher2/MenuView;
    if-nez v1, :cond_3

    if-eqz v4, :cond_18

    .line 327
    :cond_3
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "add_widgets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 328
    const-string v6, "GuideFragment"

    const-string v7, " showing help dialog--add widgets"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_4

    .line 330
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 331
    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 333
    :cond_4
    new-instance v6, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 334
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 336
    :cond_5
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "onBackPressed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 337
    const-string v6, "currentGmode"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, oldGmode:Ljava/lang/String;
    sput-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    .line 339
    const-string v6, "navigation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 341
    new-instance v6, Lcom/android/launcher2/guide/NavigationGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/NavigationGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 343
    :cond_6
    const-string v6, "addapps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 344
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 345
    new-instance v6, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 347
    :cond_7
    const-string v6, "add_widgets"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 349
    new-instance v6, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 350
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 352
    :cond_8
    const-string v6, "view_all_apps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 353
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 354
    new-instance v6, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 356
    :cond_9
    const-string v6, "resize_widgets"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 357
    new-instance v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 359
    :cond_a
    const-string v6, "create_folder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 360
    new-instance v6, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 362
    :cond_b
    const-string v6, "move_app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 364
    new-instance v6, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 366
    :cond_c
    const-string v6, "remove_items"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 368
    new-instance v6, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 370
    :cond_d
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_0

    .line 371
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    goto/16 :goto_0

    .line 373
    .end local v5           #oldGmode:Ljava/lang/String;
    :cond_e
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "addapps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 374
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_f

    .line 375
    const-string v6, "GuideFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 377
    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 379
    :cond_f
    new-instance v6, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 380
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 382
    :cond_10
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "view_all_apps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 383
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 384
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_11

    .line 385
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 386
    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 388
    :cond_11
    new-instance v6, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 389
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 391
    :cond_12
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "change_wallpaper"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 392
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    if-eqz v6, :cond_13

    .line 393
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    .line 394
    const/4 v6, 0x0

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 396
    :cond_13
    new-instance v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 397
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 400
    :cond_14
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "resize_widgets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 401
    const/4 v6, 0x1

    sput v6, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 402
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isWidgetToBeAdded:Z

    .line 404
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 405
    .local v3, mHandler:Landroid/os/Handler;
    new-instance v6, Lcom/android/launcher2/guide/GuideFragment$3;

    invoke-direct {v6, p0, p2, p1}, Lcom/android/launcher2/guide/GuideFragment$3;-><init>(Lcom/android/launcher2/guide/GuideFragment;Landroid/app/Activity;Landroid/content/res/Configuration;)V

    const-wide/16 v7, 0x190

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 413
    .end local v3           #mHandler:Landroid/os/Handler;
    :cond_15
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "create_folder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 414
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    .line 415
    new-instance v6, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 416
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 419
    :cond_16
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "remove_items"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 420
    new-instance v6, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 421
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 423
    :cond_17
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "move_app"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 425
    new-instance v6, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-direct {v6, p2}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 426
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 430
    :cond_18
    const-string v6, "GuideFragment"

    const-string v7, "frag=null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
