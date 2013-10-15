.class public Lcom/android/launcher2/InstallWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallWidgetReceiver.java"


# static fields
.field public static final ACTION_INSTALL_WIDGET:Ljava/lang/String; = "com.android.launcher.action.INSTALL_WIDGET"

.field public static final ACTION_SUPPORTS_CLIPDATA_MIMETYPE:Ljava/lang/String; = "com.android.launcher.action.SUPPORTS_CLIPDATA_MIMETYPE"

.field public static final EXTRA_APPWIDGET_COMPONENT:Ljava/lang/String; = "com.android.launcher.extra.widget.COMPONENT"

.field public static final EXTRA_APPWIDGET_CONFIGURATION_DATA:Ljava/lang/String; = "com.android.launcher.extra.widget.CONFIGURATION_DATA"

.field public static final EXTRA_APPWIDGET_CONFIGURATION_DATA_MIME_TYPE:Ljava/lang/String; = "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE"

.field public static final LAUNCHER_ACTION_INSTALL_WIDGET:Ljava/lang/String; = "com.sec.launcher.action.INSTALL_WIDGET"

.field public static final LAUNCHER_EXTRA_APPWIDGET_COMPONENT:Ljava/lang/String; = "com.sec.launcher.intent.extra.COMPONENT"

.field public static final LAUNCHER_EXTRA_APPWIDGET_DUPALLOWED:Ljava/lang/String; = "com.sec.launcher.intent.extra.DUPLICATE"

.field public static final LAUNCHER_EXTRA_APPWIDGET_SIZEX:Ljava/lang/String; = "com.sec.launcher.intent.extra.sizeX"

.field public static final LAUNCHER_EXTRA_APPWIDGET_SIZEY:Ljava/lang/String; = "com.sec.launcher.intent.extra.sizeY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 74
    const-string v0, "ExtraStuff"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 75
    .local v9, pref2:Landroid/content/SharedPreferences;
    const-string v0, "replace"

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "class"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "spanX"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "spanY"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "cellX"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "cellY"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "screen"

    const/4 v1, 0x6

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/InstallWidgetReceiver;->replaceDummyWidget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIII)V

    .line 78
    :cond_0
    return-void
.end method

.method public replaceDummyWidget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 15
    .parameter "context"
    .parameter "pkg"
    .parameter "cls"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "screen"

    .prologue
    .line 83
    new-instance v13, Lcom/android/launcher2/LauncherAppWidgetHost;

    const/16 v2, 0x400

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 85
    .local v13, mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    invoke-virtual {v13}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v11

    .line 87
    .local v11, appWidgetId:I
    new-instance v14, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v14, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v14, provider:Landroid/content/ComponentName;
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v11, v14}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 90
    .local v12, i:Z
    new-instance v3, Lcom/android/launcher2/HomeWidgetItem;

    invoke-direct {v3, v14, v11}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    .line 92
    .local v3, item:Lcom/android/launcher2/HomeWidgetItem;
    move/from16 v0, p8

    iput v0, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 93
    move/from16 v0, p6

    iput v0, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 94
    move/from16 v0, p7

    iput v0, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 95
    move/from16 v0, p4

    iput v0, v3, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 96
    move/from16 v0, p5

    iput v0, v3, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 98
    iget v2, v3, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v7, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v8, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/LauncherApplication;

    .line 105
    .local v10, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher2/LauncherModel;->setRefreshRequired(Z)V

    .line 106
    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    goto :goto_0
.end method
