.class public Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final TAGS_ALLOWED_HOME:I = 0xf

.field private static final TAGS_ALLOWED_HOTSEAT:I = 0x7

.field private static final TAG_ALLOWED_APP:I = 0x1

.field private static final TAG_ALLOWED_FOLDER:I = 0x4

.field private static final TAG_ALLOWED_SHORTCUT:I = 0x2

.field private static final TAG_ALLOWED_WIDGET:I = 0x8

.field private static final TAG_APP:Ljava/lang/String; = "favorite"

.field private static final TAG_APPORDER:Ljava/lang/String; = "appOrder"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_CLOCK:Ljava/lang/String; = "clock"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_HOME:Ljava/lang/String; = "home"

.field private static final TAG_HOTSEAT:Ljava/lang/String; = "hotseat"

.field private static final TAG_SACTIVITYWIDGET:Ljava/lang/String; = "sactivitywidget"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"


# instance fields
.field private frontMenuApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mFavoritesInNormalMode:Z

.field private mFavoritesPath:Ljava/lang/String;

.field private mIsAttReady2GoEnable:Z

.field private mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mOnlyLoadFrontApps:Z

.field mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

.field private mPreSecretPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungActivityWidgetId:I

.field private mSurfaceWidgetId:I

.field mWidgetClsName:Ljava/lang/String;

.field mWidgetPackgName:Ljava/lang/String;

.field mWidgetTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 553
    const-string v2, "launcher.db"

    const/16 v3, 0xc

    invoke-direct {p0, p1, v2, v4, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 540
    iput-boolean v5, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsAttReady2GoEnable:Z

    .line 544
    iput-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

    .line 545
    iput-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetClsName:Ljava/lang/String;

    .line 546
    iput-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetPackgName:Ljava/lang/String;

    .line 547
    iput-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetTitle:Ljava/lang/String;

    .line 550
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPreSecretPackageList:Ljava/util/ArrayList;

    .line 1609
    iput-boolean v5, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    .line 554
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LauncherProvider"

    const-string v3, "DATABASE_VERSION = 12"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 557
    new-instance v2, Landroid/appwidget/AppWidgetHost;

    const/16 v3, 0x400

    invoke-direct {v2, p1, v3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 566
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v2, :cond_1

    .line 567
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getMaxFavoriteID(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 570
    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 571
    iput-boolean v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mFavoritesInNormalMode:Z

    .line 572
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 573
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "favorites_normal"

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 574
    iput-boolean v5, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mFavoritesInNormalMode:Z

    .line 587
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v2, :cond_3

    .line 588
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "appOrder"

    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 591
    :cond_3
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 592
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 593
    .local v1, easyModeSwitch:I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->switchFavoritesIfNecessary(I)Z

    .line 595
    .end local v1           #easyModeSwitch:I
    :cond_4
    return-void

    .line 575
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    const-string v2, "favorites_easy"

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 576
    const-string v2, "favorites_easy"

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 577
    const-string v2, "favorites_easy"

    invoke-direct {p0, v0, v2, v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 506
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mFavoritesInNormalMode:Z

    return v0
.end method

.method private addAppFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 6
    .parameter "db"
    .parameter "values"

    .prologue
    .line 2220
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v0

    .line 2221
    .local v0, id:J
    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2222
    const-string v2, "appOrder"

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3, p2}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 2223
    const-wide/16 v0, -0x1

    .line 2224
    :cond_0
    return-wide v0
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)J
    .locals 13
    .parameter "db"
    .parameter "values"
    .parameter "pkgMgr"
    .parameter "pkgName"
    .parameter "className"

    .prologue
    .line 2127
    const-wide/16 v5, -0x1

    .line 2129
    .local v5, id:J
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 2130
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    .local v2, cn:Landroid/content/ComponentName;
    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2141
    .local v7, info:Landroid/content/pm/ActivityInfo;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v5

    .line 2142
    const-string v9, "_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2143
    const-string v9, "componentName"

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    const-string v9, "title"

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    const-string v9, "appOrder"

    const/4 v10, 0x0

    invoke-static {p0, p1, v9, v10, p2}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    .line 2155
    const-wide/16 v5, -0x1

    .line 2161
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v7           #info:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_1
    return-wide v5

    .line 2136
    .restart local v2       #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v4

    .line 2137
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p4, v9, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2138
    .local v8, packages:[Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v8, v9

    move-object/from16 v0, p5

    invoke-direct {v3, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2139
    .end local v2           #cn:Landroid/content/ComponentName;
    .local v3, cn:Landroid/content/ComponentName;
    const/4 v9, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .restart local v7       #info:Landroid/content/pm/ActivityInfo;
    move-object v2, v3

    .end local v3           #cn:Landroid/content/ComponentName;
    .restart local v2       #cn:Landroid/content/ComponentName;
    goto :goto_0

    .line 2157
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #info:Landroid/content/pm/ActivityInfo;
    .end local v8           #packages:[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 2158
    .restart local v4       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get ActivityInfo for : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2157
    .end local v2           #cn:Landroid/content/ComponentName;
    .restart local v3       #cn:Landroid/content/ComponentName;
    .restart local v8       #packages:[Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3           #cn:Landroid/content/ComponentName;
    .restart local v2       #cn:Landroid/content/ComponentName;
    goto :goto_2
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z
    .locals 9
    .parameter "db"
    .parameter "tableName"
    .parameter "values"
    .parameter "cn"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 2327
    const/4 v0, 0x0

    .line 2328
    .local v0, allocatedAppWidgets:Z
    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 2332
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v4

    .line 2345
    .local v4, genNewFavoritesId:J
    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 2347
    .local v1, appWidgetId:I
    const-string v6, "itemType"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2348
    const-string v6, "spanX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2349
    const-string v6, "spanY"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2350
    const-string v6, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2351
    const-string v6, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2354
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2355
    const-string v6, "pkgName"

    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetPackgName:Ljava/lang/String;

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    const-string v6, "intent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetPackgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetClsName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    const-string v6, "title"

    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetTitle:Ljava/lang/String;

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    :cond_0
    const/4 v6, 0x0

    invoke-static {p0, p1, p2, v6, p3}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2363
    const/4 v0, 0x1

    .line 2365
    const/4 v6, -0x1

    if-le v1, v6, :cond_1

    invoke-virtual {v2, v1, p4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2366
    const-string v6, "LauncherProvider"

    const-string v7, "Problem allocating appWidgetId; bindAppWidgetIdIfAllowed returned false"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2372
    .end local v1           #appWidgetId:I
    .end local v4           #genNewFavoritesId:J
    :cond_1
    :goto_0
    return v0

    .line 2368
    :catch_0
    move-exception v3

    .line 2369
    .local v3, ex:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "LauncherProvider"

    const-string v7, "Problem allocating appWidgetId"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 15
    .parameter "db"
    .parameter "tableName"
    .parameter "values"
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "className"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 2281
    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 2282
    :cond_0
    const/4 v2, 0x0

    .line 2322
    :goto_0
    return v2

    .line 2285
    :cond_1
    const/4 v13, 0x1

    .line 2286
    .local v13, hasPackage:Z
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    .local v6, cn:Landroid/content/ComponentName;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2318
    :cond_2
    :goto_1
    if-eqz v13, :cond_3

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p7

    move/from16 v8, p8

    .line 2319
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v2

    goto :goto_0

    .line 2289
    :catch_0
    move-exception v10

    .line 2290
    .local v10, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2292
    .local v14, packages:[Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    .end local v6           #cn:Landroid/content/ComponentName;
    const/4 v2, 0x0

    aget-object v2, v14, v2

    move-object/from16 v0, p6

    invoke-direct {v6, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    .restart local v6       #cn:Landroid/content/ComponentName;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2295
    :catch_1
    move-exception v11

    .line 2298
    .local v11, e1:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2299
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetPackgName:Ljava/lang/String;

    .line 2300
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetClsName:Ljava/lang/String;

    .line 2301
    const-string p5, "com.sec.android.app.launcher"

    .line 2302
    const-string p6, "com.android.launcher2.WidgetReceiver"

    .line 2303
    new-instance v9, Landroid/content/ComponentName;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2304
    .end local v6           #cn:Landroid/content/ComponentName;
    .local v9, cn:Landroid/content/ComponentName;
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v9

    .end local v9           #cn:Landroid/content/ComponentName;
    .restart local v6       #cn:Landroid/content/ComponentName;
    goto :goto_1

    .line 2311
    :catch_2
    move-exception v12

    .line 2312
    .local v12, e2:Ljava/lang/Exception;
    :goto_2
    const/4 v13, 0x0

    goto :goto_1

    .line 2322
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #e1:Ljava/lang/Exception;
    .end local v12           #e2:Ljava/lang/Exception;
    .end local v14           #packages:[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 2311
    .end local v6           #cn:Landroid/content/ComponentName;
    .restart local v9       #cn:Landroid/content/ComponentName;
    .restart local v10       #e:Ljava/lang/Exception;
    .restart local v11       #e1:Ljava/lang/Exception;
    .restart local v14       #packages:[Ljava/lang/String;
    :catch_3
    move-exception v12

    move-object v6, v9

    .end local v9           #cn:Landroid/content/ComponentName;
    .restart local v6       #cn:Landroid/content/ComponentName;
    goto :goto_2
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "db"
    .parameter "tableName"
    .parameter "values"

    .prologue
    const/4 v5, 0x2

    .line 2273
    new-instance v4, Landroid/content/ComponentName;

    const-string v0, "com.android.alarmclock"

    const-string v1, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, cn:Landroid/content/ComponentName;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    .line 2275
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6
    .parameter "db"
    .parameter "tableName"
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 2228
    const-string v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2229
    const-string v2, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2230
    const-string v2, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2231
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v0

    .line 2232
    .local v0, id:J
    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2233
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2, p3}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 2234
    const-wide/16 v0, -0x1

    .line 2236
    .end local v0           #id:J
    :cond_0
    return-wide v0
.end method

.method private addHomeShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 13
    .parameter "db"
    .parameter "tableName"
    .parameter "values"
    .parameter "pkgMgr"
    .parameter "intent"
    .parameter "pkgName"
    .parameter "className"
    .parameter "title"

    .prologue
    .line 2166
    const-wide/16 v5, -0x1

    .line 2168
    .local v5, id:J
    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    .line 2169
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    .local v2, cn:Landroid/content/ComponentName;
    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2181
    .local v7, info:Landroid/content/pm/ActivityInfo;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v5

    .line 2182
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2183
    const/high16 v9, 0x1020

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2185
    const-string v9, "intent"

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    const-string v9, "title"

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    const-string v9, "itemType"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2188
    const-string v9, "spanX"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2189
    const-string v9, "spanY"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2190
    const-string v9, "_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2191
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-static {p0, p1, p2, v9, v0}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    .line 2192
    const-wide/16 v5, -0x1

    .line 2216
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v7           #info:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_1
    return-wide v5

    .line 2174
    .restart local v2       #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v4

    .line 2175
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p6, v9, v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2177
    .local v8, packages:[Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v8, v9

    move-object/from16 v0, p7

    invoke-direct {v3, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2178
    .end local v2           #cn:Landroid/content/ComponentName;
    .local v3, cn:Landroid/content/ComponentName;
    const/4 v9, 0x0

    :try_start_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .restart local v7       #info:Landroid/content/pm/ActivityInfo;
    move-object v2, v3

    .end local v3           #cn:Landroid/content/ComponentName;
    .restart local v2       #cn:Landroid/content/ComponentName;
    goto/16 :goto_0

    .line 2193
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #info:Landroid/content/pm/ActivityInfo;
    .end local v8           #packages:[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 2194
    .restart local v4       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to add Home app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2199
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v5

    .line 2200
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2201
    const/high16 v9, 0x1020

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2203
    const-string v9, "intent"

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    const-string v9, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, p8

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    const-string v9, "itemType"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2206
    const-string v9, "pkgName"

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    const-string v9, "spanX"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2208
    const-string v9, "spanY"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2209
    const-string v9, "_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2210
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-static {p0, p1, p2, v9, v0}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    .line 2211
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    .line 2193
    .end local v2           #cn:Landroid/content/ComponentName;
    .restart local v3       #cn:Landroid/content/ComponentName;
    .restart local v8       #packages:[Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3           #cn:Landroid/content/ComponentName;
    .restart local v2       #cn:Landroid/content/ComponentName;
    goto/16 :goto_2
.end method

.method private addSamsungActivityWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 7
    .parameter "db"
    .parameter "tableName"
    .parameter "values"
    .parameter "packageManager"
    .parameter "pkgName"
    .parameter "cName"
    .parameter "themeName"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 2464
    const/4 v2, 0x0

    .line 2465
    .local v2, rc:Z
    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    .line 2466
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p5, p6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2467
    .local v0, cn:Landroid/content/ComponentName;
    sget-object v3, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v3, v0, p7}, Lcom/android/launcher2/SamsungWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/launcher2/SamsungWidgetProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2468
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2469
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2470
    if-eqz p7, :cond_0

    .line 2471
    const-string v3, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v1, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2473
    :cond_0
    const-string v3, "intent"

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    const-string v3, "itemType"

    const/16 v4, 0x384

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2475
    const-string v3, "spanX"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2476
    const-string v3, "spanY"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2477
    const-string v3, "appWidgetId"

    iget v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSamsungActivityWidgetId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSamsungActivityWidgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2478
    const-string v3, "_id"

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2479
    const/4 v3, 0x0

    invoke-static {p0, p1, p2, v3, p3}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    const/4 v2, 0x1

    .line 2482
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return v2

    .line 2479
    .restart local v0       #cn:Landroid/content/ComponentName;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;II)Z
    .locals 7
    .parameter "db"
    .parameter "tableName"
    .parameter "values"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 2266
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v4

    .line 2267
    .local v4, cn:Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    .line 2268
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    .line 2269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addSurfaceWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 6
    .parameter "db"
    .parameter "tableName"
    .parameter "values"
    .parameter "packageManager"
    .parameter "pkgName"
    .parameter "cName"
    .parameter "themeName"
    .parameter "instance"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 2500
    const/4 v2, 0x0

    .line 2501
    .local v2, rc:Z
    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    .line 2502
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p5, p6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    .local v0, cn:Landroid/content/ComponentName;
    sget-object v3, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    invoke-virtual {v3, v0, p7}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2504
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2505
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2506
    if-eqz p7, :cond_0

    .line 2507
    const-string v3, "com.samsung.sec.android.SURFACE_WIDGET.themename"

    invoke-virtual {v1, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2509
    :cond_0
    if-eqz p8, :cond_2

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2510
    const-string v3, "instance"

    invoke-static {p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2517
    :goto_0
    const-string v3, "intent"

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    const-string v3, "itemType"

    const/16 v4, 0x385

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2519
    const-string v3, "spanX"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2520
    const-string v3, "spanY"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2521
    const-string v3, "_id"

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2522
    const-string v3, "appWidgetId"

    iget v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSurfaceWidgetId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSurfaceWidgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2523
    const/4 v3, 0x0

    invoke-static {p0, p1, p2, v3, p3}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2524
    const/4 v2, 0x1

    .line 2527
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return v2

    .line 2515
    .restart local v0       #cn:Landroid/content/ComponentName;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    const-string v3, "instance"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private addToSprintFolderTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "db"
    .parameter "pkgName"
    .parameter "className"
    .parameter "isFeatured"

    .prologue
    .line 1567
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1568
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToSprintFolderTable :: pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1571
    .local v1, values:Landroid/content/ContentValues;
    if-eqz p4, :cond_1

    const/4 v0, 0x1

    .line 1572
    .local v0, value:I
    :goto_0
    const-string v2, "packageName"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    const-string v2, "className"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    const-string v2, "isFeatured"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1575
    const-string v2, "sprintFolder"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1577
    return-void

    .line 1571
    .end local v0           #value:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 23
    .parameter "db"
    .parameter "tableName"
    .parameter "values"
    .parameter "a"
    .parameter "uri"
    .parameter "titleId"
    .parameter "imgId"

    .prologue
    .line 2376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 2378
    .local v15, r:Landroid/content/res/Resources;
    const/4 v11, 0x0

    .line 2379
    .local v11, iconResId:I
    const/16 v18, 0x0

    .line 2381
    .local v18, titleResId:I
    if-eqz p4, :cond_0

    .line 2382
    const/16 v19, 0x7

    const/16 v20, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 2383
    const/16 v19, 0x8

    const/16 v20, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 2389
    :cond_0
    if-eqz p4, :cond_1

    .line 2390
    const/16 v19, 0x9

    :try_start_0
    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p5

    .line 2392
    :cond_1
    const/16 v19, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 2398
    .local v14, intent:Landroid/content/Intent;
    if-eqz p4, :cond_5

    if-eqz v11, :cond_2

    if-nez v18, :cond_5

    .line 2399
    :cond_2
    const-string v19, "LauncherProvider"

    const-string v20, "Shortcut is missing title or icon resource ID"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    const-wide/16 v12, -0x1

    .line 2457
    .end local v14           #intent:Landroid/content/Intent;
    :cond_3
    :goto_0
    return-wide v12

    .line 2393
    :catch_0
    move-exception v9

    .line 2394
    .local v9, e:Ljava/net/URISyntaxException;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "LauncherProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Shortcut has malformed uri: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    :cond_4
    const-wide/16 v12, -0x1

    goto :goto_0

    .line 2403
    .end local v9           #e:Ljava/net/URISyntaxException;
    .restart local v14       #intent:Landroid/content/Intent;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v12

    .line 2404
    .local v12, id:J
    const/high16 v19, 0x1000

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2405
    const-string v19, "intent"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    const-string v19, "itemType"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2407
    const-string v19, "spanX"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2408
    const-string v19, "spanY"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2409
    const-string v19, "_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2410
    if-eqz p4, :cond_6

    .line 2411
    const-string v19, "iconType"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2412
    const-string v19, "iconPackage"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    const-string v19, "title"

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    const-string v19, "iconResource"

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    :goto_1
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-gez v19, :cond_3

    .line 2455
    const-wide/16 v12, -0x1

    goto/16 :goto_0

    .line 2418
    :cond_6
    const-string v5, ""

    .line 2419
    .local v5, appTitle:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2421
    .local v7, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5           #appTitle:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 2422
    .restart local v5       #appTitle:Ljava/lang/String;
    const-string v19, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2425
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_7

    if-nez v7, :cond_9

    .line 2426
    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 2427
    if-nez v5, :cond_8

    .line 2428
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetTitle:Ljava/lang/String;

    .line 2429
    const-string v19, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    :cond_8
    if-nez v7, :cond_9

    .line 2433
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    .line 2434
    .local v17, sysRes:Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 2436
    .local v8, dm:Landroid/util/DisplayMetrics;
    iget v10, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2437
    .local v10, iconDpi:I
    const/high16 v19, 0x10d

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2446
    .end local v8           #dm:Landroid/util/DisplayMetrics;
    .end local v10           #iconDpi:I
    .end local v17           #sysRes:Landroid/content/res/Resources;
    :cond_9
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2447
    .local v16, stream:Ljava/io/ByteArrayOutputStream;
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2448
    .local v6, bitmap:Landroid/graphics/Bitmap;
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x64

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2450
    const-string v19, "iconType"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2451
    const-string v19, "icon"

    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 2441
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v16           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #d:Landroid/graphics/drawable/Drawable;
    :cond_a
    const-string v19, "LauncherProvider"

    const-string v20, "Shortcut is missing title or icon resource ID from csc resource"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    const-wide/16 v12, -0x1

    goto/16 :goto_0
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9
    .parameter "db"

    .prologue
    const/4 v8, 0x0

    .line 762
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LauncherProvider"

    const-string v3, "converting database from an older format, but not onUpgrade"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_0
    const/4 v6, 0x0

    .line 765
    .local v6, converted:Z
    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 767
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 768
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 771
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 777
    :goto_0
    if-eqz v7, :cond_2

    .line 779
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 780
    invoke-direct {p0, p1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_5

    const/4 v6, 0x1

    .line 783
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 786
    if-eqz v6, :cond_2

    .line 787
    invoke-virtual {v0, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 791
    :cond_2
    if-eqz v6, :cond_4

    .line 793
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "LauncherProvider"

    const-string v3, "converted and now triggering widget upgrade"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 797
    :cond_4
    return v6

    .line 780
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 783
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 772
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 21
    .parameter "db"

    .prologue
    .line 1351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    .line 1352
    .local v12, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v3, 0x3

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    .line 1358
    .local v13, bindSources:[I
    const-string v3, "itemType"

    invoke-static {v3, v13}, Lcom/android/launcher2/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    .line 1360
    .local v6, selectWhere:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1362
    .local v14, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1365
    :try_start_0
    const-string v4, "favorites"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "itemType"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1368
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found upgrade cursor count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v14, :cond_5

    const-string v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_0
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 1371
    .local v20, values:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1372
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1373
    .local v16, favoriteId:J
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    .line 1377
    .local v18, favoriteType:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v11

    .line 1379
    .local v11, appWidgetId:I
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1380
    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allocated appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for favoriteId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_2
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 1384
    const-string v3, "itemType"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1385
    const-string v3, "appWidgetId"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1388
    const/16 v3, 0x3e9

    move/from16 v0, v18

    if-ne v0, v3, :cond_6

    .line 1389
    const-string v3, "spanX"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1390
    const-string v3, "spanY"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1396
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1397
    .local v19, updateWhere:Ljava/lang/String;
    const-string v3, "favorites"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1399
    const/16 v3, 0x3e8

    move/from16 v0, v18

    if-ne v0, v3, :cond_8

    .line 1400
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.alarmclock"

    const-string v5, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1411
    .end local v11           #appWidgetId:I
    .end local v19           #updateWhere:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 1412
    .local v15, ex:Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "LauncherProvider"

    const-string v4, "Problem allocating appWidgetId"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1417
    .end local v15           #ex:Ljava/lang/RuntimeException;
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v20           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v15

    .line 1418
    .local v15, ex:Landroid/database/SQLException;
    :try_start_3
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "LauncherProvider"

    const-string v4, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1420
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1421
    if-eqz v14, :cond_4

    .line 1422
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1425
    .end local v15           #ex:Landroid/database/SQLException;
    :cond_4
    :goto_3
    return-void

    .line 1368
    :cond_5
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v3

    goto/16 :goto_0

    .line 1392
    .restart local v11       #appWidgetId:I
    .restart local v16       #favoriteId:J
    .restart local v18       #favoriteType:I
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_5
    const-string v3, "spanX"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1393
    const-string v3, "spanY"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1420
    .end local v11           #appWidgetId:I
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v20           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1421
    if-eqz v14, :cond_7

    .line 1422
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    .line 1403
    .restart local v11       #appWidgetId:I
    .restart local v16       #favoriteId:J
    .restart local v18       #favoriteType:I
    .restart local v19       #updateWhere:Ljava/lang/String;
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_8
    const/16 v3, 0x3ea

    move/from16 v0, v18

    if-ne v0, v3, :cond_9

    .line 1404
    :try_start_6
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.camera"

    const-string v5, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    goto/16 :goto_1

    .line 1407
    :cond_9
    const/16 v3, 0x3e9

    move/from16 v0, v18

    if-ne v0, v3, :cond_1

    .line 1408
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v12, v11, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 1416
    .end local v11           #appWidgetId:I
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v19           #updateWhere:Ljava/lang/String;
    :cond_a
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1420
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1421
    if-eqz v14, :cond_4

    .line 1422
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1352
    :array_0
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
        0xe9t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 27
    .parameter "db"
    .parameter "c"

    .prologue
    .line 801
    const-string v23, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 802
    .local v14, idIndex:I
    const-string v23, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 803
    .local v15, intentIndex:I
    const-string v23, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 804
    .local v20, titleIndex:I
    const-string v23, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 805
    .local v13, iconTypeIndex:I
    const-string v23, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 806
    .local v10, iconIndex:I
    const-string v23, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 807
    .local v11, iconPackageIndex:I
    const-string v23, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 808
    .local v12, iconResourceIndex:I
    const-string v23, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 809
    .local v7, containerIndex:I
    const-string v23, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 810
    .local v16, itemTypeIndex:I
    const-string v23, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 811
    .local v19, screenIndex:I
    const-string v23, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 812
    .local v5, cellXIndex:I
    const-string v23, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 814
    .local v6, cellYIndex:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 815
    .local v18, rows:[Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 816
    .local v8, i:I
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 817
    new-instance v22, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v23

    invoke-direct/range {v22 .. v23}, Landroid/content/ContentValues;-><init>(I)V

    .line 818
    .local v22, values:Landroid/content/ContentValues;
    const-string v23, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 819
    const-string v23, "intent"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v23, "title"

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v23, "iconType"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 822
    const-string v23, "icon"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 823
    const-string v23, "iconPackage"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v23, "iconResource"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v23, "container"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    const-string v23, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    const-string v23, "appWidgetId"

    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    const-string v23, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 829
    const-string v23, "cellX"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 830
    const-string v23, "cellY"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    aput-object v22, v18, v8

    move v8, v9

    .line 832
    .end local v9           #i:I
    .restart local v8       #i:I
    goto/16 :goto_0

    .line 834
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 835
    const/16 v21, 0x0

    .line 837
    .local v21, total:I
    :try_start_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v17, v0

    .line 838
    .local v17, numValues:I
    const/4 v8, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 839
    const-string v23, "favorites"

    const/16 v24, 0x0

    aget-object v25, v18, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v23

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-gez v23, :cond_1

    .line 840
    const/16 v21, 0x0

    .line 846
    .end local v21           #total:I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 849
    :goto_2
    return v21

    .line 842
    .restart local v21       #total:I
    :cond_1
    add-int/lit8 v21, v21, 0x1

    .line 838
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 844
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .end local v17           #numValues:I
    :catchall_0
    move-exception v23

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v23
.end method

.method private createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 685
    const-string v0, "CREATE table appOrder (_id integer primary key,folderId integer not null default -1,screen integer not null default -1,cell integer not null default -1,hidden integer not null default 0,title text,componentName text,secret integer not null default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 696
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 697
    return-void
.end method

.method private createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .parameter "db"
    .parameter "tableName"

    .prologue
    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id INTEGER PRIMARY KEY,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "itemType INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "container INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "screen INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellX INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellY INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanX INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanY INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pkgName TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "intent TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appWidgetId INTEGER NOT NULL DEFAULT -1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconType INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconPackage TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconResource TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconMovieUri TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icon BLOB,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "secret INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method private createPublicPreferences(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 709
    const-string v7, "prefs"

    invoke-direct {p0, p1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 710
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    const-string v8, "com.android.launcher2.prefs"

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 711
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    .line 712
    .local v0, csc:Lcom/sec/android/app/CscFeature;
    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 713
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x7f0a0009

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 717
    .local v1, maxCount:I
    const-string v7, "screencount"

    invoke-interface {v2, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 718
    .local v4, screenCount:I
    if-lez v4, :cond_0

    if-le v4, v1, :cond_3

    .line 719
    :cond_0
    const-string v7, "CscFeature_Launcher_TotalPageCount"

    invoke-virtual {v0, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 721
    if-lez v4, :cond_1

    if-le v4, v1, :cond_3

    .line 722
    :cond_1
    const v7, 0x7f0a0007

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 723
    if-lez v4, :cond_2

    if-le v4, v1, :cond_3

    .line 724
    :cond_2
    move v4, v1

    .line 729
    :cond_3
    const-string v7, "homescreenindex"

    const/4 v8, -0x1

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 730
    .local v5, screenIndex:I
    if-ltz v5, :cond_4

    if-lt v5, v4, :cond_7

    .line 731
    :cond_4
    const-string v7, "CscFeature_Launcher_DefaultPageNumber"

    invoke-virtual {v0, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 733
    if-ltz v5, :cond_5

    if-lt v5, v4, :cond_7

    .line 734
    :cond_5
    const v7, 0x7f0a000a

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 735
    if-ltz v5, :cond_6

    if-lt v5, v4, :cond_7

    .line 736
    :cond_6
    const/4 v5, 0x0

    .line 741
    :cond_7
    const-string v7, "CREATE TABLE IF NOT EXISTS prefs(key TEXT PRIMARY KEY,value INTEGER);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 746
    const-string v7, "insert into prefs values(?, ?)"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 749
    .local v6, statement:Landroid/database/sqlite/SQLiteStatement;
    const-string v7, "defaultScreen"

    invoke-virtual {v6, v10, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 750
    int-to-long v7, v5

    invoke-virtual {v6, v11, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 751
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 753
    const-string v7, "numScreens"

    invoke-virtual {v6, v10, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 754
    int-to-long v7, v4

    invoke-virtual {v6, v11, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 755
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 757
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 759
    .end local v0           #csc:Lcom/sec/android/app/CscFeature;
    .end local v1           #maxCount:I
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #screenCount:I
    .end local v5           #screenIndex:I
    .end local v6           #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_8
    return-void
.end method

.method private createSprintFolderTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 700
    const-string v0, "CREATE table sprintFolder (_id integer primary key,packageName text,className text,isFeatured integer not null default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method private doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 8
    .parameter "db"
    .parameter "tableName"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 853
    const/4 v1, 0x0

    .line 854
    .local v1, exists:Z
    const-string v4, "SELECT count(*) from sqlite_master where name=? and type=\'table\'"

    new-array v5, v2, [Ljava/lang/String;

    aput-object p2, v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 856
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 857
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 858
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move v1, v2

    .line 860
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 862
    :cond_1
    return v1

    :cond_2
    move v1, v3

    .line 858
    goto :goto_0
.end method

.method private getMaxFavoriteID(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 4
    .parameter "db"

    .prologue
    .line 1250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "favorites"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1254
    .local v0, favoriteId:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1255
    const-string v2, "favorites_normal"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1256
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "favorites_normal"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1264
    .local v1, otherFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->intValue()I

    move-result v3

    if-le v2, v3, :cond_3

    .end local v0           #favoriteId:Ljava/util/concurrent/atomic/AtomicLong;
    :goto_1
    return-object v0

    .line 1257
    .end local v1           #otherFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v0       #favoriteId:Ljava/util/concurrent/atomic/AtomicLong;
    :cond_0
    const-string v2, "favorites_easy"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1258
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "favorites_easy"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .restart local v1       #otherFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;
    goto :goto_0

    .line 1260
    .end local v1           #otherFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;
    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "favorites"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .restart local v1       #otherFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;
    goto :goto_0

    .line 1262
    .end local v1           #otherFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;
    :cond_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "favorites"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .restart local v1       #otherFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 1264
    goto :goto_1
.end method

.method private getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 2252
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 2253
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 2254
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v4, :cond_1

    move-object v2, v6

    .line 2262
    :cond_0
    :goto_0
    return-object v2

    .line 2255
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 2256
    .local v3, providerCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 2257
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2258
    .local v2, provider:Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2256
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #provider:Landroid/content/ComponentName;
    :cond_3
    move-object v2, v6

    .line 2262
    goto :goto_0
.end method

.method private getSearchWidgetProvider()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 2240
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 2242
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 2243
    .local v0, searchComponent:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 2244
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_0
.end method

.method private getTablesList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 6
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1066
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1067
    .local v2, tablesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1068
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 1069
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1070
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTablesList()::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_1
    const-string v3, "android_metadata"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1075
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1078
    .end local v1           #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1080
    :cond_3
    return-object v2
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6
    .parameter "db"
    .parameter "table"

    .prologue
    .line 1231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select ifnull(max(_id),0) from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1234
    .local v0, c:Landroid/database/Cursor;
    const-wide/16 v1, -0x1

    .line 1235
    .local v1, id:J
    if-eqz v0, :cond_1

    .line 1236
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1237
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1239
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1242
    :cond_1
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 1243
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: could not query max id from table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1246
    :cond_2
    return-wide v1
.end method

.method private loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I
    .locals 26
    .parameter "db"
    .parameter "parser"
    .parameter "folderId"
    .parameter "isCSC"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1442
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAppOrderContainer. folderId: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1444
    .local v4, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1446
    .local v5, pkgMgr:Landroid/content/pm/PackageManager;
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v15

    .line 1447
    .local v15, attrs:Landroid/util/AttributeSet;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    .line 1448
    .local v22, startDepth:I
    const/16 v16, 0x0

    .line 1449
    .local v16, cell:I
    const/16 v19, 0x0

    .line 1452
    .local v19, items:I
    const/4 v6, 0x0

    .line 1453
    .local v6, pkgName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1454
    .local v7, className:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1455
    .local v18, isFrontPosition:Z
    const/16 v17, 0x0

    .line 1457
    .local v17, hidden:Z
    :cond_1
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v25

    .local v25, type:I
    const/4 v2, 0x3

    move/from16 v0, v25

    if-ne v0, v2, :cond_2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v22

    if-le v2, v0, :cond_3

    .line 1459
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_4

    .line 1563
    :cond_3
    return v19

    .line 1462
    :cond_4
    const/4 v2, 0x2

    move/from16 v0, v25

    if-ne v0, v2, :cond_1

    .line 1465
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 1466
    .local v20, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadApplicationsContainer. Process tag: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_5
    const/4 v14, 0x0

    .line 1469
    .local v14, a:Landroid/content/res/TypedArray;
    const-string v21, ""

    .line 1471
    .local v21, screen:Ljava/lang/String;
    if-eqz p5, :cond_7

    .line 1472
    const-string v6, ""

    .line 1473
    const-string v7, ""

    .line 1474
    const/4 v2, 0x0

    const-string v3, "screen"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1475
    const/16 v18, 0x0

    .line 1483
    :goto_1
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1485
    const-string v2, "favorite"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1489
    if-eqz p5, :cond_8

    .line 1490
    const/4 v2, 0x0

    const-string v3, "packageName"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1491
    const/4 v2, 0x0

    const-string v3, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1492
    const/4 v2, 0x0

    const-string v3, "AppOrder_isFrontPosition"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 1493
    const/4 v2, 0x0

    const-string v3, "hidden"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 1499
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    if-eqz v2, :cond_9

    .line 1500
    if-nez v17, :cond_6

    if-eqz v18, :cond_6

    if-eqz v7, :cond_6

    .line 1501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->frontMenuApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1558
    :cond_6
    :goto_3
    if-eqz v14, :cond_1

    .line 1559
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 1477
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/launcher/R$styleable;->AppOrder:[I

    invoke-virtual {v2, v15, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1478
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1479
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1480
    const/4 v2, 0x2

    invoke-virtual {v14, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1481
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    goto :goto_1

    .line 1495
    :cond_8
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    .line 1496
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    goto :goto_2

    .line 1504
    :cond_9
    if-eqz v17, :cond_a

    .line 1505
    const-string v2, "hidden"

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1507
    :cond_a
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_b

    .line 1508
    const-string v2, "screen"

    move-object/from16 v0, v21

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    const-string v2, "cell"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 1516
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-ltz v2, :cond_6

    .line 1517
    add-int/lit8 v19, v19, 0x1

    .line 1518
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1512
    :cond_b
    const-string v2, "folderId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1513
    const-string v2, "screen"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1528
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    if-nez v2, :cond_11

    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_11

    const-string v2, "folder"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1529
    const/16 v23, 0x0

    .line 1530
    .local v23, title:Ljava/lang/String;
    const/16 v24, -0x1

    .line 1531
    .local v24, titleResId:I
    if-eqz p5, :cond_f

    .line 1532
    const/4 v2, 0x0

    const-string v3, "title"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1540
    :cond_d
    :goto_5
    const-string v2, "title"

    move-object/from16 v0, v23

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    const-string v2, "screen"

    move-object/from16 v0, v21

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    const-string v2, "cell"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 1544
    .local v11, newFolderId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v11, v2

    if-eqz v2, :cond_6

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1546
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->setSprintFolderId(JZ)V

    .line 1550
    :cond_e
    :goto_6
    add-int/lit8 v19, v19, 0x1

    .line 1551
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v13, p5

    .line 1552
    invoke-direct/range {v8 .. v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I

    move-result v2

    add-int v19, v19, v2

    goto/16 :goto_3

    .line 1534
    .end local v11           #newFolderId:J
    :cond_f
    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    .line 1536
    const/4 v2, -0x1

    move/from16 v0, v24

    if-eq v0, v2, :cond_d

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_5

    .line 1547
    .restart local v11       #newFolderId:J
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1548
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->setSprintFolderId(JZ)V

    goto :goto_6

    .line 1556
    .end local v11           #newFolderId:J
    .end local v23           #title:Ljava/lang/String;
    .end local v24           #titleResId:I
    :cond_11
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid tag <"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "> detected while parsing favorites at line "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 13
    .parameter "db"

    .prologue
    .line 1630
    const/4 v11, 0x0

    .line 1631
    .local v11, items:I
    const-string v0, "LauncherProvider"

    const-string v1, "loadAppOrderDefaults."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const/4 v6, 0x0

    .line 1635
    .local v6, cscFile:Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 1636
    .local v5, isCSC:Z
    const/4 v2, 0x0

    .line 1637
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    .line 1639
    .local v12, resParser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string v0, "/system/csc/default_application_order.xml"

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1641
    .local v8, cscFileChk:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 1642
    new-instance v7, Ljava/io/FileReader;

    const-string v0, "/system/csc/default_application_order.xml"

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1644
    .end local v6           #cscFile:Ljava/io/FileReader;
    .local v7, cscFile:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    .line 1645
    .local v10, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 1646
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1648
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1649
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    .line 1651
    const/4 v5, 0x1

    move-object v6, v7

    .line 1659
    .end local v7           #cscFile:Ljava/io/FileReader;
    .end local v10           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #cscFile:Ljava/io/FileReader;
    :goto_0
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    :try_start_2
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v11

    .line 1670
    if-eqz v6, :cond_0

    .line 1672
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 1677
    .end local v8           #cscFileChk:Ljava/io/File;
    :cond_0
    :goto_1
    return v11

    .line 1653
    .restart local v8       #cscFileChk:Ljava/io/File;
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 1654
    const-string v0, "appOrder"

    invoke-static {v12, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1655
    move-object v2, v12

    goto :goto_0

    .line 1661
    .end local v8           #cscFileChk:Ljava/io/File;
    :catch_0
    move-exception v9

    .line 1662
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "LauncherProvider"

    const-string v1, "Got exception parsing applications."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1670
    :cond_2
    if-eqz v6, :cond_0

    .line 1672
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 1673
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1664
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v9

    .line 1665
    .local v9, e:Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "LauncherProvider"

    const-string v1, "Got exception parsing applications."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1670
    :cond_3
    if-eqz v6, :cond_0

    .line 1672
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 1673
    :catch_3
    move-exception v0

    goto :goto_1

    .line 1667
    .end local v9           #e:Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 1668
    .local v9, e:Landroid/content/res/Resources$NotFoundException;
    :goto_4
    :try_start_9
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "LauncherProvider"

    const-string v1, "Got exception parsing applications."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1670
    :cond_4
    if-eqz v6, :cond_0

    .line 1672
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_1

    .line 1673
    :catch_5
    move-exception v0

    goto :goto_1

    .line 1670
    .end local v9           #e:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v6, :cond_5

    .line 1672
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 1673
    :cond_5
    :goto_6
    throw v0

    .restart local v8       #cscFileChk:Ljava/io/File;
    :catch_6
    move-exception v0

    goto :goto_1

    .end local v8           #cscFileChk:Ljava/io/File;
    :catch_7
    move-exception v1

    goto :goto_6

    .line 1670
    .end local v6           #cscFile:Ljava/io/FileReader;
    .restart local v7       #cscFile:Ljava/io/FileReader;
    .restart local v8       #cscFileChk:Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7           #cscFile:Ljava/io/FileReader;
    .restart local v6       #cscFile:Ljava/io/FileReader;
    goto :goto_5

    .line 1667
    .end local v6           #cscFile:Ljava/io/FileReader;
    .restart local v7       #cscFile:Ljava/io/FileReader;
    :catch_8
    move-exception v9

    move-object v6, v7

    .end local v7           #cscFile:Ljava/io/FileReader;
    .restart local v6       #cscFile:Ljava/io/FileReader;
    goto :goto_4

    .line 1664
    .end local v6           #cscFile:Ljava/io/FileReader;
    .restart local v7       #cscFile:Ljava/io/FileReader;
    :catch_9
    move-exception v9

    move-object v6, v7

    .end local v7           #cscFile:Ljava/io/FileReader;
    .restart local v6       #cscFile:Ljava/io/FileReader;
    goto :goto_3

    .line 1661
    .end local v6           #cscFile:Ljava/io/FileReader;
    .restart local v7       #cscFile:Ljava/io/FileReader;
    :catch_a
    move-exception v9

    move-object v6, v7

    .end local v7           #cscFile:Ljava/io/FileReader;
    .restart local v6       #cscFile:Ljava/io/FileReader;
    goto :goto_2
.end method

.method private loadDynamicCscFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 21
    .parameter "db"
    .parameter "tableName"
    .parameter "hotseatOnly"

    .prologue
    .line 1886
    const/4 v15, 0x0

    .line 1887
    .local v15, items:I
    const/4 v13, 0x0

    .line 1891
    .local v13, fileReader:Ljava/io/FileReader;
    const/4 v8, 0x0

    .line 1892
    .local v8, isCSC:Z
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v12

    .line 1894
    .local v12, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 1895
    const/4 v4, 0x0

    .line 1896
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v19, 0x0

    .line 1899
    .local v19, resParser:Landroid/content/res/XmlResourceParser;
    new-instance v9, Ljava/io/File;

    const-string v1, "/data/data/com.samsung.snmc.dynamiccsc/files/default_workspace_dynamic_csc.xml"

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1901
    .local v9, cscFileChk:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_4

    .line 1902
    new-instance v14, Ljava/io/FileReader;

    invoke-direct {v14, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1903
    .end local v13           #fileReader:Ljava/io/FileReader;
    .local v14, fileReader:Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1904
    invoke-interface {v4, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1905
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    .line 1906
    const/4 v8, 0x1

    move-object v13, v14

    .line 1916
    .end local v14           #fileReader:Ljava/io/FileReader;
    .restart local v13       #fileReader:Ljava/io/FileReader;
    :goto_0
    :try_start_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 1920
    .local v10, depth:I
    :cond_0
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, type:I
    const/4 v1, 0x3

    move/from16 v0, v20

    if-ne v0, v1, :cond_1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v1

    if-le v1, v10, :cond_2

    :cond_1
    const/4 v1, 0x1

    move/from16 v0, v20

    if-eq v0, v1, :cond_2

    .line 1922
    const/4 v1, 0x1

    move/from16 v0, v20

    if-ne v0, v1, :cond_5

    .line 1955
    :cond_2
    if-eqz v13, :cond_3

    .line 1957
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 1962
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v9           #cscFileChk:Ljava/io/File;
    .end local v10           #depth:I
    .end local v12           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v19           #resParser:Landroid/content/res/XmlResourceParser;
    .end local v20           #type:I
    :cond_3
    :goto_2
    return v15

    .line 1908
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #cscFileChk:Ljava/io/File;
    .restart local v12       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v19       #resParser:Landroid/content/res/XmlResourceParser;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1909
    .local v17, res:Landroid/content/res/Resources;
    const/16 v18, 0x0

    .line 1910
    .local v18, resId:I
    const v18, 0x7f060006

    .line 1911
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 1912
    const-string v1, "favorites"

    move-object/from16 v0, v19

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1913
    move-object/from16 v4, v19

    goto :goto_0

    .line 1925
    .end local v17           #res:Landroid/content/res/Resources;
    .end local v18           #resId:I
    .restart local v10       #depth:I
    .restart local v20       #type:I
    :cond_5
    const/4 v1, 0x2

    move/from16 v0, v20

    if-ne v0, v1, :cond_0

    .line 1929
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1930
    .local v16, name:Ljava/lang/String;
    const-string v1, "home"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1931
    if-nez p3, :cond_0

    .line 1932
    const-wide/16 v5, -0x64

    const/16 v7, 0xf

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I

    move-result v1

    add-int/2addr v15, v1

    goto :goto_1

    .line 1938
    :cond_6
    const-string v1, "hotseat"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1939
    const-wide/16 v5, -0x65

    const/4 v7, 0x7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I

    move-result v1

    add-int/2addr v15, v1

    goto :goto_1

    .line 1943
    :cond_7
    const-string v1, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tag <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> detected while parsing favorites at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 1948
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v9           #cscFileChk:Ljava/io/File;
    .end local v10           #depth:I
    .end local v12           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v16           #name:Ljava/lang/String;
    .end local v19           #resParser:Landroid/content/res/XmlResourceParser;
    .end local v20           #type:I
    :catch_0
    move-exception v11

    .line 1949
    .local v11, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_5
    const-string v1, "LauncherProvider"

    const-string v2, "Got exception parsing favorites."

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1955
    if-eqz v13, :cond_3

    .line 1957
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 1958
    :catch_1
    move-exception v1

    goto/16 :goto_2

    .line 1950
    .end local v11           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v11

    .line 1951
    .local v11, e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v1, "LauncherProvider"

    const-string v2, "Got exception parsing favorites."

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1955
    if-eqz v13, :cond_3

    .line 1957
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    .line 1958
    :catch_3
    move-exception v1

    goto/16 :goto_2

    .line 1952
    .end local v11           #e:Ljava/io/IOException;
    :catch_4
    move-exception v11

    .line 1953
    .local v11, e:Landroid/content/res/Resources$NotFoundException;
    :goto_5
    :try_start_9
    const-string v1, "LauncherProvider"

    const-string v2, "Got exception parsing favorites."

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1955
    if-eqz v13, :cond_3

    .line 1957
    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_2

    .line 1958
    :catch_5
    move-exception v1

    goto/16 :goto_2

    .line 1955
    .end local v11           #e:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v1

    :goto_6
    if-eqz v13, :cond_8

    .line 1957
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 1958
    :cond_8
    :goto_7
    throw v1

    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #cscFileChk:Ljava/io/File;
    .restart local v10       #depth:I
    .restart local v12       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v19       #resParser:Landroid/content/res/XmlResourceParser;
    .restart local v20       #type:I
    :catch_6
    move-exception v1

    goto/16 :goto_2

    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v9           #cscFileChk:Ljava/io/File;
    .end local v10           #depth:I
    .end local v12           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v19           #resParser:Landroid/content/res/XmlResourceParser;
    .end local v20           #type:I
    :catch_7
    move-exception v2

    goto :goto_7

    .line 1955
    .end local v13           #fileReader:Ljava/io/FileReader;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #cscFileChk:Ljava/io/File;
    .restart local v12       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v14       #fileReader:Ljava/io/FileReader;
    .restart local v19       #resParser:Landroid/content/res/XmlResourceParser;
    :catchall_1
    move-exception v1

    move-object v13, v14

    .end local v14           #fileReader:Ljava/io/FileReader;
    .restart local v13       #fileReader:Ljava/io/FileReader;
    goto :goto_6

    .line 1952
    .end local v13           #fileReader:Ljava/io/FileReader;
    .restart local v14       #fileReader:Ljava/io/FileReader;
    :catch_8
    move-exception v11

    move-object v13, v14

    .end local v14           #fileReader:Ljava/io/FileReader;
    .restart local v13       #fileReader:Ljava/io/FileReader;
    goto :goto_5

    .line 1950
    .end local v13           #fileReader:Ljava/io/FileReader;
    .restart local v14       #fileReader:Ljava/io/FileReader;
    :catch_9
    move-exception v11

    move-object v13, v14

    .end local v14           #fileReader:Ljava/io/FileReader;
    .restart local v13       #fileReader:Ljava/io/FileReader;
    goto :goto_4

    .line 1948
    .end local v13           #fileReader:Ljava/io/FileReader;
    .restart local v14       #fileReader:Ljava/io/FileReader;
    :catch_a
    move-exception v11

    move-object v13, v14

    .end local v14           #fileReader:Ljava/io/FileReader;
    .restart local v13       #fileReader:Ljava/io/FileReader;
    goto :goto_3
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 25
    .parameter "db"
    .parameter "tableName"
    .parameter "hotseatOnly"

    .prologue
    .line 1977
    const/16 v17, 0x0

    .line 1978
    .local v17, items:I
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFavorites table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hotseatOnly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_0
    const/16 v16, 0x0

    .line 1982
    .local v16, isEasyMode:Z
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1983
    const-string v1, "favorites_easy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 1985
    :cond_1
    const/4 v13, 0x0

    .line 1987
    .local v13, fileReader:Ljava/io/FileReader;
    const/4 v8, 0x0

    .line 1988
    .local v8, isCSC:Z
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v12

    .line 1989
    .local v12, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 1990
    const/4 v4, 0x0

    .line 1991
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v22, 0x0

    .line 2010
    .local v22, resParser:Landroid/content/res/XmlResourceParser;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

    .line 2012
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2013
    const/4 v8, 0x1

    .line 2045
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 2048
    .local v10, depth:I
    const/4 v15, 0x0

    .line 2049
    .local v15, getName:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v24

    .local v24, type:I
    const/4 v1, 0x3

    move/from16 v0, v24

    if-ne v0, v1, :cond_3

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v1

    if-le v1, v10, :cond_4

    :cond_3
    const/4 v1, 0x1

    move/from16 v0, v24

    if-eq v0, v1, :cond_4

    .line 2051
    const/4 v1, 0x1

    move/from16 v0, v24

    if-ne v0, v1, :cond_d

    .line 2102
    :cond_4
    if-eqz v13, :cond_5

    .line 2104
    :try_start_1
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 2110
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #depth:I
    .end local v12           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v15           #getName:Ljava/lang/String;
    .end local v22           #resParser:Landroid/content/res/XmlResourceParser;
    .end local v24           #type:I
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2111
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/launcher2/LauncherProvider;->access$302(Z)Z

    .line 2114
    :cond_6
    return v17

    .line 2017
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v22       #resParser:Landroid/content/res/XmlResourceParser;
    :cond_7
    :try_start_2
    new-instance v9, Ljava/io/File;

    const-string v1, "/system/csc/default_workspace.xml"

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2019
    .local v9, cscFileChk:Ljava/io/File;
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2020
    new-instance v9, Ljava/io/File;

    .end local v9           #cscFileChk:Ljava/io/File;
    if-eqz v16, :cond_9

    const-string v1, "/system/csc/default_workspace_simple.xml"

    :goto_3
    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2022
    .restart local v9       #cscFileChk:Ljava/io/File;
    :cond_8
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_a

    .line 2023
    new-instance v14, Ljava/io/FileReader;

    invoke-direct {v14, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 2024
    .end local v13           #fileReader:Ljava/io/FileReader;
    .local v14, fileReader:Ljava/io/FileReader;
    :try_start_3
    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2025
    invoke-interface {v4, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2026
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_8

    .line 2027
    const/4 v8, 0x1

    move-object v13, v14

    .end local v14           #fileReader:Ljava/io/FileReader;
    .restart local v13       #fileReader:Ljava/io/FileReader;
    goto :goto_0

    .line 2020
    .end local v9           #cscFileChk:Ljava/io/File;
    :cond_9
    :try_start_4
    const-string v1, "/system/csc/default_workspace.xml"

    goto :goto_3

    .line 2030
    .restart local v9       #cscFileChk:Ljava/io/File;
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 2031
    .local v20, res:Landroid/content/res/Resources;
    const/16 v21, 0x0

    .line 2033
    .local v21, resId:I
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v16, :cond_b

    .line 2034
    const v21, 0x7f060004

    .line 2040
    :goto_4
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v22

    .line 2041
    const-string v1, "favorites"

    move-object/from16 v0, v22

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2042
    move-object/from16 v4, v22

    goto/16 :goto_0

    .line 2035
    :cond_b
    const v1, 0x1110037

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2036
    const v21, 0x7f060005

    goto :goto_4

    .line 2038
    :cond_c
    const v21, 0x7f060003

    goto :goto_4

    .line 2055
    .end local v9           #cscFileChk:Ljava/io/File;
    .end local v20           #res:Landroid/content/res/Resources;
    .end local v21           #resId:I
    .restart local v10       #depth:I
    .restart local v15       #getName:Ljava/lang/String;
    .restart local v24       #type:I
    :cond_d
    const/4 v1, 0x4

    move/from16 v0, v24

    if-ne v0, v1, :cond_e

    .line 2056
    const/16 v19, -0x1

    .line 2057
    .local v19, pageCount:I
    const/16 v23, -0x1

    .line 2058
    .local v23, screenIndex:I
    if-eqz v15, :cond_f

    const-string v1, "PageCount"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2059
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 2060
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->setRestorePageCount(I)V

    .line 2069
    .end local v19           #pageCount:I
    .end local v23           #screenIndex:I
    :cond_e
    :goto_5
    const/4 v1, 0x2

    move/from16 v0, v24

    if-ne v0, v1, :cond_2

    .line 2073
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 2074
    .local v18, name:Ljava/lang/String;
    const-string v1, "home"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2075
    if-nez p3, :cond_2

    .line 2076
    const-wide/16 v5, -0x64

    const/16 v7, 0xf

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I

    move-result v1

    add-int v17, v17, v1

    goto/16 :goto_1

    .line 2062
    .end local v18           #name:Ljava/lang/String;
    .restart local v19       #pageCount:I
    .restart local v23       #screenIndex:I
    :cond_f
    if-eqz v15, :cond_e

    const-string v1, "ScreenIndex"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2063
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 2064
    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/Launcher;->setRestoreScreenIndex(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    .line 2093
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #depth:I
    .end local v12           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v15           #getName:Ljava/lang/String;
    .end local v19           #pageCount:I
    .end local v22           #resParser:Landroid/content/res/XmlResourceParser;
    .end local v23           #screenIndex:I
    .end local v24           #type:I
    :catch_0
    move-exception v11

    .line 2094
    .local v11, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    :try_start_5
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "LauncherProvider"

    const-string v2, "Got exception parsing favorites."

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2102
    :cond_10
    if-eqz v13, :cond_5

    .line 2104
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 2105
    :catch_1
    move-exception v1

    goto/16 :goto_2

    .line 2078
    .end local v11           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #depth:I
    .restart local v12       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v15       #getName:Ljava/lang/String;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v22       #resParser:Landroid/content/res/XmlResourceParser;
    .restart local v24       #type:I
    :cond_11
    :try_start_7
    const-string v1, "hotseat"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2079
    const-wide/16 v5, -0x65

    const/4 v7, 0x7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I

    move-result v1

    add-int v17, v17, v1

    goto/16 :goto_1

    .line 2082
    :cond_12
    const-string v1, "PageCount"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2083
    move-object/from16 v15, v18

    goto/16 :goto_1

    .line 2085
    :cond_13
    const-string v1, "ScreenIndex"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2086
    move-object/from16 v15, v18

    goto/16 :goto_1

    .line 2089
    :cond_14
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tag <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> detected while parsing favorites at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 2096
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #depth:I
    .end local v12           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v15           #getName:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v22           #resParser:Landroid/content/res/XmlResourceParser;
    .end local v24           #type:I
    :catch_2
    move-exception v11

    .line 2097
    .local v11, e:Ljava/io/IOException;
    :goto_7
    :try_start_8
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "LauncherProvider"

    const-string v2, "Got exception parsing favorites."

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2102
    :cond_15
    if-eqz v13, :cond_5

    .line 2104
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    .line 2105
    :catch_3
    move-exception v1

    goto/16 :goto_2

    .line 2099
    .end local v11           #e:Ljava/io/IOException;
    :catch_4
    move-exception v11

    .line 2100
    .local v11, e:Landroid/content/res/Resources$NotFoundException;
    :goto_8
    :try_start_a
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "LauncherProvider"

    const-string v2, "Got exception parsing favorites."

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2102
    :cond_16
    if-eqz v13, :cond_5

    .line 2104
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_2

    .line 2105
    :catch_5
    move-exception v1

    goto/16 :goto_2

    .line 2102
    .end local v11           #e:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v1

    :goto_9
    if-eqz v13, :cond_17

    .line 2104
    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 2105
    :cond_17
    :goto_a
    throw v1

    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #depth:I
    .restart local v12       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v15       #getName:Ljava/lang/String;
    .restart local v22       #resParser:Landroid/content/res/XmlResourceParser;
    .restart local v24       #type:I
    :catch_6
    move-exception v1

    goto/16 :goto_2

    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #depth:I
    .end local v12           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v15           #getName:Ljava/lang/String;
    .end local v22           #resParser:Landroid/content/res/XmlResourceParser;
    .end local v24           #type:I
    :catch_7
    move-exception v2

    goto :goto_a

    .line 2102
    .end local v13           #fileReader:Ljava/io/FileReader;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #cscFileChk:Ljava/io/File;
    .restart local v12       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v14       #fileReader:Ljava/io/FileReader;
    .restart local v22       #resParser:Landroid/content/res/XmlResourceParser;
    :catchall_1
    move-exception v1

    move-object v13, v14

    .end local v14           #fileReader:Ljava/io/FileReader;
    .restart local v13       #fileReader:Ljava/io/FileReader;
    goto :goto_9

    .line 2099
    .end local v13           #fileReader:Ljava/io/FileReader;
    .restart local v14       #fileReader:Ljava/io/FileReader;
    :catch_8
    move-exception v11

    move-object v13, v14

    .end local v14           #fileReader:Ljava/io/FileReader;
    .restart local v13       #fileReader:Ljava/io/FileReader;
    goto :goto_8

    .line 2096
    .end local v13           #fileReader:Ljava/io/FileReader;
    .restart local v14       #fileReader:Ljava/io/FileReader;
    :catch_9
    move-exception v11

    move-object v13, v14

    .end local v14           #fileReader:Ljava/io/FileReader;
    .restart local v13       #fileReader:Ljava/io/FileReader;
    goto :goto_7

    .line 2093
    .end local v13           #fileReader:Ljava/io/FileReader;
    .restart local v14       #fileReader:Ljava/io/FileReader;
    :catch_a
    move-exception v11

    move-object v13, v14

    .end local v14           #fileReader:Ljava/io/FileReader;
    .restart local v13       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_6
.end method

.method private loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I
    .locals 52
    .parameter "db"
    .parameter "tableName"
    .parameter "parser"
    .parameter "containerType"
    .parameter "allowedTags"
    .parameter "isCSC"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1694
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFavoritesContainer. containerType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", allowedTags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v8, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1696
    .local v8, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1697
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1698
    .local v6, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1700
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v37

    .line 1701
    .local v37, attrs:Landroid/util/AttributeSet;
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v46

    .line 1702
    .local v46, startDepth:I
    const/16 v40, 0x0

    .line 1705
    .local v40, items:I
    const/4 v9, 0x0

    .line 1706
    .local v9, pkgName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1707
    .local v10, className:Ljava/lang/String;
    const/16 v50, 0x0

    .line 1708
    .local v50, x:Ljava/lang/String;
    const/16 v51, 0x0

    .line 1709
    .local v51, y:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1710
    .local v17, uri:Ljava/lang/String;
    const/16 v44, 0x0

    .line 1711
    .local v44, spanX:Ljava/lang/String;
    const/16 v45, 0x0

    .line 1712
    .local v45, spanY:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1713
    .local v11, titleId:Ljava/lang/String;
    const/16 v19, 0x0

    .line 1714
    .local v19, imgId:Ljava/lang/String;
    const/16 v43, 0x0

    .line 1716
    .local v43, secret:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v49

    .local v49, type:I
    const/4 v3, 0x3

    move/from16 v0, v49

    if-ne v0, v3, :cond_2

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v46

    if-le v3, v0, :cond_3

    .line 1717
    :cond_2
    const/4 v3, 0x1

    move/from16 v0, v49

    if-ne v0, v3, :cond_4

    .line 1877
    :cond_3
    return v40

    .line 1720
    :cond_4
    const/4 v3, 0x2

    move/from16 v0, v49

    if-ne v0, v3, :cond_1

    .line 1723
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v41

    .line 1724
    .local v41, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFavoritesContainer. Process tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_5
    const-string v42, ""

    .line 1729
    .local v42, screen:Ljava/lang/String;
    if-eqz p7, :cond_7

    .line 1730
    const/16 v16, 0x0

    .line 1731
    .local v16, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const-string v4, "packageName"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1732
    const/4 v3, 0x0

    const-string v4, "className"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1733
    const/4 v3, 0x0

    const-string v4, "screen"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1734
    const/4 v3, 0x0

    const-string v4, "x"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1735
    const/4 v3, 0x0

    const-string v4, "y"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1736
    const/4 v3, 0x0

    const-string v4, "secret"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1737
    const/4 v3, 0x0

    const-string v4, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetTitle:Ljava/lang/String;

    .line 1752
    :goto_1
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 1753
    const-string v3, "container"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1754
    const-string v3, "screen"

    move-object/from16 v0, v42

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const-string v3, "cellX"

    move-object/from16 v0, v50

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const-string v3, "cellY"

    move-object/from16 v0, v51

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_8

    const-string v3, "favorite"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1761
    const/4 v3, 0x0

    const-string v4, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 1762
    invoke-direct/range {v3 .. v11}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addHomeShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v12, 0x0

    cmp-long v3, v3, v12

    if-ltz v3, :cond_6

    .line 1763
    add-int/lit8 v40, v40, 0x1

    .line 1873
    :cond_6
    :goto_2
    const/4 v3, 0x1

    move/from16 v0, p7

    if-eq v0, v3, :cond_1

    .line 1874
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 1740
    .end local v16           #a:Landroid/content/res/TypedArray;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/android/app/launcher/R$styleable;->Favorite:[I

    move-object/from16 v0, v37

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 1741
    .restart local v16       #a:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1742
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1743
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 1744
    const/4 v3, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 1745
    const/4 v3, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 1746
    const/16 v3, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_1

    .line 1765
    :cond_8
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_a

    const-string v3, "shortcut"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1766
    if-eqz p7, :cond_9

    .line 1767
    const/4 v3, 0x0

    const-string v4, "uri"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1768
    const/4 v3, 0x0

    const-string v4, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1769
    const/4 v3, 0x0

    const-string v4, "icon"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :cond_9
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v15, v6

    move-object/from16 v18, v11

    .line 1773
    invoke-direct/range {v12 .. v19}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v12, 0x0

    cmp-long v3, v3, v12

    if-ltz v3, :cond_6

    .line 1774
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_2

    .line 1776
    :cond_a
    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_12

    const-string v3, "search"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1777
    const-string v44, "4"

    .line 1778
    const-string v45, "1"

    .line 1780
    if-eqz p7, :cond_10

    .line 1781
    const/4 v3, 0x0

    const-string v4, "spanX"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1782
    const/4 v3, 0x0

    const-string v4, "spanY"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1789
    :cond_b
    :goto_3
    if-eqz v44, :cond_c

    const-string v3, "null"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1790
    :cond_c
    const-string v44, "4"

    .line 1791
    :cond_d
    if-eqz v45, :cond_e

    const-string v3, "null"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1792
    :cond_e
    const-string v45, "1"

    .line 1794
    :cond_f
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, v6

    invoke-direct/range {v20 .. v25}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1795
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_2

    .line 1784
    :cond_10
    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 1785
    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 1786
    :cond_11
    const/4 v3, 0x6

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1787
    const/4 v3, 0x6

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto :goto_3

    .line 1797
    :cond_12
    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_13

    const-string v3, "clock"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1798
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1799
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_2

    .line 1801
    :cond_13
    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_19

    const-string v3, "appwidget"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1802
    if-eqz p7, :cond_18

    .line 1803
    const/4 v3, 0x0

    const-string v4, "spanX"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1804
    const/4 v3, 0x0

    const-string v4, "spanY"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1810
    :goto_4
    if-eqz v44, :cond_14

    const-string v3, "null"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1811
    :cond_14
    const-string v44, "1"

    .line 1812
    :cond_15
    if-eqz v45, :cond_16

    const-string v3, "null"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1813
    :cond_16
    const-string v45, "1"

    .line 1814
    :cond_17
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    invoke-direct/range {v20 .. v28}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1815
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_2

    .line 1807
    :cond_18
    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 1808
    const/4 v3, 0x6

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto :goto_4

    .line 1817
    :cond_19
    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_1c

    const-string v3, "folder"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1818
    const/16 v47, 0x0

    .line 1819
    .local v47, title:Ljava/lang/String;
    const/16 v48, -0x1

    .line 1821
    .local v48, titleResId:I
    const/4 v3, 0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_1b

    .line 1822
    const/4 v3, 0x0

    const-string v4, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1830
    :cond_1a
    :goto_5
    const-string v3, "title"

    move-object/from16 v0, v47

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    .line 1832
    .local v24, folderId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v24, v3

    if-ltz v3, :cond_6

    .line 1833
    add-int/lit8 v40, v40, 0x1

    .line 1835
    and-int/lit8 v26, p6, -0xd

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move/from16 v27, p7

    :try_start_0
    invoke-direct/range {v20 .. v27}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int v40, v40, v3

    goto/16 :goto_2

    .line 1824
    .end local v24           #folderId:J
    :cond_1b
    const/16 v3, 0x8

    const/4 v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    .line 1825
    const/4 v3, -0x1

    move/from16 v0, v48

    if-eq v0, v3, :cond_1a

    .line 1826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v48

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    goto :goto_5

    .line 1837
    .restart local v24       #folderId:J
    :catch_0
    move-exception v38

    .line 1838
    .local v38, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "LauncherProvider"

    const-string v4, "Failed to load favorites"

    move-object/from16 v0, v38

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1842
    .end local v24           #folderId:J
    .end local v38           #e:Ljava/io/IOException;
    .end local v47           #title:Ljava/lang/String;
    .end local v48           #titleResId:I
    :cond_1c
    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_25

    const-string v3, "sactivitywidget"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1845
    if-eqz p7, :cond_24

    .line 1846
    const/4 v3, 0x0

    const-string v4, "themeName"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1847
    .local v33, themeName:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "instance"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1848
    .local v39, instance:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "spanX"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1849
    const/4 v3, 0x0

    const-string v4, "spanY"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1856
    :goto_6
    if-eqz v33, :cond_1e

    .line 1857
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "null"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1858
    :cond_1d
    const/16 v33, 0x0

    .line 1861
    :cond_1e
    if-eqz v44, :cond_1f

    const-string v3, "null"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1862
    :cond_1f
    const-string v44, "1"

    .line 1863
    :cond_20
    if-eqz v45, :cond_21

    const-string v3, "null"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1864
    :cond_21
    const-string v45, "1"

    .line 1865
    :cond_22
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v26, p0

    move-object/from16 v27, p1

    move-object/from16 v28, p2

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    invoke-direct/range {v26 .. v35}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addSamsungActivityWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1866
    add-int/lit8 v40, v40, 0x1

    .line 1867
    :cond_23
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v26, p0

    move-object/from16 v27, p1

    move-object/from16 v28, p2

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v34, v39

    invoke-direct/range {v26 .. v36}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addSurfaceWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1868
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_2

    .line 1851
    .end local v33           #themeName:Ljava/lang/String;
    .end local v39           #instance:Ljava/lang/String;
    :cond_24
    const/16 v3, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1852
    .restart local v33       #themeName:Ljava/lang/String;
    const/16 v3, 0xb

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1853
    .restart local v39       #instance:Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 1854
    const/4 v3, 0x6

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_6

    .line 1871
    .end local v33           #themeName:Ljava/lang/String;
    .end local v39           #instance:Ljava/lang/String;
    :cond_25
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid tag <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> detected while parsing favorites at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    .line 1154
    const-string v11, "LauncherProvider"

    const-string v12, "normalizing icons"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1157
    const/4 v1, 0x0

    .line 1158
    .local v1, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1160
    .local v10, update:Landroid/database/sqlite/SQLiteStatement;
    const/4 v9, 0x0

    .line 1161
    .local v9, logged:Z
    :try_start_0
    const-string v11, "UPDATE favorites SET icon=? WHERE _id=?"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 1164
    const-string v11, "SELECT _id, icon FROM favorites WHERE iconType=1"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1167
    if-eqz v1, :cond_9

    if-eqz v10, :cond_9

    .line 1168
    const-string v11, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1169
    .local v8, idIndex:I
    const-string v11, "icon"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1171
    .local v5, iconIndex:I
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1172
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1173
    .local v6, id:J
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1175
    .local v2, data:[B
    const/4 v11, 0x0

    :try_start_1
    array-length v12, v2

    invoke-static {v2, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/android/launcher2/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1178
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1179
    const/4 v11, 0x1

    invoke-virtual {v10, v11, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1180
    invoke-static {v0}, Lcom/android/launcher2/HomeItem;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 1181
    if-eqz v2, :cond_1

    .line 1182
    const/4 v11, 0x2

    invoke-virtual {v10, v11, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1183
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1185
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1187
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 1188
    .local v3, e:Ljava/lang/Exception;
    if-nez v9, :cond_3

    .line 1189
    :try_start_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1193
    :cond_2
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 1191
    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Also failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1200
    .end local v2           #data:[B
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #iconIndex:I
    .end local v6           #id:J
    .end local v8           #idIndex:I
    :catch_1
    move-exception v4

    .line 1201
    .local v4, ex:Landroid/database/SQLException;
    :try_start_3
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "LauncherProvider"

    const-string v12, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1203
    :cond_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1204
    if-eqz v10, :cond_5

    .line 1205
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1207
    :cond_5
    if-eqz v1, :cond_6

    .line 1208
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1211
    .end local v4           #ex:Landroid/database/SQLException;
    :cond_6
    :goto_2
    return-void

    .line 1196
    .restart local v5       #iconIndex:I
    .restart local v8       #idIndex:I
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1203
    .end local v5           #iconIndex:I
    .end local v8           #idIndex:I
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1204
    if-eqz v10, :cond_8

    .line 1205
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1207
    :cond_8
    if-eqz v1, :cond_6

    .line 1208
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1198
    :cond_9
    :try_start_5
    const-string v11, "LauncherProvider"

    const-string v12, "Failed to create cursor while normalizing icons"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 1203
    :catchall_0
    move-exception v11

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1204
    if-eqz v10, :cond_a

    .line 1205
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1207
    :cond_a
    if-eqz v1, :cond_b

    .line 1208
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v11
.end method

.method private resetCount()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 2486
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "com.android.launcher2.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2487
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2488
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "homescreenindex"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2489
    const-string v2, "homescreenindex.simple"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2490
    const-string v2, "screencount"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2491
    const-string v2, "screencount.simple"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2493
    return-void
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .prologue
    .line 604
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 605
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 606
    return-void
.end method

.method private updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 24
    .parameter "db"

    .prologue
    .line 1084
    const/4 v11, 0x0

    .line 1085
    .local v11, c:Landroid/database/Cursor;
    const-string v3, "itemType"

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v7, 0x1

    aput v7, v4, v5

    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    .line 1088
    .local v6, selectWhere:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1091
    :try_start_0
    const-string v4, "favorites"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "intent"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1094
    if-eqz v11, :cond_8

    .line 1095
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found upgrade cursor count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_0
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1098
    .local v23, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1099
    .local v17, idIndex:I
    const-string v3, "intent"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1101
    .local v19, intentIndex:I
    :cond_1
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1102
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1103
    .local v15, favoriteId:J
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v20

    .line 1104
    .local v20, intentUri:Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 1106
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v20

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    .line 1107
    .local v18, intent:Landroid/content/Intent;
    const-string v3, "Home"

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 1109
    .local v22, uri:Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1110
    .local v12, data:Ljava/lang/String;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "content://contacts/people/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "content://com.android.contacts/contacts/lookup/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1114
    :cond_2
    new-instance v18, Landroid/content/Intent;

    .end local v18           #intent:Landroid/content/Intent;
    const-string v3, "com.android.contacts.action.QUICK_CONTACT"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1115
    .restart local v18       #intent:Landroid/content/Intent;
    const/high16 v3, 0x1420

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1119
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1120
    const-string v3, "mode"

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1121
    const-string v4, "exclude_mimes"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 1124
    const-string v3, "intent"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1127
    .local v21, updateWhere:Ljava/lang/String;
    const-string v3, "favorites"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1129
    .end local v12           #data:Ljava/lang/String;
    .end local v18           #intent:Landroid/content/Intent;
    .end local v21           #updateWhere:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v14

    .line 1130
    .local v14, ex:Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "LauncherProvider"

    const-string v4, "Problem upgrading shortcut"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1140
    .end local v14           #ex:Ljava/lang/RuntimeException;
    .end local v15           #favoriteId:J
    .end local v17           #idIndex:I
    .end local v19           #intentIndex:I
    .end local v20           #intentUri:Ljava/lang/String;
    .end local v23           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v14

    .line 1141
    .local v14, ex:Landroid/database/SQLException;
    :try_start_3
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "LauncherProvider"

    const-string v4, "Problem while upgrading contacts"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1142
    :cond_3
    const/4 v3, 0x0

    .line 1144
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1145
    if-eqz v11, :cond_4

    .line 1146
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1150
    .end local v14           #ex:Landroid/database/SQLException;
    :cond_4
    :goto_1
    return v3

    .line 1131
    .restart local v15       #favoriteId:J
    .restart local v17       #idIndex:I
    .restart local v19       #intentIndex:I
    .restart local v20       #intentUri:Ljava/lang/String;
    .restart local v23       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v13

    .line 1132
    .local v13, e:Ljava/net/URISyntaxException;
    :try_start_4
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "LauncherProvider"

    const-string v4, "Problem upgrading shortcut"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1144
    .end local v13           #e:Ljava/net/URISyntaxException;
    .end local v15           #favoriteId:J
    .end local v17           #idIndex:I
    .end local v19           #intentIndex:I
    .end local v20           #intentUri:Ljava/lang/String;
    .end local v23           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1145
    if-eqz v11, :cond_5

    .line 1146
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 1136
    .restart local v17       #idIndex:I
    .restart local v19       #intentIndex:I
    .restart local v23       #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1144
    .end local v17           #idIndex:I
    .end local v19           #intentIndex:I
    .end local v23           #values:Landroid/content/ContentValues;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1145
    if-eqz v11, :cond_7

    .line 1146
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1150
    :cond_7
    const/4 v3, 0x1

    goto :goto_1

    .line 1138
    :cond_8
    :try_start_6
    const-string v3, "LauncherProvider"

    const-string v4, "Failed to create cursor for updateContactsShortcuts"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2
.end method


# virtual methods
.method public generateNewAppOrderId()J
    .locals 2

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    .line 1225
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: mMaxAppOrderId was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewFavoritesId()J
    .locals 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    .line 1216
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: mMaxFavoriteId was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSprintFolderID(Z)J
    .locals 8
    .parameter "isFeatured"

    .prologue
    const-wide/16 v6, 0x0

    .line 1598
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSprintFolderID :: isFeatured: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v4, "com.android.launcher2.prefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1600
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-wide/16 v0, -0x1

    .line 1601
    .local v0, id:J
    if-eqz p1, :cond_1

    .line 1602
    const-string v3, "sprintFeaturedFolderID"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1606
    :goto_0
    return-wide v0

    .line 1604
    :cond_1
    const-string v3, "sprintFolderID"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public loadFrontAppOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->frontMenuApps:Ljava/util/ArrayList;

    .line 1614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    .line 1616
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 1618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    .line 1619
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->frontMenuApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 610
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LauncherProvider"

    const-string v2, "creating new launcher database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 622
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 626
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 627
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 629
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 630
    const-string v1, "favorites"

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 636
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 637
    const-string v1, "favorites_easy"

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 638
    const-string v1, "favorites_easy"

    invoke-direct {p0, p1, v1, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    .line 641
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 642
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 644
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 646
    const-string v1, "favorites"

    invoke-direct {p0, p1, v1, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    .line 648
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 649
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v2, 0x1

    .line 1005
    move v6, p2

    .line 1006
    .local v6, version:I
    const-string v7, "LauncherProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDowngrade triggered :: oldVersion:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newVersion:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/16 v7, 0xc

    if-eq v6, v7, :cond_7

    .line 1009
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getTablesList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1010
    .local v5, tablesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1011
    .local v4, table:Ljava/lang/String;
    const-string v7, "favorites"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "appOrder"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "favorites_easy"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "favorites_normal"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "prefs"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1019
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DROP TABLE IF EXISTS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1020
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "LauncherProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDownGrade:: Dropping extra table:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1023
    .end local v4           #table:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 1025
    .local v3, reCreateDatabase:Z
    const-string v7, "favorites"

    invoke-direct {p0, p1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "appOrder"

    invoke-direct {p0, p1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1026
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1027
    const-string v7, "LauncherProvider"

    const-string v8, "onDownGrade:: favorites/appOrder doesnot exist"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_3
    const/4 v3, 0x1

    .line 1048
    :cond_4
    :goto_1
    if-eqz v3, :cond_7

    .line 1050
    const-string v7, "LauncherProvider"

    const-string v8, "Destroying all old data."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->resetCount()V

    .line 1052
    const-string v7, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1053
    const-string v7, "DROP TABLE IF EXISTS appOrder"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1054
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1055
    const-string v7, "DROP TABLE IF EXISTS favorites_normal"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1056
    const-string v7, "DROP TABLE IF EXISTS favorites_easy"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1058
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1059
    const-string v7, "DROP TABLE IF EXISTS prefs"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1060
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1063
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #reCreateDatabase:Z
    .end local v5           #tablesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    return-void

    .line 1030
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #reCreateDatabase:Z
    .restart local v5       #tablesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1031
    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "easy_mode_switch"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1032
    .local v0, easyModeSwitch:I
    if-nez v0, :cond_b

    .line 1033
    .local v2, isEasyMode:Z
    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1034
    const-string v7, "LauncherProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDownGrade:: isEasyMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_9
    if-nez v2, :cond_c

    const-string v7, "favorites_easy"

    invoke-direct {p0, p1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 1037
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1038
    const-string v7, "LauncherProvider"

    const-string v8, "onDownGrade:: favorites_easy doesnot exist"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_a
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1032
    .end local v2           #isEasyMode:Z
    :cond_b
    const/4 v2, 0x0

    goto :goto_2

    .line 1040
    .restart local v2       #isEasyMode:Z
    :cond_c
    if-eqz v2, :cond_4

    const-string v7, "favorites_normal"

    invoke-direct {p0, p1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1041
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1042
    const-string v7, "LauncherProvider"

    const-string v8, "onDownGrade:: favorites_normal doesnot exist"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_1
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 867
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LauncherProvider"

    const-string v1, "onOpen triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createPublicPreferences(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 873
    :goto_0
    return-void

    .line 871
    :cond_1
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0x9

    const/4 v4, 0x3

    .line 877
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LauncherProvider"

    const-string v3, "onUpgrade triggered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_0
    move v1, p2

    .line 880
    .local v1, version:I
    if-ge v1, v4, :cond_1

    .line 882
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 885
    :try_start_0
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    const/4 v1, 0x3

    .line 893
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 897
    :goto_0
    if-ne v1, v4, :cond_1

    .line 898
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 902
    :cond_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 903
    const/4 v1, 0x4

    .line 914
    :cond_2
    const/4 v2, 0x6

    if-ge v1, v2, :cond_3

    .line 916
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 918
    :try_start_1
    const-string v2, "UPDATE favorites SET screen=(screen + 1);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 924
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 928
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 929
    const/4 v1, 0x6

    .line 933
    :cond_3
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    .line 935
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 936
    const/4 v1, 0x7

    .line 939
    :cond_4
    const/16 v2, 0x8

    if-ge v1, v2, :cond_5

    .line 943
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 944
    const/16 v1, 0x8

    .line 947
    :cond_5
    if-ge v1, v5, :cond_7

    .line 950
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v2, :cond_6

    .line 951
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getMaxFavoriteID(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 955
    :cond_6
    const-string v2, "favorites"

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    .line 956
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 957
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 958
    const/16 v1, 0x9

    .line 960
    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v2

    const/16 v3, 0x258

    if-lt v2, v3, :cond_8

    if-eq v1, v5, :cond_9

    :cond_8
    const/16 v2, 0xb

    if-ge v1, v2, :cond_9

    .line 961
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 964
    :try_start_2
    const-string v2, "ALTER TABLE favorites ADD COLUMN iconMovieUri TEXT"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 967
    const/16 v1, 0xb

    .line 972
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 975
    :cond_9
    :goto_2
    if-ge v1, v6, :cond_a

    .line 976
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 978
    :try_start_3
    const-string v2, "ALTER TABLE favorites ADD COLUMN secret INTEGER"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 979
    const-string v2, "ALTER TABLE appOrder ADD COLUMN secret INTEGER"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 981
    const/16 v1, 0xc

    .line 985
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 989
    :cond_a
    :goto_3
    if-eq v1, v6, :cond_c

    .line 990
    const-string v2, "LauncherProvider"

    const-string v3, "Destroying all old data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->resetCount()V

    .line 992
    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 993
    const-string v2, "DROP TABLE IF EXISTS appOrder"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 995
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 996
    const-string v2, "DROP TABLE IF EXISTS favorites_normal"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 997
    const-string v2, "DROP TABLE IF EXISTS favorites_easy"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 999
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1001
    :cond_c
    return-void

    .line 889
    :catch_0
    move-exception v0

    .line 891
    .local v0, ex:Landroid/database/SQLException;
    :try_start_4
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 893
    :cond_d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 920
    :catch_1
    move-exception v0

    .line 922
    .restart local v0       #ex:Landroid/database/SQLException;
    :try_start_5
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 924
    :cond_e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 968
    :catch_2
    move-exception v0

    .line 970
    .restart local v0       #ex:Landroid/database/SQLException;
    :try_start_6
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 972
    :cond_f
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_2
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 982
    :catch_3
    move-exception v0

    .line 983
    .restart local v0       #ex:Landroid/database/SQLException;
    :try_start_7
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 985
    :cond_10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_3

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_3
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public removeFromSprintFolderTable(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1580
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeFromSprintFolderTable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1582
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "sprintFolder"

    const-string v4, "packageName=?"

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v2

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setSprintFolderId(JZ)V
    .locals 5
    .parameter "id"
    .parameter "isFeatured"

    .prologue
    .line 1586
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSprintFolderID :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , isFeatured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "com.android.launcher2.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1588
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1589
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p3, :cond_1

    .line 1590
    const-string v2, "sprintFeaturedFolderID"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1594
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1595
    return-void

    .line 1592
    :cond_1
    const-string v2, "sprintFolderID"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method switchFavoritesIfNecessary(I)Z
    .locals 12
    .parameter "easyModeSwitch"

    .prologue
    const/4 v8, 0x1

    .line 1277
    const/4 v0, 0x0

    .line 1281
    .local v0, changed:Z
    if-ne p1, v8, :cond_2

    .line 1282
    .local v8, switchToNormalMode:Z
    :goto_0
    iget-boolean v9, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mFavoritesInNormalMode:Z

    if-eq v8, v9, :cond_1

    .line 1285
    if-eqz v8, :cond_3

    .line 1286
    const-string v5, "favorites_normal"

    .line 1287
    .local v5, oldSaveTbl:Ljava/lang/String;
    const-string v4, "favorites_easy"

    .line 1292
    .local v4, newSaveTbl:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1293
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1295
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ALTER table favorites rename to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1296
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ALTER table "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rename to favorites"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1297
    iget-object v9, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 1298
    .local v6, prevId:J
    iget-object v9, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v10, "favorites"

    invoke-direct {p0, v1, v10}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1299
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1300
    iget-object v9, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 1301
    .local v2, newId:J
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "switchFavoritesIfNecessary. old/new mMaxFavoriteId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_0
    iput-boolean v8, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mFavoritesInNormalMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    const/4 v0, 0x1

    .line 1305
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1308
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #newId:J
    .end local v4           #newSaveTbl:Ljava/lang/String;
    .end local v5           #oldSaveTbl:Ljava/lang/String;
    .end local v6           #prevId:J
    :cond_1
    return v0

    .line 1281
    .end local v8           #switchToNormalMode:Z
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1289
    .restart local v8       #switchToNormalMode:Z
    :cond_3
    const-string v5, "favorites_easy"

    .line 1290
    .restart local v5       #oldSaveTbl:Ljava/lang/String;
    const-string v4, "favorites_normal"

    .restart local v4       #newSaveTbl:Ljava/lang/String;
    goto/16 :goto_1

    .line 1305
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v9

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9
.end method

.method switchToDynamicIfNecessary(I)Z
    .locals 6
    .parameter "basicEasymode"

    .prologue
    const/4 v5, 0x0

    .line 1327
    const-string v2, "DYNAMIC_CSC_J-TDD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchToDynamicIfNecessary basicEasymode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1329
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 1330
    .local v0, changed:Z
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1331
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.sec.android.app.launcher.settings/favorites"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1335
    :cond_0
    const-string v2, "favorites"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadDynamicCscFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    .line 1336
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 1337
    const/4 v0, 0x1

    .line 1342
    :cond_1
    return v0
.end method
