.class public Lcom/android/launcher2/AvailableAppWidgetListProvider;
.super Ljava/lang/Object;
.source "AvailableAppWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidgetListProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AvailableAppWidgetListProvider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreviewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mPreviewCache:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mPreviewCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getAvailableWidgets()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v8, out:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 61
    .local v10, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 62
    .local v2, easyWidgets:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/Intent;

    const-string v15, "android.appwidget.action.EASY_MODE"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v5, intent:Landroid/content/Intent;
    const/4 v15, 0x0

    invoke-virtual {v10, v5, v15}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 64
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 65
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 66
    .local v4, info:Landroid/content/pm/ResolveInfo;
    new-instance v15, Landroid/content/ComponentName;

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v14

    .line 73
    .local v14, widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v11, 0x0

    .line 77
    .local v11, secretList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x2

    new-array v12, v15, [I

    .line 78
    .local v12, span:[I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/appwidget/AppWidgetProviderInfo;

    .line 81
    .local v13, widget:Landroid/appwidget/AppWidgetProviderInfo;
    iget v15, v13, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_2

    iget-object v15, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {v2, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 83
    :cond_2
    sget-boolean v15, Lcom/android/launcher2/AvailableAppWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v15, :cond_1

    .line 84
    const-string v15, "AvailableAppWidgetListProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "AppWidget ignored: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 88
    :cond_3
    iget v15, v13, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v15, :cond_4

    iget v15, v13, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-gtz v15, :cond_5

    .line 89
    :cond_4
    sget-boolean v15, Lcom/android/launcher2/AvailableAppWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v15, :cond_1

    .line 90
    const-string v15, "AvailableAppWidgetListProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "AppWidget specifies an invalid size: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 95
    :cond_5
    iget-object v15, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, pkgName:Ljava/lang/String;
    if-eqz v11, :cond_6

    invoke-interface {v11, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    :cond_6
    const/4 v6, 0x0

    .line 97
    .local v6, isSecret:Z
    :goto_2
    new-instance v1, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;

    invoke-static {v10, v9}, Lcom/android/launcher2/AvailableWidgetListProvider$Util;->canUninstall(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v13, v15, v6}, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;-><init>(Lcom/android/launcher2/AvailableAppWidgetListProvider;Landroid/appwidget/AppWidgetProviderInfo;ZZ)V

    .line 98
    .local v1, availWidget:Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;
    sget-boolean v15, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v15, :cond_7

    .line 100
    invoke-virtual {v1, v12}, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->getCellSpan([I)V

    .line 101
    const/4 v15, 0x0

    aget v15, v12, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v15, 0x1

    aget v15, v12, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 107
    :cond_7
    iget-object v15, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.sec.android.app.launcher"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 108
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_8
    sget-boolean v15, Lcom/android/launcher2/AvailableAppWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v15, :cond_1

    .line 110
    const-string v15, "AvailableAppWidgetListProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Widget{"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "} "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " added"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 96
    .end local v1           #availWidget:Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;
    .end local v6           #isSecret:Z
    :cond_9
    const/4 v6, 0x1

    goto :goto_2

    .line 113
    .end local v9           #pkgName:Ljava/lang/String;
    .end local v13           #widget:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_a
    return-object v8
.end method
