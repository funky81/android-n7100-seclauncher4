.class public Lcom/android/launcher2/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherProvider$SqlArguments;,
        Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.launcher.settings"

.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri; = null

.field static final CSC_FILE_MAINMENU:Ljava/lang/String; = "/system/csc/default_application_order.xml"

.field static final CSC_FILE_WORKSPACE:Ljava/lang/String; = "/system/csc/default_workspace.xml"

.field static final CSC_FILE_WORKSPACE_SIMPLE:Ljava/lang/String; = "/system/csc/default_workspace_simple.xml"

.field private static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DATABASE_VERSION:I = 0xc

#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field public static final PREFS_PRESECRET:Ljava/lang/String; = "PrefsPreSecret"

.field static final TABLE_APPORDER:Ljava/lang/String; = "appOrder"

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field static final TABLE_FAVORITES_EASY:Ljava/lang/String; = "favorites_easy"

.field static final TABLE_FAVORITES_NORMAL:Ljava/lang/String; = "favorites_normal"

.field static final TABLE_PUBLIC_PREFERENCES:Ljava/lang/String; = "prefs"

.field private static final TAG:Ljava/lang/String; = "LauncherProvider"

.field private static mApp:Lcom/android/launcher2/LauncherApplication;

.field private static mIsRestoreHomeScreen:Z


# instance fields
.field protected mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    .line 113
    const-string v0, "content://com.sec.android.app.launcher.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2560
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$200()Lcom/android/launcher2/LauncherApplication;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-boolean p0, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    return p0
.end method

.method static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .parameter "column"
    .parameter "values"

    .prologue
    .line 2550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2551
    .local v1, selectWhere:Ljava/lang/StringBuilder;
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 2552
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2553
    if-lez v0, :cond_0

    .line 2554
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2557
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "helper"
    .parameter "db"
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 426
    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public LoadAttReady2GoDB(Ljava/lang/String;)I
    .locals 1
    .parameter "favoritesPath"

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 168
    .local v0, item_inserted:I
    return v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 447
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 449
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 450
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 452
    :try_start_0
    array-length v3, p2

    .line 453
    .local v3, numValues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 454
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v2

    invoke-static {v4, v1, v5, v6, v7}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 455
    const/4 v4, 0x0

    .line 460
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 464
    :goto_1
    return v4

    .line 453
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 463
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 464
    array-length v4, p2

    goto :goto_1

    .line 460
    .end local v2           #i:I
    .end local v3           #numValues:I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 469
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 471
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 472
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 473
    .local v1, count:I
    if-lez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 474
    :cond_0
    return v1
.end method

.method public generateNewHomeId()J
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewMenuId()J
    .locals 2

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v0

    return-wide v0
.end method

.method getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    .locals 2

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    if-nez v0, :cond_0

    .line 2540
    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    .line 2542
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    return-object v0
.end method

.method public getScreenCount()I
    .locals 6

    .prologue
    .line 2657
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2658
    const/4 v4, -0x1

    .line 2679
    :goto_0
    return v4

    .line 2661
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2662
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 2663
    .local v0, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    int-to-long v2, v4

    .line 2666
    .local v2, id:J
    :try_start_0
    const-string v4, "SELECT value FROM prefs WHERE key=\'numScreens\'"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2670
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2671
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 2674
    :cond_1
    if-eqz v0, :cond_2

    .line 2675
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2679
    :cond_2
    long-to-int v4, v2

    goto :goto_0

    .line 2674
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 2675
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2674
    :cond_3
    throw v4
.end method

.method public getScreenIndex()I
    .locals 7

    .prologue
    .line 2629
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2630
    const/4 v5, -0x1

    .line 2653
    :goto_0
    return v5

    .line 2633
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2634
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 2635
    .local v0, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v5

    int-to-long v3, v5

    .line 2638
    .local v3, id:J
    :try_start_0
    const-string v5, "SELECT value  FROM prefs WHERE key=\'defaultScreen\'"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2642
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2643
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 2648
    :cond_1
    if-eqz v0, :cond_2

    .line 2649
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2653
    :cond_2
    long-to-int v5, v3

    goto :goto_0

    .line 2645
    :catch_0
    move-exception v2

    .line 2646
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "LauncherProvider"

    const-string v6, "Could not get screen index from db"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2648
    if-eqz v0, :cond_2

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    .line 2649
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2648
    :cond_3
    throw v5
.end method

.method public getShortcutInfo(Lcom/android/launcher2/HomeItem;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 9
    .parameter "item"

    .prologue
    .line 2683
    new-instance v5, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v5}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    .line 2684
    .local v5, shortcut:Lcom/android/launcher2/HomeShortcutItem;
    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2685
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 2687
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT title, icon  FROM favorites WHERE _id=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2690
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2691
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2692
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 2693
    .local v3, image:[B
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2695
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v3, v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2696
    const/4 v3, 0x0

    .line 2702
    .end local v3           #image:[B
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    if-eqz v0, :cond_1

    .line 2703
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2705
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2707
    return-object v5

    .line 2699
    :catch_0
    move-exception v2

    .line 2700
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "LauncherProvider"

    const-string v7, "Could not get icon from the database"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2702
    if-eqz v0, :cond_1

    .line 2703
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2702
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_2

    .line 2703
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2705
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2702
    throw v6
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 133
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v2, v2}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vnd.android.cursor.dir/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, type:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 138
    .end local v1           #type:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vnd.android.cursor.item/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #type:Ljava/lang/String;
    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v4, 0x0

    .line 434
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 436
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 437
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v5, v1, v6, v4, p2}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 438
    .local v2, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_0

    .line 442
    :goto_0
    return-object v4

    .line 440
    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 441
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    .line 442
    goto :goto_0
.end method

.method isFavoritesInNormalMode()Z
    .locals 1

    .prologue
    .line 2614
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    #getter for: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mFavoritesInNormalMode:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$400(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;)Z

    move-result v0

    return v0
.end method

.method public loadFrontApps()Ljava/util/ArrayList;
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
    .line 503
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFrontAppOrder()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public moveAppOrderModify(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 252
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 254
    .local v3, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v4, "UPDATE appOrder set screen=? where _id=?"

    .line 255
    .local v4, updateString:Ljava/lang/String;
    const-string v5, "UPDATE appOrder set screen=? where _id=?"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 257
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    .line 259
    .local v2, item:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v5, 0x1

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 260
    const/4 v5, 0x2

    iget-wide v6, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 261
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 265
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v4           #updateString:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_0

    .line 266
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 267
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 263
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #updateString:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    if-eqz v3, :cond_2

    .line 266
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 267
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 269
    return-void
.end method

.method public moveFavorites(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$FavoritePos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$FavoritePos;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 206
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 208
    .local v3, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v4, "UPDATE favorites set container=?,screen=?,cellX=?,cellY=?,secret=? where _id=?"

    .line 209
    .local v4, updateString:Ljava/lang/String;
    const-string v5, "UPDATE favorites set container=?,screen=?,cellX=?,cellY=?,secret=? where _id=?"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 211
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 212
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    .line 213
    .local v2, item:Lcom/android/launcher2/LauncherSettings$FavoritePos;
    const/4 v5, 0x1

    iget-wide v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 214
    const/4 v5, 0x2

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 215
    const/4 v5, 0x3

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellX:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 216
    const/4 v5, 0x4

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellY:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 217
    const/4 v5, 0x5

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->secret:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 218
    const/4 v5, 0x6

    iget-wide v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 219
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 223
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/launcher2/LauncherSettings$FavoritePos;
    .end local v4           #updateString:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_0

    .line 224
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 225
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 221
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #updateString:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    if-eqz v3, :cond_2

    .line 224
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 225
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 227
    return-void
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    .line 127
    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncherProvider(Lcom/android/launcher2/LauncherProvider;)V

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 193
    new-instance v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 194
    .local v8, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 195
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 198
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 199
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 201
    return-object v9
.end method

.method protected resetDatabase()V
    .locals 2

    .prologue
    .line 419
    const-string v0, "LauncherProvider"

    const-string v1, "resetDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->close()V

    .line 421
    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    .line 422
    return-void
.end method

.method public restoreHomeScreenDB(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 5
    .parameter "parser"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 174
    const/4 v1, 0x0

    .line 176
    .local v1, item_inserted:I
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    .line 177
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iput-object p1, v2, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

    .line 178
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 179
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "favorites"

    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    const-string v3, "favorites"

    #calls: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    invoke-static {v2, v0, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$000(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v1

    .line 181
    if-nez v1, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    const-string v3, "favorites"

    #calls: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    invoke-static {v2, v0, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$000(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    .line 185
    :cond_0
    return v1
.end method

.method protected sendNotify(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 488
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 492
    :cond_1
    return-void
.end method

.method switchFavoritesMode(I)Z
    .locals 1
    .parameter "easyModeSwitch"

    .prologue
    .line 2625
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->switchFavoritesIfNecessary(I)Z

    move-result v0

    return v0
.end method

.method switchToDynamicMode(I)Z
    .locals 1
    .parameter "basicEasymode"

    .prologue
    .line 2604
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->switchToDynamicIfNecessary(I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 479
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 481
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 482
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 483
    .local v1, count:I
    if-lez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 484
    :cond_0
    return v1
.end method

.method public updateAppItems(Ljava/util/List;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 297
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 298
    .local v4, insertFolder:Landroid/database/sqlite/SQLiteStatement;
    const/4 v7, 0x0

    .line 299
    .local v7, updateFolder:Landroid/database/sqlite/SQLiteStatement;
    const/4 v8, 0x0

    .line 300
    .local v8, updateTitle:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x0

    .line 301
    .local v3, insertApp:Landroid/database/sqlite/SQLiteStatement;
    const/4 v6, 0x0

    .line 302
    .local v6, updateApp:Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 304
    .local v1, deleteItem:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    .line 306
    .local v5, update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iget v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 308
    :pswitch_0
    if-nez v4, :cond_0

    .line 309
    const-string v9, "INSERT into appOrder (_id,screen,cell,title,secret) values(?,?,?,?,?)"

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 310
    :cond_0
    const/4 v9, 0x1

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v4, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 311
    const/4 v9, 0x2

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v10, v10

    invoke-virtual {v4, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 312
    const/4 v9, 0x3

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v10, v10

    invoke-virtual {v4, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 313
    iget-object v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v9, :cond_8

    .line 314
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 317
    :goto_1
    const/4 v11, 0x5

    iget-boolean v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    if-eqz v9, :cond_9

    const-wide/16 v9, 0x1

    :goto_2
    invoke-virtual {v4, v11, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 318
    sget-boolean v9, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v9, :cond_1

    .line 319
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appOrder insert folder: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 401
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_2

    .line 402
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 403
    :cond_2
    if-eqz v7, :cond_3

    .line 404
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 405
    :cond_3
    if-eqz v8, :cond_4

    .line 406
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 407
    :cond_4
    if-eqz v3, :cond_5

    .line 408
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 409
    :cond_5
    if-eqz v6, :cond_6

    .line 410
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 411
    :cond_6
    if-eqz v1, :cond_7

    .line 412
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 413
    :cond_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 401
    throw v9

    .line 316
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_8
    const/4 v9, 0x4

    :try_start_1
    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 317
    :cond_9
    const-wide/16 v9, 0x0

    goto/16 :goto_2

    .line 325
    :pswitch_1
    if-nez v7, :cond_a

    .line 326
    const-string v9, "UPDATE appOrder set screen=?,cell=?,title=?,secret=? where _id=?"

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 327
    :cond_a
    const/4 v9, 0x1

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v10, v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 328
    const/4 v9, 0x2

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v10, v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 329
    iget-object v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v9, :cond_c

    .line 330
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 333
    :goto_3
    const/4 v11, 0x4

    iget-boolean v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    if-eqz v9, :cond_d

    const-wide/16 v9, 0x1

    :goto_4
    invoke-virtual {v7, v11, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 335
    const/4 v9, 0x5

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 336
    sget-boolean v9, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v9, :cond_b

    .line 337
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appOrder update folder: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_b
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 332
    :cond_c
    const/4 v9, 0x3

    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3

    .line 333
    :cond_d
    const-wide/16 v9, 0x0

    goto :goto_4

    .line 343
    :pswitch_2
    if-nez v8, :cond_e

    .line 344
    const-string v9, "UPDATE appOrder set title=? where _id=?"

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 345
    :cond_e
    iget-object v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v9, :cond_10

    .line 346
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 349
    :goto_5
    const/4 v9, 0x2

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v8, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 350
    sget-boolean v9, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v9, :cond_f

    .line 351
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appOrder update title: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_f
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 348
    :cond_10
    const/4 v9, 0x1

    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_5

    .line 356
    :pswitch_3
    if-nez v3, :cond_11

    .line 357
    const-string v9, "INSERT into appOrder (_id,folderId,screen,cell,hidden,title,componentName,secret) values(?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 358
    :cond_11
    const/4 v9, 0x1

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 359
    const/4 v9, 0x2

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 360
    const/4 v9, 0x3

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v10, v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 361
    const/4 v9, 0x4

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v10, v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 362
    const/4 v11, 0x5

    iget-boolean v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    if-eqz v9, :cond_13

    const-wide/16 v9, 0x1

    :goto_6
    invoke-virtual {v3, v11, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 363
    const/4 v9, 0x6

    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 364
    const/4 v9, 0x7

    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 365
    const/16 v11, 0x8

    iget-boolean v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    if-eqz v9, :cond_14

    const-wide/16 v9, 0x1

    :goto_7
    invoke-virtual {v3, v11, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 366
    sget-boolean v9, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v9, :cond_12

    .line 367
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appOrder create app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_12
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 362
    :cond_13
    const-wide/16 v9, 0x0

    goto/16 :goto_6

    .line 365
    :cond_14
    const-wide/16 v9, 0x0

    goto :goto_7

    .line 373
    :pswitch_4
    if-nez v6, :cond_15

    .line 374
    const-string v9, "UPDATE appOrder set folderId=?,screen=?,cell=?,hidden=?,title=?,secret=? where _id=?"

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 375
    :cond_15
    const/4 v9, 0x1

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v6, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 376
    const/4 v9, 0x2

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v10, v10

    invoke-virtual {v6, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 377
    const/4 v9, 0x3

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v10, v10

    invoke-virtual {v6, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 378
    const/4 v11, 0x4

    iget-boolean v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    if-eqz v9, :cond_17

    const-wide/16 v9, 0x1

    :goto_8
    invoke-virtual {v6, v11, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 379
    const/4 v9, 0x5

    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 380
    const/4 v11, 0x6

    iget-boolean v9, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    if-eqz v9, :cond_18

    const-wide/16 v9, 0x1

    :goto_9
    invoke-virtual {v6, v11, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 381
    const/4 v9, 0x7

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v6, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 382
    sget-boolean v9, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v9, :cond_16

    .line 383
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appOrder update app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_16
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 378
    :cond_17
    const-wide/16 v9, 0x0

    goto/16 :goto_8

    .line 380
    :cond_18
    const-wide/16 v9, 0x0

    goto :goto_9

    .line 389
    :pswitch_5
    if-nez v1, :cond_19

    .line 390
    const-string v9, "DELETE from appOrder where _id=?"

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 391
    :cond_19
    const/4 v9, 0x1

    iget-wide v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v1, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 392
    sget-boolean v9, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v9, :cond_1a

    .line 393
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appOrder delete item: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_1a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 398
    .end local v5           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_1b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    if-eqz v4, :cond_1c

    .line 402
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 403
    :cond_1c
    if-eqz v7, :cond_1d

    .line 404
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 405
    :cond_1d
    if-eqz v8, :cond_1e

    .line 406
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 407
    :cond_1e
    if-eqz v3, :cond_1f

    .line 408
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 409
    :cond_1f
    if-eqz v6, :cond_20

    .line 410
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 411
    :cond_20
    if-eqz v1, :cond_21

    .line 412
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 413
    :cond_21
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 416
    return-void

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public updateScreenCount()V
    .locals 5

    .prologue
    .line 284
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 286
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "UPDATE prefs SET value=? WHERE key=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 288
    .local v1, update:Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 289
    const/4 v2, 0x2

    const-string v3, "numScreens"

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 290
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 291
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 293
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #update:Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    return-void
.end method

.method public updateScreenIdFavorites(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$FavoritePos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$FavoritePos;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 231
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 233
    .local v3, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v4, "UPDATE favorites set screen=? where _id=?"

    .line 234
    .local v4, updateString:Ljava/lang/String;
    const-string v5, "UPDATE favorites set screen=? where _id=?"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 236
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    .line 238
    .local v2, item:Lcom/android/launcher2/LauncherSettings$FavoritePos;
    const/4 v5, 0x1

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 239
    const/4 v5, 0x2

    iget-wide v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 240
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 244
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/launcher2/LauncherSettings$FavoritePos;
    .end local v4           #updateString:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_0

    .line 245
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 246
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 242
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #updateString:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    if-eqz v3, :cond_2

    .line 245
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 246
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 248
    return-void
.end method

.method public updateScreenIndex()V
    .locals 5

    .prologue
    .line 272
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 274
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "UPDATE prefs SET value=? WHERE key=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 276
    .local v1, update:Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 277
    const/4 v2, 0x2

    const-string v3, "defaultScreen"

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 278
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 279
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 281
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #update:Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    return-void
.end method
