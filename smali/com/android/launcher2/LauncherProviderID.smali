.class public Lcom/android/launcher2/LauncherProviderID;
.super Landroid/content/ContentProvider;
.source "LauncherProviderID.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.launcher.settings.id"

.field static final CONTENT_APPWIDGET_UNBIND_URI:Landroid/net/Uri; = null

.field static final PARAMETER_INITID:Ljava/lang/String; = "initId"

.field private static final TAG:Ljava/lang/String; = "Launcher.LauncherProviderID"

.field static final WIDGET_CLS_NAME:Ljava/lang/String; = "widgetClsName"

.field static final WIDGET_PKG_NAME:Ljava/lang/String; = "widgetPkgName"


# instance fields
.field private mLauncherProvider:Lcom/android/launcher2/LauncherProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "content://com.sec.android.app.launcher.settings.id/appWidgetUnbind"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherProviderID;->CONTENT_APPWIDGET_UNBIND_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getLauncherProvider()Lcom/android/launcher2/LauncherProvider;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher2/LauncherProviderID;->mLauncherProvider:Lcom/android/launcher2/LauncherProvider;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherProviderID;->mLauncherProvider:Lcom/android/launcher2/LauncherProvider;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProviderID;->mLauncherProvider:Lcom/android/launcher2/LauncherProvider;

    return-object v0
.end method

.method private handleWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 21
    .parameter "db"
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 106
    const-string v18, "itemType"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 107
    .local v12, itemType:I
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v12, v0, :cond_4

    const-string v18, "appWidgetId"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    const-string v18, "appWidgetId"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const-string v18, "widgetPkgName"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 111
    const-string v18, "widgetPkgName"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, pkg:Ljava/lang/String;
    const-string v18, "widgetClsName"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, cls:Ljava/lang/String;
    const-string v18, "widgetPkgName"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 114
    const-string v18, "widgetClsName"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 115
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v13, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v9, cn:Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    .line 118
    .local v7, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v11, 0x0

    .line 119
    .local v11, insert:Z
    invoke-virtual {v7}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v17

    .line 120
    .local v17, wids:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/appwidget/AppWidgetProviderInfo;

    .line 121
    .local v16, w:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 122
    const/4 v11, 0x1

    goto :goto_0

    .line 126
    .end local v16           #w:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    if-eqz v11, :cond_5

    .line 127
    new-instance v5, Landroid/appwidget/AppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x400

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 128
    .local v5, appWidgetHost:Landroid/appwidget/AppWidgetHost;
    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v6

    .line 130
    .local v6, appWidgetId:I
    const-string v18, "appWidgetId"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v18

    const-string v19, "favorites"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    .line 135
    .local v14, rowId:J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-gtz v18, :cond_2

    const/16 v18, 0x0

    .line 147
    .end local v5           #appWidgetHost:Landroid/appwidget/AppWidgetHost;
    .end local v6           #appWidgetId:I
    .end local v7           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v8           #cls:Ljava/lang/String;
    .end local v9           #cn:Landroid/content/ComponentName;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #insert:Z
    .end local v13           #pkg:Ljava/lang/String;
    .end local v14           #rowId:J
    .end local v17           #wids:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :goto_1
    return-object v18

    .line 137
    .restart local v5       #appWidgetHost:Landroid/appwidget/AppWidgetHost;
    .restart local v6       #appWidgetId:I
    .restart local v7       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .restart local v8       #cls:Ljava/lang/String;
    .restart local v9       #cn:Landroid/content/ComponentName;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #insert:Z
    .restart local v13       #pkg:Ljava/lang/String;
    .restart local v14       #rowId:J
    .restart local v17       #wids:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_2
    invoke-virtual {v7, v6, v9}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 138
    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    move-object/from16 v18, p2

    .line 139
    goto :goto_1

    .line 141
    :cond_3
    const-string v18, "Launcher.LauncherProviderID"

    const-string v19, "Problem allocating appWidgetId"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v5           #appWidgetHost:Landroid/appwidget/AppWidgetHost;
    .end local v6           #appWidgetId:I
    .end local v7           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v8           #cls:Ljava/lang/String;
    .end local v9           #cn:Landroid/content/ComponentName;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #insert:Z
    .end local v13           #pkg:Ljava/lang/String;
    .end local v14           #rowId:J
    .end local v17           #wids:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_4
    :goto_2
    const/16 v18, 0x0

    goto :goto_1

    .line 143
    .restart local v7       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .restart local v8       #cls:Ljava/lang/String;
    .restart local v9       #cn:Landroid/content/ComponentName;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #insert:Z
    .restart local v13       #pkg:Ljava/lang/String;
    .restart local v17       #wids:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_5
    const-string v18, "Launcher.LauncherProviderID"

    const-string v19, "No insertion for widget"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private initValues(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 4
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 151
    const-string v1, "initId"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    :cond_0
    const-string v1, "_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 154
    const-string v1, "Launcher.LauncherProviderID"

    const-string v2, "Generating a new ID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v1, "_id"

    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider;->generateNewHomeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    const-string v1, "Launcher.LauncherProviderID"

    const-string v2, "Using old ID on insert"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    .line 166
    .local v1, provider:Lcom/android/launcher2/LauncherProvider;
    sget-object v2, Lcom/android/launcher2/LauncherProviderID;->CONTENT_APPWIDGET_UNBIND_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const-string v2, "Launcher.LauncherProviderID"

    const-string v3, "Unbinding widget"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x400

    invoke-direct {v0, v2, v3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 169
    .local v0, awh:Landroid/appwidget/AppWidgetHost;
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 170
    const/4 v2, 0x1

    .line 172
    .end local v0           #awh:Landroid/appwidget/AppWidgetHost;
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher2/LauncherProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .line 78
    .local v0, provider:Lcom/android/launcher2/LauncherProvider;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/LauncherProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    .line 84
    .local v1, provider:Lcom/android/launcher2/LauncherProvider;
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherProviderID;->initValues(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 86
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/LauncherProviderID;->handleWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 88
    .local v2, wUri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 102
    .end local v2           #wUri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 92
    .restart local v2       #wUri:Landroid/net/Uri;
    :cond_0
    const-string v3, "widgetPkgName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    const-string v3, "widgetPkgName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 96
    :cond_1
    const-string v3, "widgetClsName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    const-string v3, "widgetClsName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 100
    :cond_2
    const-string v3, "Launcher.LauncherProviderID"

    const-string v4, "About to insert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/LauncherProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"
    .parameter "where"
    .parameter "whereArgs"
    .parameter "sortBy"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .local v0, provider:Lcom/android/launcher2/LauncherProvider;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .line 72
    .local v0, provider:Lcom/android/launcher2/LauncherProvider;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher2/LauncherProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
