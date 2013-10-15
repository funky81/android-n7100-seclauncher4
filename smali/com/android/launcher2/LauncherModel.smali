.class public Lcom/android/launcher2/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherModel$14;,
        Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;,
        Lcom/android/launcher2/LauncherModel$LoaderTask;,
        Lcom/android/launcher2/LauncherModel$Callbacks;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field protected static final DEBUGGABLE:Z = false

.field protected static final DEBUG_LOADERS:Z = true

.field protected static final ITEMS_CHUNK:I = 0x6

.field private static final TAG:Ljava/lang/String; = "Launcher.Model"

.field public static UseLauncherHighPriority:Z

.field protected static final sAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static sCellCountX:I

.field protected static sCellCountY:I

.field protected static final sDbIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field

.field protected static final sHomeFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sHomeItemIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sHomeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sSamsungWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/SamsungWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sSurfaceWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/SurfaceWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sWorker:Landroid/os/Handler;

.field protected static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private isLauncherProviderLoaded:Z

.field protected volatile mAllAppsLoaded:Z

.field protected final mApp:Lcom/android/launcher2/LauncherApplication;

.field private final mAppsCanBeOnExternalStorage:Z

.field private final mBadgeCache:Lcom/android/launcher2/BadgeCache;

.field protected volatile mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mConfigMccWhenLoaded:I

.field protected volatile mConfigMncWhenLoaded:I

.field protected mHandler:Lcom/android/launcher2/DeferredHandler;

.field private final mHomeLoader:Lcom/android/launcher2/HomeLoader;

.field private volatile mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field protected volatile mLocaleWhenLoaded:Ljava/lang/String;

.field protected final mLock:Ljava/lang/Object;

.field protected final mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

.field protected final mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field protected volatile mRefreshRequired:Z

.field protected volatile mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    .line 103
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 105
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 107
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 109
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V
    .locals 2
    .parameter "app"
    .parameter "pkgResCache"

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 101
    new-instance v1, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v1}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    .line 113
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    .line 2233
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->isLauncherProviderLoaded:Z

    .line 205
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    .line 206
    new-instance v0, Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1}, Lcom/android/launcher2/BadgeCache;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    .line 207
    new-instance v0, Lcom/android/launcher2/HomeLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher2/HomeLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    .line 208
    new-instance v0, Lcom/android/launcher2/MenuAppLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher2/MenuAppLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    .line 209
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 210
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 211
    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/PkgResCache;)V
    .locals 2
    .parameter "app"
    .parameter "pkgResCache"
    .parameter "pkgResCacheForMenu"

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 101
    new-instance v1, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v1}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    .line 113
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    .line 2233
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->isLauncherProviderLoaded:Z

    .line 215
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    .line 216
    new-instance v0, Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1}, Lcom/android/launcher2/BadgeCache;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    .line 217
    new-instance v0, Lcom/android/launcher2/HomeLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher2/HomeLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    .line 218
    new-instance v0, Lcom/android/launcher2/MenuAppLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p3, v1}, Lcom/android/launcher2/MenuAppLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    .line 219
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 220
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 221
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->isLauncherProviderLoaded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->isLauncherProviderLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/BadgeCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    return-object v0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    const/4 v6, -0x1

    .line 639
    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    .line 640
    iput p4, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 641
    iput p5, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 642
    iput p6, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 645
    const-wide/16 v4, -0x65

    cmp-long v4, p2, v4

    if-nez v4, :cond_0

    if-gez p4, :cond_0

    instance-of v4, p0, Lcom/android/launcher2/Launcher;

    if-eqz v4, :cond_0

    move-object v4, p0

    .line 647
    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v4

    iput v4, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 648
    iput v6, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 649
    iput v6, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 657
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 658
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 659
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v3}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 662
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider;->generateNewHomeId()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/launcher2/HomeItem;->mId:J

    .line 663
    const-string v4, "_id"

    iget-wide v5, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 664
    iget v4, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v5, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/launcher2/HomeItem;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 666
    iget-object v4, p1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_1

    .line 667
    sget-object v5, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    iget-wide v6, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :cond_1
    new-instance v2, Lcom/android/launcher2/LauncherModel$7;

    invoke-direct {v2, v1, p7, v3, p1}, Lcom/android/launcher2/LauncherModel$7;-><init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/android/launcher2/HomeItem;)V

    .line 709
    .local v2, r:Ljava/lang/Runnable;
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 710
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 715
    :goto_0
    return-void

    .line 712
    :cond_2
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V
    .locals 10
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 317
    iget-wide v0, p1, Lcom/android/launcher2/HomeItem;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 319
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    const-string v9, "moveItemInDatabase"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIIILjava/lang/String;)V

    goto :goto_0
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
    .locals 6
    .parameter "context"
    .parameter "item"

    .prologue
    .line 827
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 828
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v3, p1, Lcom/android/launcher2/HomeItem;->mId:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 830
    .local v2, uriToDelete:Landroid/net/Uri;
    iget-object v3, p1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    .line 831
    sget-object v3, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :cond_0
    new-instance v1, Lcom/android/launcher2/LauncherModel$9;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/launcher2/LauncherModel$9;-><init>(Lcom/android/launcher2/HomeItem;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 869
    .local v1, r:Ljava/lang/Runnable;
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 870
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 874
    :goto_0
    return-void

    .line 872
    :cond_1
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter "notify"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 751
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/launcher2/LauncherModel$8;

    invoke-direct {v1, p1, v0, p0, p2}, Lcom/android/launcher2/LauncherModel$8;-><init>(Ljava/util/List;Landroid/content/ContentResolver;Landroid/content/Context;Z)V

    .line 813
    .local v1, r:Ljava/lang/Runnable;
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 814
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private dynamicCscToggleEasyMode(ZZILandroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "dynamicModeSwitch"
    .parameter "fromSettings"
    .parameter "basicEasymode"
    .parameter "context"
    .parameter "theme_install_status"

    .prologue
    .line 2238
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dynamicCscToggleEasyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fromSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    sget-object v7, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher2/LauncherModel$12;

    move-object v1, p0

    move v2, p3

    move v3, p2

    move v4, p1

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel$12;-><init>(Lcom/android/launcher2/LauncherModel;IZZLjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2279
    return-void
.end method

.method protected static findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;J)",
            "Lcom/android/launcher2/HomeFolderItem;"
        }
    .end annotation

    .prologue
    .line 3041
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    .line 3042
    .local v0, folderInfo:Lcom/android/launcher2/HomeFolderItem;
    if-nez v0, :cond_0

    .line 3044
    new-instance v0, Lcom/android/launcher2/HomeFolderItem;

    .end local v0           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    invoke-direct {v0}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    .line 3045
    .restart local v0       #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3047
    :cond_0
    return-object v0
.end method

.method static getCellCountX()I
    .locals 1

    .prologue
    .line 727
    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    return v0
.end method

.method static getCellCountY()I
    .locals 1

    .prologue
    .line 731
    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    return v0
.end method

.method static getCellLayoutChildId(JIIIII)I
    .locals 2
    .parameter "container"
    .parameter "screen"
    .parameter "localCellX"
    .parameter "localCellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 722
    long-to-int v0, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;
    .locals 18
    .parameter "context"
    .parameter "container"
    .parameter "screen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v13, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 554
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cellX"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cellY"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "spanX"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "spanY"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "secret"

    aput-object v6, v4, v5

    const-string v5, "container=? and screen=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 565
    .local v8, c:Landroid/database/Cursor;
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 566
    .local v9, cellXIndex:I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 567
    .local v10, cellYIndex:I
    const-string v3, "spanX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 568
    .local v15, spanXIndex:I
    const-string v3, "spanY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 569
    .local v16, spanYIndex:I
    const-string v3, "secret"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 572
    .local v14, secretIndex:I
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    new-instance v12, Lcom/android/launcher2/HomeItem;

    invoke-direct {v12}, Lcom/android/launcher2/HomeItem;-><init>()V

    .line 574
    .local v12, item:Lcom/android/launcher2/HomeItem;
    move-wide/from16 v0, p1

    iput-wide v0, v12, Lcom/android/launcher2/HomeItem;->container:J

    .line 575
    move/from16 v0, p3

    iput v0, v12, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 576
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 577
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 578
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 579
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 580
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 581
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    .line 587
    :cond_0
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    .end local v12           #item:Lcom/android/launcher2/HomeItem;
    :catch_0
    move-exception v11

    .line 590
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 595
    .end local v11           #e:Ljava/lang/Exception;
    :goto_1
    return-object v13

    .line 592
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method protected static loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V
    .locals 10
    .parameter "context"
    .parameter "item"

    .prologue
    .line 2677
    iget-object v5, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    .line 2678
    .local v5, movieUri:Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 2680
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 2681
    .local v3, is:Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x400

    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2683
    .local v6, os:Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v1, v7, [B

    .line 2685
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, len:I
    if-ltz v4, :cond_2

    .line 2686
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2691
    .end local v1           #buffer:[B
    .end local v4           #len:I
    :catchall_0
    move-exception v7

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2693
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 2694
    .local v2, e:Ljava/io/FileNotFoundException;
    sget-boolean v7, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v7, :cond_0

    const-string v7, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open move Uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2700
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    iget-object v7, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v7, :cond_1

    .line 2701
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    .line 2703
    :cond_1
    return-void

    .line 2688
    .restart local v1       #buffer:[B
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #len:I
    .restart local v6       #os:Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 2689
    .local v0, array:[B
    const/4 v7, 0x0

    array-length v8, v0

    invoke-static {v0, v7, v8}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v7

    iput-object v7, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovie:Landroid/graphics/Movie;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2691
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2695
    .end local v0           #array:[B
    .end local v1           #buffer:[B
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #len:I
    .end local v6           #os:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    .line 2696
    .local v2, e:Ljava/io/IOException;
    sget-boolean v7, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v7, :cond_0

    const-string v7, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException while accessing movie Uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIIILjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "callingFunction"

    .prologue
    const/4 v3, -0x1

    .line 374
    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    .line 375
    iput p4, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 376
    iput p5, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 377
    iput p6, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 378
    iput p7, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 379
    iput p8, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 384
    const-wide/16 v1, -0x65

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    if-gez p4, :cond_0

    instance-of v1, p0, Lcom/android/launcher2/Launcher;

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 386
    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 387
    iput v3, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 388
    iput v3, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 391
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 392
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 393
    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    const-string v1, "spanX"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    const-string v1, "spanY"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    :cond_1
    const-string v1, "screen"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    const-string v2, "secret"

    iget-boolean v1, p1, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    invoke-static {p0, v0, p1, p9}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    .line 410
    return-void

    .line 406
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 450
    .local v4, newPositions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/LauncherSettings$FavoritePos;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 451
    .local v2, item:Lcom/android/launcher2/HomeItem;
    new-instance v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$FavoritePos;-><init>()V

    .line 452
    .local v3, itemPos:Lcom/android/launcher2/LauncherSettings$FavoritePos;
    iget-wide v6, v2, Lcom/android/launcher2/HomeItem;->mId:J

    iput-wide v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    .line 453
    iget-wide v6, v2, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    .line 454
    iget v6, v2, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    .line 455
    iget v6, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellX:I

    .line 456
    iget v6, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellY:I

    .line 457
    iget-boolean v6, v2, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->secret:I

    .line 459
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 457
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 461
    .end local v2           #item:Lcom/android/launcher2/HomeItem;
    .end local v3           #itemPos:Lcom/android/launcher2/LauncherSettings$FavoritePos;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 462
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    new-instance v5, Lcom/android/launcher2/LauncherModel$5;

    invoke-direct {v5, v0, v4}, Lcom/android/launcher2/LauncherModel$5;-><init>(Lcom/android/launcher2/LauncherApplication;Ljava/util/ArrayList;)V

    .line 483
    .local v5, r:Ljava/lang/Runnable;
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 484
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 487
    :goto_2
    return-void

    .line 486
    :cond_2
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private restartLauncher()V
    .locals 2

    .prologue
    .line 1133
    const-string v0, "Launcher.Model"

    const-string v1, "restartLauncher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$10;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$10;-><init>(Lcom/android/launcher2/LauncherModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1156
    return-void
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .parameter "context"
    .parameter "title"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 536
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "title=? and intent=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 539
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 540
    .local v7, result:Z
    if-eqz v6, :cond_0

    .line 541
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 542
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 544
    :cond_0
    return v7
.end method

.method private startLoader(ZZ)V
    .locals 3
    .parameter "isLaunching"
    .parameter "forceRefresh"

    .prologue
    .line 1214
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLoader. isLaunching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; forceRefresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1219
    if-eqz p2, :cond_0

    .line 1220
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1227
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    or-int/2addr p1, v0

    .line 1228
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/LauncherModel$LoaderTask;-><init>(Lcom/android/launcher2/LauncherModel;Z)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 1229
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1230
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1232
    :cond_1
    monitor-exit v1

    .line 1233
    return-void

    .line 1232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private toggleEasyMode(IZ)V
    .locals 2
    .parameter "easyModeSwitch"
    .parameter "fromSettings"

    .prologue
    .line 2201
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/LauncherModel$11;-><init>(Lcom/android/launcher2/LauncherModel;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2230
    return-void
.end method

.method static updateAppItems(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .line 428
    .local v0, provider:Lcom/android/launcher2/LauncherProvider;
    new-instance v1, Lcom/android/launcher2/LauncherModel$4;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher2/LauncherModel$4;-><init>(Lcom/android/launcher2/LauncherProvider;Ljava/util/List;)V

    .line 434
    .local v1, r:Ljava/lang/Runnable;
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 435
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 438
    :goto_0
    return-void

    .line 437
    :cond_0
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "values"

    .prologue
    .line 499
    const-string v4, "container"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot change container field for item id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, msg:Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 503
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, p2, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v3

    .line 504
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 506
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/launcher2/LauncherModel$6;

    invoke-direct {v2, v0, v3, p3}, Lcom/android/launcher2/LauncherModel$6;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 514
    .local v2, r:Ljava/lang/Runnable;
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 515
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 518
    :goto_0
    return-void

    .line 517
    :cond_1
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 524
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 525
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p1, v0}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 526
    iget v1, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher2/HomeItem;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 527
    const-string v1, "updateItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method protected static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "values"
    .parameter "item"
    .parameter "callingFunction"

    .prologue
    .line 328
    iget-wide v4, p2, Lcom/android/launcher2/HomeItem;->mId:J

    .line 330
    .local v4, itemId:J
    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 331
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 333
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/launcher2/LauncherModel$3;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    .line 362
    .local v0, r:Ljava/lang/Runnable;
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 363
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateWorkspaceLayoutCells(II)V
    .locals 0
    .parameter "shortAxisCellCount"
    .parameter "longAxisCellCount"

    .prologue
    .line 739
    sput p0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    .line 740
    sput p1, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    .line 741
    return-void
.end method


# virtual methods
.method public HomeViewCount()I
    .locals 2

    .prologue
    .line 1160
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;
    .locals 8
    .parameter "context"
    .parameter "data"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 2924
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    .local v1, info:Lcom/android/launcher2/HomeShortcutItem;
    move-object v0, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 2930
    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 2932
    return-object v1
.end method

.method public dumpState()V
    .locals 4

    .prologue
    .line 3098
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallbacks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.added"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3100
    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.removed"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3101
    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.modified"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3104
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 3105
    .local v0, loader:Lcom/android/launcher2/LauncherModel$LoaderTask;
    if-eqz v0, :cond_0

    .line 3106
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->dumpState()V

    .line 3110
    :goto_0
    return-void

    .line 3108
    :cond_0
    const-string v1, "Launcher.Model"

    const-string v2, "mLoaderTask=null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 2192
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2193
    return-void
.end method

.method protected getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v0}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 16
    .parameter "context"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;J)",
            "Lcom/android/launcher2/HomeFolderItem;"
        }
    .end annotation

    .prologue
    .line 602
    .local p2, folderList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 603
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=? and itemType=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x1

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 609
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 610
    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 611
    .local v14, titleIndex:I
    const-string v3, "container"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 612
    .local v11, containerIndex:I
    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 613
    .local v13, screenIndex:I
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 614
    .local v9, cellXIndex:I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 616
    .local v10, cellYIndex:I
    invoke-static/range {p2 .. p4}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v12

    .line 617
    .local v12, folderInfo:Lcom/android/launcher2/HomeFolderItem;
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    .line 618
    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/android/launcher2/HomeFolderItem;->mId:J

    .line 619
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v12, Lcom/android/launcher2/HomeFolderItem;->container:J

    .line 620
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    .line 621
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    .line 622
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeFolderItem;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 630
    .end local v9           #cellXIndex:I
    .end local v10           #cellYIndex:I
    .end local v11           #containerIndex:I
    .end local v12           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    .end local v13           #screenIndex:I
    .end local v14           #titleIndex:I
    :goto_0
    return-object v12

    .line 627
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 630
    const/4 v12, 0x0

    goto :goto_0

    .line 627
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method protected getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"
    .parameter "context"

    .prologue
    .line 2913
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 2915
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2918
    :goto_0
    return-object v2

    .line 2917
    :catch_0
    move-exception v1

    .line 2918
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 8
    .parameter "manager"
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    .line 2455
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;III)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method protected getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;III)Lcom/android/launcher2/HomeShortcutItem;
    .locals 14
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"
    .parameter "secretIndex"

    .prologue
    .line 2466
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 2467
    .local v3, componentName:Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 2468
    const/4 v6, 0x0

    .line 2538
    :cond_0
    :goto_0
    return-object v6

    .line 2474
    :cond_1
    const/4 v6, 0x0

    .line 2475
    .local v6, info:Lcom/android/launcher2/HomeShortcutItem;
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 2489
    .local v10, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v10, :cond_7

    .line 2491
    :try_start_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2495
    .local v9, pkgName:Ljava/lang/String;
    const/16 v12, 0x2000

    invoke-virtual {p1, v9, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 2498
    .local v8, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2499
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_2

    iget v12, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x4

    and-int/2addr v12, v13

    if-eqz v12, :cond_2

    .line 2503
    new-instance v7, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v12, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v7, v12}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2504
    .end local v6           #info:Lcom/android/launcher2/HomeShortcutItem;
    .local v7, info:Lcom/android/launcher2/HomeShortcutItem;
    if-nez p4, :cond_5

    const/4 v12, 0x0

    :goto_1
    :try_start_1
    iput-object v12, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2505
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v12}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 2525
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v7           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v8           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v9           #pkgName:Ljava/lang/String;
    .restart local v6       #info:Lcom/android/launcher2/HomeShortcutItem;
    :cond_2
    :goto_2
    if-eqz v6, :cond_0

    .line 2527
    iget-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v12, :cond_3

    .line 2528
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2529
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    .line 2532
    :cond_3
    iget-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v12, :cond_4

    .line 2533
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2536
    :cond_4
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v12, v3}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v12

    iput v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    goto :goto_0

    .line 2504
    .end local v6           #info:Lcom/android/launcher2/HomeShortcutItem;
    .restart local v2       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v7       #info:Lcom/android/launcher2/HomeShortcutItem;
    .restart local v8       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v9       #pkgName:Ljava/lang/String;
    :cond_5
    :try_start_2
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    goto :goto_1

    .line 2507
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v7           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v8           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v9           #pkgName:Ljava/lang/String;
    .restart local v6       #info:Lcom/android/launcher2/HomeShortcutItem;
    :catch_0
    move-exception v5

    .line 2510
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    sget-boolean v12, Lcom/android/launcher2/Launcher;->isHomescreenRestoring:Z

    if-eqz v12, :cond_2

    .line 2511
    new-instance v6, Lcom/android/launcher2/HomeShortcutItem;

    .end local v6           #info:Lcom/android/launcher2/HomeShortcutItem;
    sget-object v12, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v6, v12}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 2512
    .restart local v6       #info:Lcom/android/launcher2/HomeShortcutItem;
    if-nez p4, :cond_6

    const/4 v12, 0x0

    :goto_4
    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2513
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0200c7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2514
    .local v4, d:Landroid/graphics/drawable/Drawable;
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v4, v12}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 2512
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 2519
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    new-instance v6, Lcom/android/launcher2/HomeShortcutItem;

    .end local v6           #info:Lcom/android/launcher2/HomeShortcutItem;
    sget-object v12, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v6, v12}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 2520
    .restart local v6       #info:Lcom/android/launcher2/HomeShortcutItem;
    new-instance v11, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v11}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 2521
    .local v11, titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v12, v11, v10}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V

    .line 2522
    iget-object v12, v11, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2523
    iget-object v12, v11, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    goto :goto_2

    .line 2507
    .end local v6           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v11           #titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    .restart local v2       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v7       #info:Lcom/android/launcher2/HomeShortcutItem;
    .restart local v8       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v9       #pkgName:Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v6, v7

    .end local v7           #info:Lcom/android/launcher2/HomeShortcutItem;
    .restart local v6       #info:Lcom/android/launcher2/HomeShortcutItem;
    goto :goto_3
.end method

.method protected getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 28
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"
    .parameter "manager"
    .parameter "intent"

    .prologue
    .line 2548
    const/4 v10, 0x0

    .line 2549
    .local v10, icon:Landroid/graphics/Bitmap;
    const/16 v24, 0x0

    .line 2554
    .local v24, title:Ljava/lang/String;
    invoke-virtual/range {p9 .. p9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 2555
    .local v8, cn:Landroid/content/ComponentName;
    if-eqz v8, :cond_8

    .line 2556
    const/16 v25, 0x0

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v21

    .line 2557
    .local v21, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v21, :cond_6

    .line 2558
    const/4 v15, 0x0

    .line 2559
    .local v15, isAppShortcut:Z
    const/16 v16, 0x0

    .line 2560
    .local v16, isExternalApp:Z
    const/4 v13, 0x0

    .line 2562
    .local v13, info:Lcom/android/launcher2/HomeShortcutItem;
    invoke-virtual/range {p9 .. p9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    .line 2563
    .local v7, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    .line 2564
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2565
    .local v6, cat:Ljava/lang/String;
    const-string v25, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 2566
    invoke-virtual/range {p9 .. p9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 2567
    .local v4, action:Ljava/lang/String;
    const-string v25, "android.intent.action.MAIN"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 2568
    const/4 v15, 0x1

    .line 2569
    sget-boolean v25, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v25, :cond_1

    const-string v25, "Launcher.Model"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "getShortcutInfo resolveInfo == null but not yet ready cn="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    .end local v4           #action:Ljava/lang/String;
    .end local v6           #cat:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz v15, :cond_2

    .line 2578
    :try_start_0
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 2582
    .local v20, pkgName:Ljava/lang/String;
    const/16 v25, 0x2000

    move-object/from16 v0, p8

    move-object/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    .line 2584
    .local v19, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v19, :cond_2

    .line 2585
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2586
    .local v5, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_2

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    const/high16 v26, 0x4

    and-int v25, v25, v26

    if-eqz v25, :cond_2

    .line 2590
    new-instance v14, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v25, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2591
    .end local v13           #info:Lcom/android/launcher2/HomeShortcutItem;
    .local v14, info:Lcom/android/launcher2/HomeShortcutItem;
    if-nez p1, :cond_4

    const/16 v25, 0x0

    :goto_0
    :try_start_1
    move-object/from16 v0, v25

    iput-object v0, v14, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v14, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2593
    const/16 v16, 0x1

    move-object v13, v14

    .line 2602
    .end local v5           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v14           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v19           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v20           #pkgName:Ljava/lang/String;
    .restart local v13       #info:Lcom/android/launcher2/HomeShortcutItem;
    :cond_2
    :goto_1
    if-eqz v16, :cond_5

    .line 2673
    .end local v7           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v15           #isAppShortcut:Z
    .end local v16           #isExternalApp:Z
    .end local v21           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    :goto_2
    return-object v13

    .line 2591
    .restart local v5       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v7       #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14       #info:Lcom/android/launcher2/HomeShortcutItem;
    .restart local v15       #isAppShortcut:Z
    .restart local v16       #isExternalApp:Z
    .restart local v19       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v20       #pkgName:Ljava/lang/String;
    .restart local v21       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v25

    goto :goto_0

    .line 2605
    .end local v5           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v14           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v19           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v20           #pkgName:Ljava/lang/String;
    .restart local v13       #info:Lcom/android/launcher2/HomeShortcutItem;
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 2611
    .end local v7           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v15           #isAppShortcut:Z
    .end local v16           #isExternalApp:Z
    :cond_6
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "com.android.email"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_8

    const-string v25, "com.android.settings.SHORTCUT"

    move-object/from16 v0, p9

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_7

    const-string v25, "android.intent.category.LAUNCHER"

    move-object/from16 v0, p9

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 2614
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PkgResCache;->getTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v24

    .line 2617
    .end local v21           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_8
    new-instance v13, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v13}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    .line 2619
    .restart local v13       #info:Lcom/android/launcher2/HomeShortcutItem;
    if-nez v24, :cond_9

    .line 2620
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 2622
    :cond_9
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2624
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2625
    .local v11, iconType:I
    packed-switch v11, :pswitch_data_0

    .line 2660
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2661
    const/16 v25, 0x1

    move/from16 v0, v25

    iput-boolean v0, v13, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    .line 2662
    const/16 v25, 0x0

    move/from16 v0, v25

    iput-boolean v0, v13, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2665
    :cond_a
    :goto_3
    invoke-virtual {v13, v10}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2667
    const-string v25, "iconMovieUri"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2668
    .local v17, movieUri:Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 2669
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v13, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    .line 2670
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/launcher2/LauncherModel;->loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V

    goto/16 :goto_2

    .line 2627
    .end local v17           #movieUri:Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2628
    .local v18, packageName:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2629
    .local v22, resourceName:Ljava/lang/String;
    const/16 v25, 0x0

    move/from16 v0, v25

    iput-boolean v0, v13, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2632
    :try_start_2
    move-object/from16 v0, p8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v23

    .line 2633
    .local v23, resources:Landroid/content/res/Resources;
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 2634
    .local v12, id:I
    if-eqz v12, :cond_b

    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v12, v2}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    .line 2640
    .end local v12           #id:I
    .end local v23           #resources:Landroid/content/res/Resources;
    :cond_b
    :goto_4
    if-nez v10, :cond_c

    .line 2641
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2644
    :cond_c
    if-nez v10, :cond_a

    .line 2645
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2646
    const/16 v25, 0x1

    move/from16 v0, v25

    iput-boolean v0, v13, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto :goto_3

    .line 2650
    .end local v18           #packageName:Ljava/lang/String;
    .end local v22           #resourceName:Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2651
    if-nez v10, :cond_d

    .line 2652
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2653
    const/16 v25, 0x0

    move/from16 v0, v25

    iput-boolean v0, v13, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2654
    const/16 v25, 0x1

    move/from16 v0, v25

    iput-boolean v0, v13, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_3

    .line 2656
    :cond_d
    const/16 v25, 0x1

    move/from16 v0, v25

    iput-boolean v0, v13, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    goto/16 :goto_3

    .line 2636
    .restart local v18       #packageName:Ljava/lang/String;
    .restart local v22       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v25

    goto :goto_4

    .line 2596
    .end local v11           #iconType:I
    .end local v18           #packageName:Ljava/lang/String;
    .end local v22           #resourceName:Ljava/lang/String;
    .restart local v7       #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15       #isAppShortcut:Z
    .restart local v16       #isExternalApp:Z
    .restart local v21       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v25

    goto/16 :goto_1

    .end local v13           #info:Lcom/android/launcher2/HomeShortcutItem;
    .restart local v5       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v14       #info:Lcom/android/launcher2/HomeShortcutItem;
    .restart local v19       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v20       #pkgName:Ljava/lang/String;
    :catch_2
    move-exception v25

    move-object v13, v14

    .end local v14           #info:Lcom/android/launcher2/HomeShortcutItem;
    .restart local v13       #info:Lcom/android/launcher2/HomeShortcutItem;
    goto/16 :goto_1

    .line 2625
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;
    .locals 9
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    .line 2707
    const-string v6, "Launcher.Model"

    const-string v7, "getShortcutInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2709
    .local v0, componentName:Landroid/content/ComponentName;
    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getShortcutInfo componentName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p1, p2, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2711
    .local v3, rInfo:Landroid/content/pm/ResolveInfo;
    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v6, :cond_1

    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getShortcutInfo rInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    :cond_1
    if-nez v3, :cond_5

    .line 2715
    if-nez v0, :cond_2

    .line 2716
    const/4 v1, 0x0

    .line 2784
    :goto_0
    return-object v1

    .line 2718
    :cond_2
    const/4 v5, 0x0

    .line 2720
    .local v5, unmounted:Z
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-virtual {p1, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    .line 2728
    :goto_1
    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v6, :cond_3

    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getShortcutInfo unmounted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    :cond_3
    if-nez v5, :cond_5

    .line 2730
    const/4 v1, 0x0

    goto :goto_0

    .line 2720
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 2736
    .end local v5           #unmounted:Z
    :cond_5
    new-instance v1, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v1, v6}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 2737
    .local v1, info:Lcom/android/launcher2/HomeShortcutItem;
    new-instance v4, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v4}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 2738
    .local v4, titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    iget-object v6, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v6, v4, p2}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    .line 2742
    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v6, :cond_6

    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "info.mTitle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    :cond_6
    iget-object v6, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_7

    .line 2745
    if-eqz p4, :cond_7

    .line 2746
    invoke-virtual {p0, p4, p5, p3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2749
    :cond_7
    iget-object v6, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_8

    .line 2750
    iget-object v6, v4, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v6, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2753
    :cond_8
    iget-object v6, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_9

    .line 2754
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2755
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    .line 2760
    :cond_9
    iget-object v6, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v6, :cond_b

    .line 2761
    if-eqz p4, :cond_b

    .line 2762
    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v6, :cond_a

    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "info.mTitle from DB = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :cond_a
    invoke-interface {p4, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2767
    :cond_b
    iget-object v6, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v6, :cond_c

    .line 2768
    iget-object v6, v4, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2771
    :cond_c
    iget-object v6, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v6, :cond_e

    .line 2772
    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v6, :cond_d

    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "info.mTitle from PM = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    :cond_d
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2776
    :cond_e
    if-eqz p4, :cond_f

    .line 2777
    const-string v6, "iconMovieUri"

    invoke-interface {p4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2778
    .local v2, movieUri:Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 2779
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    .line 2780
    invoke-static {p3, v1}, Lcom/android/launcher2/LauncherModel;->loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V

    .line 2783
    .end local v2           #movieUri:Ljava/lang/String;
    :cond_f
    iget-object v6, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v6, v0}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    goto/16 :goto_0

    .line 2724
    .end local v1           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v4           #titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    .restart local v5       #unmounted:Z
    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method

.method protected getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IIIII)Lcom/android/launcher2/HomeShortcutItem;
    .locals 18
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    .line 2790
    const-string v15, "Launcher.Model"

    const-string v16, "getShortcutInfo"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 2792
    .local v4, componentName:Landroid/content/ComponentName;
    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_0

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getShortcutInfo componentName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 2794
    .local v10, rInfo:Landroid/content/pm/ResolveInfo;
    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_1

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getShortcutInfo rInfo="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    :cond_1
    if-nez v10, :cond_5

    .line 2798
    if-nez v4, :cond_2

    .line 2799
    const/4 v7, 0x0

    .line 2904
    :goto_0
    return-object v7

    .line 2801
    :cond_2
    const/4 v14, 0x0

    .line 2803
    .local v14, unmounted:Z
    :try_start_0
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2000

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/high16 v16, 0x4

    and-int v15, v15, v16

    if-eqz v15, :cond_4

    const/4 v14, 0x1

    .line 2811
    :goto_1
    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_3

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getShortcutInfo unmounted="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :cond_3
    if-nez v14, :cond_5

    .line 2813
    const/4 v7, 0x0

    goto :goto_0

    .line 2803
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 2819
    .end local v14           #unmounted:Z
    :cond_5
    new-instance v7, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v7}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    .line 2820
    .local v7, info:Lcom/android/launcher2/HomeShortcutItem;
    new-instance v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v13}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 2821
    .local v13, titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, p2

    invoke-virtual {v15, v13, v0}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    .line 2825
    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_6

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "info.mTitle = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    :cond_6
    invoke-interface/range {p4 .. p5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2828
    .local v5, iconType:I
    packed-switch v5, :pswitch_data_0

    .line 2869
    iget-object v15, v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2870
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_7

    .line 2871
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2872
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    .line 2873
    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2881
    :cond_7
    :goto_2
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v15, :cond_9

    .line 2882
    if-eqz p4, :cond_9

    .line 2883
    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_8

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "info.mTitle from DB = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    :cond_8
    move-object/from16 v0, p4

    move/from16 v1, p9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2888
    :cond_9
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v15, :cond_a

    .line 2889
    iget-object v15, v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2892
    :cond_a
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v15, :cond_c

    .line 2893
    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_b

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "info.mTitle from PM = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    :cond_b
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2896
    :cond_c
    if-eqz p4, :cond_d

    .line 2897
    const-string v15, "iconMovieUri"

    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2898
    .local v8, movieUri:Ljava/lang/String;
    if-eqz v8, :cond_d

    .line 2899
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    .line 2900
    move-object/from16 v0, p3

    invoke-static {v0, v7}, Lcom/android/launcher2/LauncherModel;->loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V

    .line 2903
    .end local v8           #movieUri:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v15, v4}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v15

    iput v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    goto/16 :goto_0

    .line 2830
    :pswitch_0
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2831
    .local v9, packageName:Ljava/lang/String;
    move-object/from16 v0, p4

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2832
    .local v11, resourceName:Ljava/lang/String;
    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2835
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 2836
    .local v12, resources:Landroid/content/res/Resources;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v11, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2837
    .local v6, id:I
    if-eqz v6, :cond_e

    .line 2838
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v15, v12, v6, v11}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2843
    .end local v6           #id:I
    .end local v12           #resources:Landroid/content/res/Resources;
    :cond_e
    :goto_3
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_f

    .line 2844
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2846
    :cond_f
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_10

    .line 2847
    iget-object v15, v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2850
    :cond_10
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_7

    .line 2851
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2852
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_2

    .line 2856
    .end local v9           #packageName:Ljava/lang/String;
    .end local v11           #resourceName:Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2857
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_11

    .line 2858
    iget-object v15, v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2860
    :cond_11
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_12

    .line 2861
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2862
    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2863
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_2

    .line 2865
    :cond_12
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    goto/16 :goto_2

    .line 2839
    .restart local v9       #packageName:Ljava/lang/String;
    .restart local v11       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v15

    goto :goto_3

    .line 2807
    .end local v5           #iconType:I
    .end local v7           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v11           #resourceName:Ljava/lang/String;
    .end local v13           #titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    .restart local v14       #unmounted:Z
    :catch_1
    move-exception v15

    goto/16 :goto_1

    .line 2828
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasLocaleChanged()Z
    .locals 2

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected hasLocaleChangedLocked()Z
    .locals 5

    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 262
    .local v1, config:Landroid/content/res/Configuration;
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    iget v3, v1, Landroid/content/res/Configuration;->mcc:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    iget v3, v1, Landroid/content/res/Configuration;->mnc:I

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 267
    .local v0, changed:Z
    :goto_0
    sget-boolean v2, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    .line 268
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasLocaleChangedLocked. mcc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; mnc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; return: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    return v0

    .line 262
    .end local v0           #changed:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 17
    .parameter "context"
    .parameter "data"
    .parameter "fallbackIcon"

    .prologue
    .line 2936
    const-string v14, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    .line 2937
    .local v10, intent:Landroid/content/Intent;
    const-string v14, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2938
    .local v11, name:Ljava/lang/String;
    const-string v14, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 2940
    .local v1, bitmap:Landroid/os/Parcelable;
    const/4 v6, 0x0

    .line 2941
    .local v6, icon:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 2942
    .local v3, customIcon:Z
    const/4 v7, 0x0

    .line 2944
    .local v7, iconResource:Landroid/content/Intent$ShortcutIconResource;
    instance-of v14, v1, Landroid/graphics/Bitmap;

    if-eqz v14, :cond_5

    .line 2945
    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #bitmap:Landroid/os/Parcelable;
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2946
    const/4 v3, 0x1

    .line 2964
    :cond_0
    :goto_0
    new-instance v9, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v9}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    .line 2966
    .local v9, info:Lcom/android/launcher2/HomeShortcutItem;
    if-nez v6, :cond_1

    .line 2967
    if-eqz p3, :cond_6

    .line 2968
    move-object/from16 v6, p3

    .line 2974
    :cond_1
    :goto_1
    invoke-virtual {v9, v6}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2976
    const-string v14, "photoUri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    iput-object v14, v9, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    .line 2977
    iget-object v14, v9, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    if-eqz v14, :cond_2

    .line 2978
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/launcher2/LauncherModel;->loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V

    .line 2980
    :cond_2
    iput-object v11, v9, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2981
    iput-object v10, v9, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 2982
    iput-boolean v3, v9, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2983
    iput-object v7, v9, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2984
    sget-boolean v14, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v14, :cond_3

    .line 2985
    const-string v14, "Launcher.Model"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "title: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", intent: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", customIcon: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", iconResource: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    :cond_3
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2989
    .local v2, cn:Landroid/content/ComponentName;
    if-eqz v2, :cond_4

    .line 2990
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v14, v2}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v14

    iput v14, v9, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    .line 2992
    :cond_4
    return-object v9

    .line 2948
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v9           #info:Lcom/android/launcher2/HomeShortcutItem;
    .restart local v1       #bitmap:Landroid/os/Parcelable;
    :cond_5
    const-string v14, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 2949
    .local v5, extra:Landroid/os/Parcelable;
    if-eqz v5, :cond_0

    instance-of v14, v5, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v14, :cond_0

    .line 2951
    :try_start_0
    move-object v0, v5

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v7, v0

    .line 2952
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 2953
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    iget-object v14, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 2955
    .local v13, resources:Landroid/content/res/Resources;
    iget-object v14, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2956
    .local v8, id:I
    if-eqz v8, :cond_0

    .line 2957
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v15, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v14, v13, v8, v15}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 2958
    .end local v8           #id:I
    .end local v12           #packageManager:Landroid/content/pm/PackageManager;
    .end local v13           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    .line 2959
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v14, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v14, :cond_0

    const-string v14, "Launcher.Model"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not load shortcut icon: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2970
    .end local v1           #bitmap:Landroid/os/Parcelable;
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #extra:Landroid/os/Parcelable;
    .restart local v9       #info:Lcom/android/launcher2/HomeShortcutItem;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2971
    const/4 v14, 0x1

    iput-boolean v14, v9, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_1
.end method

.method public initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 3
    .parameter "callbacks"

    .prologue
    .line 887
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 888
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 889
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->onLocaleChanged()V

    .line 892
    const-string v0, "Launcher.Model"

    const-string v2, "MenuAppModel.onLocaleChanged called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_0
    monitor-exit v1

    .line 895
    return-void

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 41
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 905
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "onReceive intent="

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 909
    .local v13, action:Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 912
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v31

    .line 913
    .local v31, packageName:Ljava/lang/String;
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v34

    .line 915
    .local v34, replacing:Z
    const/16 v30, 0x0

    .line 917
    .local v30, op:I
    if-eqz v31, :cond_2

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1130
    .end local v30           #op:I
    .end local v31           #packageName:Ljava/lang/String;
    .end local v34           #replacing:Z
    :cond_2
    :goto_0
    return-void

    .line 922
    .restart local v30       #op:I
    .restart local v31       #packageName:Ljava/lang/String;
    .restart local v34       #replacing:Z
    :cond_3
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 923
    const/16 v30, 0x2

    .line 1013
    :cond_4
    :goto_1
    if-eqz v30, :cond_2

    .line 1014
    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/16 v40, 0x0

    aput-object v31, v7, v40

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v3, v0, v1, v7}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    .line 1015
    sget-object v29, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 1016
    .local v29, mgr:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->clearWidgets()V

    .line 1021
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 1023
    .local v36, swCount:I
    const/16 v26, 0x0

    .local v26, i:I
    :goto_2
    move/from16 v0, v26

    move/from16 v1, v36

    if-ge v0, v1, :cond_2

    .line 1024
    :try_start_0
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 1025
    .local v39, widget:Lcom/android/launcher2/SurfaceWidgetItem;
    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/SurfaceWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v7}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v37

    .line 1026
    .local v37, swpinfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    if-eqz v37, :cond_5

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v3, :cond_5

    .line 1027
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-object/from16 v0, v37

    iget v7, v0, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    iput v7, v3, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1023
    :cond_5
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 924
    .end local v26           #i:I
    .end local v29           #mgr:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .end local v36           #swCount:I
    .end local v37           #swpinfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .end local v39           #widget:Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_6
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 925
    if-nez v34, :cond_4

    .line 926
    const/16 v30, 0x3

    goto :goto_1

    .line 930
    :cond_7
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 931
    if-nez v34, :cond_c

    .line 933
    const-string v3, "ExtraStuff"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v33

    .line 934
    .local v33, pref2:Landroid/content/SharedPreferences;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 935
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "container=? and pkgName=?"

    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v40, -0x64

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v6, v7

    const/4 v7, 0x1

    aput-object v31, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 941
    .local v15, c:Landroid/database/Cursor;
    const/4 v9, -0x1

    .line 943
    .local v9, Screen:I
    :cond_8
    :goto_3
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 944
    invoke-interface/range {v33 .. v33}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v7, "replace"

    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-interface {v3, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 945
    const-string v3, "screen"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 948
    const-string v3, "itemType"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 951
    .local v38, type:Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v7, 0x4

    if-eq v3, v7, :cond_9

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v7, 0x384

    if-eq v3, v7, :cond_9

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v7, 0x385

    if-ne v3, v7, :cond_8

    .line 954
    :cond_9
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 957
    .local v27, id:I
    const-string v3, "spanX"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 960
    .local v10, SpanX:I
    const-string v3, "spanY"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 963
    .local v11, SpanY:I
    const-string v3, "cellX"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 966
    .local v17, cellX:I
    const-string v3, "cellY"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 970
    .local v18, cellY:I
    const-string v3, "intent"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 974
    .local v20, compName:Ljava/lang/String;
    const-string v3, ":"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 975
    .local v35, str_array:[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v19, v35, v3

    .line 977
    .local v19, clsName:Ljava/lang/String;
    new-instance v28, Landroid/content/Intent;

    invoke-direct/range {v28 .. v28}, Landroid/content/Intent;-><init>()V

    .line 978
    .local v28, intentor:Landroid/content/Intent;
    const-string v3, "com.android.launcher.action.INSTALL_WIDGET"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    const-string v3, "package"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    const-string v3, "class"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 981
    const-string v3, "type"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 982
    const-string v3, "cellX"

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 983
    const-string v3, "cellY"

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 984
    const-string v3, "spanX"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 985
    const-string v3, "spanY"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 986
    const-string v3, "screen"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 987
    const/4 v3, 0x0

    const/high16 v7, 0x800

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v3, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 991
    .local v14, alarmIntent:Landroid/app/PendingIntent;
    :try_start_1
    invoke-virtual {v14}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 996
    :goto_4
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "_id = "

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v40, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v2, v3, v7, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3

    .line 992
    :catch_0
    move-exception v22

    .line 993
    .local v22, e:Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1002
    .end local v10           #SpanX:I
    .end local v11           #SpanY:I
    .end local v14           #alarmIntent:Landroid/app/PendingIntent;
    .end local v17           #cellX:I
    .end local v18           #cellY:I
    .end local v19           #clsName:Ljava/lang/String;
    .end local v20           #compName:Ljava/lang/String;
    .end local v22           #e:Ljava/lang/Exception;
    .end local v27           #id:I
    .end local v28           #intentor:Landroid/content/Intent;
    .end local v35           #str_array:[Ljava/lang/String;
    .end local v38           #type:Ljava/lang/String;
    :cond_a
    const/4 v3, -0x1

    if-eq v9, v3, :cond_b

    .line 1003
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherModel;->setRefreshRequired(Z)V

    .line 1004
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    .line 1007
    :cond_b
    const/16 v30, 0x1

    .line 1008
    goto/16 :goto_1

    .line 1009
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v9           #Screen:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v33           #pref2:Landroid/content/SharedPreferences;
    :cond_c
    const/16 v30, 0x2

    goto/16 :goto_1

    .line 1029
    .restart local v26       #i:I
    .restart local v29       #mgr:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .restart local v36       #swCount:I
    :catch_1
    move-exception v22

    .line 1030
    .local v22, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    .line 1034
    .end local v22           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v26           #i:I
    .end local v29           #mgr:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .end local v30           #op:I
    .end local v31           #packageName:Ljava/lang/String;
    .end local v34           #replacing:Z
    .end local v36           #swCount:I
    :cond_d
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1035
    const-string v3, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 1036
    .local v32, packages:[Ljava/lang/String;
    if-eqz v32, :cond_2

    .line 1040
    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v7, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v3, v0, v7, v1}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0

    .line 1041
    .end local v32           #packages:[Ljava/lang/String;
    :cond_e
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1042
    const-string v3, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 1043
    .restart local v32       #packages:[Ljava/lang/String;
    if-eqz v32, :cond_2

    .line 1047
    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v3, v0, v7, v1}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0

    .line 1049
    .end local v32           #packages:[Ljava/lang/String;
    :cond_f
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1052
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1053
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    goto/16 :goto_0

    .line 1055
    :cond_10
    const-string v3, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1057
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 1058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1059
    .local v16, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v16, :cond_2

    .line 1060
    invoke-interface/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindSearchablesChanged()V

    goto/16 :goto_0

    .line 1064
    .end local v16           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_12
    const-string v3, "com.android.launcher.action.DYNAMICCSC_MODE_CHANGE"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_Launcher_DynamicCSCFeature"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1070
    const-string v3, "dynamicmode"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1071
    .local v4, dynamicMode:Z
    const-string v3, "dynamicmode_from"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1072
    .local v24, from:Ljava/lang/String;
    const-string v3, "theme_install_status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1073
    .local v8, theme_install_status:Ljava/lang/String;
    const-string v3, "basicEasymode"

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1074
    .local v6, basicEasymode:I
    const-string v3, "dynamic_csc"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1075
    .local v5, fromSettings:Z
    const-string v3, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "EASY MODE SWITCH easyMode: "

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v40, " fromSettings :"

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    .line 1076
    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/LauncherModel;->dynamicCscToggleEasyMode(ZZILandroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1085
    .end local v4           #dynamicMode:Z
    .end local v5           #fromSettings:Z
    .end local v6           #basicEasymode:I
    .end local v8           #theme_install_status:Ljava/lang/String;
    .end local v24           #from:Ljava/lang/String;
    :cond_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_RIL_FixedStkMenu"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "android.intent.action.STK_TITLE_IS_LOADED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1087
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_Launcher_FixedStkTitleAs"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1088
    .local v23, fixedStkTitle:Ljava/lang/String;
    const-string v3, "gsm.STK_SETUP_MENU"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1090
    .local v12, StkTitlefromSIM:Ljava/lang/String;
    if-eqz v23, :cond_14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1095
    :cond_14
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v31

    .line 1101
    .restart local v31       #packageName:Ljava/lang/String;
    if-eqz v31, :cond_2

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1106
    const/16 v30, 0x2

    .line 1107
    .restart local v30       #op:I
    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/16 v40, 0x0

    aput-object v31, v7, v40

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v3, v0, v1, v7}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    .line 1108
    sget-object v29, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 1109
    .restart local v29       #mgr:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->clearWidgets()V

    goto/16 :goto_0

    .line 1111
    .end local v12           #StkTitlefromSIM:Ljava/lang/String;
    .end local v23           #fixedStkTitle:Ljava/lang/String;
    .end local v29           #mgr:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .end local v30           #op:I
    .end local v31           #packageName:Ljava/lang/String;
    :cond_15
    const-string v3, "android.intent.action.CSC_CHAMELEON_UPDATE_LAUNCHER"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1112
    const-string v3, "delete_db"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 1113
    .local v21, deleteDB:Z
    const-string v3, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Received CSC_CHAMELEON_UPDATE_LAUNCHER intent :: "

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    if-eqz v21, :cond_2

    .line 1115
    const-string v3, "launcher.db"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1116
    const-string v3, "Launcher.Model"

    const-string v7, "Launcher Database deleted successfully"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 1120
    new-instance v25, Landroid/content/Intent;

    const-class v3, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1121
    .local v25, home:Landroid/content/Intent;
    const/high16 v3, 0x1400

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1122
    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    const/high16 v3, 0x20

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1124
    const-string v3, "android.intent.category.HOME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1125
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1127
    .end local v25           #home:Landroid/content/Intent;
    :cond_16
    const-string v3, "Launcher.Model"

    const-string v7, "Unable to delete launcher database"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    .locals 2
    .parameter
    .parameter "info"
    .parameter "c"
    .parameter "iconIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/android/launcher2/HomeShortcutItem;",
            "Landroid/database/Cursor;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;[B>;"
    const/4 v0, 0x0

    .line 2998
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    if-nez v1, :cond_1

    .line 3011
    :cond_0
    :goto_0
    return v0

    .line 3007
    :cond_1
    iget-boolean v1, p2, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    if-nez v1, :cond_0

    .line 3008
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3009
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reloadBadges()V
    .locals 3

    .prologue
    .line 3058
    const-string v1, "Launcher.Model"

    const-string v2, "reloadBadges entered."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    new-instance v0, Lcom/android/launcher2/LauncherModel$13;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$13;-><init>(Lcom/android/launcher2/LauncherModel;)V

    .line 3090
    .local v0, r:Ljava/lang/Runnable;
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 3091
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3095
    :goto_0
    return-void

    .line 3093
    :cond_0
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected setLocaleLocked()V
    .locals 4

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 283
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    .line 284
    iget v1, v0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    .line 285
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    .line 286
    sget-boolean v1, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 287
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocaleLocked. mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    return-void
.end method

.method public setRefreshRequired(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 3114
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    .line 3115
    return-void
.end method

.method public startLoader()V
    .locals 2

    .prologue
    .line 1209
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/LauncherModel;->startLoader(ZZ)V

    .line 1210
    return-void
.end method

.method public startLoader(Z)V
    .locals 0
    .parameter "isSecret"

    .prologue
    .line 1236
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->startLoader()V

    .line 1237
    return-void
.end method

.method public startLoaderFromBackground(Z)V
    .locals 3
    .parameter "forceRefresh"

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1179
    .local v0, cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1180
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/LauncherModel;->startLoader(ZZ)V

    .line 1191
    :goto_1
    return-void

    .line 1178
    .end local v0           #cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v0, v1

    goto :goto_0

    .line 1182
    .restart local v0       #cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1183
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    .line 1186
    if-eqz p1, :cond_2

    .line 1187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    .line 1189
    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected stopLoaderLocked()Z
    .locals 3

    .prologue
    .line 1196
    const/4 v0, 0x0

    .line 1197
    .local v0, isLaunching:Z
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 1198
    .local v1, oldTask:Lcom/android/launcher2/LauncherModel$LoaderTask;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 1199
    if-eqz v1, :cond_1

    .line 1200
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1201
    const/4 v0, 0x1

    .line 1203
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->stopLocked()V

    .line 1205
    :cond_1
    return v0
.end method

.method public triggerToggleEasyMode(IZ)V
    .locals 0
    .parameter "easyModeSwitch"
    .parameter "fromSettings"

    .prologue
    .line 2196
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->toggleEasyMode(IZ)V

    .line 2197
    return-void
.end method

.method public unbindAllHomeItems()V
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$1;-><init>(Lcom/android/launcher2/LauncherModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method

.method protected unbindAllHomeItemsOnMainThread()V
    .locals 3

    .prologue
    .line 299
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 300
    .local v0, allHomeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherModel$2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherModel$2;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method protected updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V
    .locals 7
    .parameter "context"
    .parameter "info"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 3015
    const/4 v2, 0x0

    .line 3017
    .local v2, needSave:Z
    if-eqz p3, :cond_3

    .line 3018
    const/4 v5, 0x0

    :try_start_0
    array-length v6, p3

    invoke-static {p3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3019
    .local v3, saved:Landroid/graphics/Bitmap;
    iget-object v1, p2, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 3020
    .local v1, loaded:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    .line 3027
    .end local v1           #loaded:Landroid/graphics/Bitmap;
    .end local v3           #saved:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v2, :cond_1

    .line 3028
    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "going to save icon bitmap for info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    :cond_0
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 3033
    :cond_1
    return-void

    .restart local v1       #loaded:Landroid/graphics/Bitmap;
    .restart local v3       #saved:Landroid/graphics/Bitmap;
    :cond_2
    move v2, v4

    .line 3020
    goto :goto_0

    .line 3022
    .end local v1           #loaded:Landroid/graphics/Bitmap;
    .end local v3           #saved:Landroid/graphics/Bitmap;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 3024
    :catch_0
    move-exception v0

    .line 3025
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_0
.end method
