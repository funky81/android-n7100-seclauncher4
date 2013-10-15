.class public Lcom/android/launcher2/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field public static final ACTION_DYNAMICCSC_MODE:Ljava/lang/String; = "com.android.launcher.action.DYNAMICCSC_MODE_CHANGE"

.field public static final ACTION_EASY_MODE:Ljava/lang/String; = "com.android.launcher.action.EASY_MODE_CHANGE"

.field static final PREFERENCES_SCREENCOUNT:Ljava/lang/String; = "screencount"

.field private static final PREFERENCES_SCREENCOUNT_EASY:Ljava/lang/String; = "screencount.simple"

.field static final PREFERENCES_SCREENCOUNT_SECRET:Ljava/lang/String; = "screencount.secret"

.field static final PREFERENCES_SCREENINDEX:Ljava/lang/String; = "homescreenindex"

.field private static final PREFERENCES_SCREENINDEX_EASY:Ljava/lang/String; = "homescreenindex.simple"

.field static final PREFERENCES_SCREENINDEX_SECRET:Ljava/lang/String; = "homescreenindex.secret"

.field static final PREFERENCES_SCREENMODE_FOR_SECRET:Ljava/lang/String; = "screenmode.secret"

.field public static final SHOW_DEFAULT_WALLPAPER_KEY:Ljava/lang/String; = "SHOW_DEFAULT_WALLPAPER"

.field public static final SHOW_EMPTY_PAGE_MSG_KEY:Ljava/lang/String; = "SHOW_EMPTY_PAGE_MSG"

.field public static final SHOW_MAGAZINE_CLING_MSG_KEY:Ljava/lang/String; = "SHOW_MAGAZINE_CLING_MSG"

.field private static final TAG:Ljava/lang/String; = "LauncherApplication"

.field private static sHasMenuKey:Z

.field private static sInst:Lcom/android/launcher2/LauncherApplication;

.field private static sIsAppsListAllowed:Z

.field private static sIsDeleteDropTargetTextRight:Z

.field private static sIsDeleteDropTargetTop:Z

.field private static sIsLargeTabletLayout:Z

.field private static sIsScreenLarge:Z

.field private static sIsScreenSmall:Z

.field private static sIsTabletLayout:Z

.field private static sIsUsingMoreLineinFolder:Z

.field private static sIsWidgetSearchTextColorLight:Z

.field private static sLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private static sLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field

.field public static sMagazineLauncher:Z

.field private static sMaxScreenCount:I

.field private static sMaxSecretScreenCount:I

.field private static sMenuIconSize:I

.field private static sScreenCountEasy:I

.field private static sScreenCountNormal:I

.field private static sScreenCountSecret:I

.field private static sScreenDensity:F

.field private static sScreenIndexEasy:I

.field private static sScreenIndexNormal:I

.field private static sScreenModeForSecret:I

.field public static final sSecretPageLauncher:Z


# instance fields
.field private cpuBooster:Landroid/os/DVFSHelper;

.field private cpuMaxBooster:Landroid/os/DVFSHelper;

.field private gpuBooster:Landroid/os/DVFSHelper;

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mFactoryModeString:Ljava/lang/String;

.field private final mFavoritesObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIsFactoryMode:Z

.field private mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mThemeLoader:Lcom/android/launcher2/ThemeLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    .line 142
    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->cpuBooster:Landroid/os/DVFSHelper;

    .line 143
    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->cpuMaxBooster:Landroid/os/DVFSHelper;

    .line 144
    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    .line 496
    new-instance v0, Lcom/android/launcher2/LauncherApplication$1;

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$1;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 506
    new-instance v0, Lcom/android/launcher2/LauncherApplication$2;

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$2;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    .line 158
    sput-object p0, Lcom/android/launcher2/LauncherApplication;->sInst:Lcom/android/launcher2/LauncherApplication;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/LauncherModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static getHomeScreenIndex()I
    .locals 1

    .prologue
    .line 615
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isNormalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 618
    :goto_0
    return v0

    .line 616
    :cond_0
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    goto :goto_0

    .line 618
    :cond_1
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    goto :goto_0
.end method

.method public static getInst()Lcom/android/launcher2/LauncherApplication;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sInst:Lcom/android/launcher2/LauncherApplication;

    return-object v0
.end method

.method public static getMaxScreenCount()I
    .locals 1

    .prologue
    .line 749
    sget v0, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    return v0
.end method

.method public static getMaxSecretScreenCount()I
    .locals 1

    .prologue
    .line 759
    sget v0, Lcom/android/launcher2/LauncherApplication;->sMaxSecretScreenCount:I

    return v0
.end method

.method public static getScreenCount()I
    .locals 1

    .prologue
    .line 672
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isNormalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 675
    :goto_0
    return v0

    .line 673
    :cond_0
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    goto :goto_0

    .line 675
    :cond_1
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    goto :goto_0
.end method

.method public static getScreenDensity()F
    .locals 1

    .prologue
    .line 601
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenDensity:F

    return v0
.end method

.method public static getScreenModeForSecret()I
    .locals 1

    .prologue
    .line 744
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenModeForSecret:I

    return v0
.end method

.method public static getSecretScreenCount()I
    .locals 1

    .prologue
    .line 680
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    return v0
.end method

.method public static getSmallestWidth()I
    .locals 1

    .prologue
    .line 605
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v0
.end method

.method public static hasMenuKey()Z
    .locals 1

    .prologue
    .line 564
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sHasMenuKey:Z

    return v0
.end method

.method public static isAppsListAllowed()Z
    .locals 1

    .prologue
    .line 588
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsAppsListAllowed:Z

    return v0
.end method

.method public static isDeleteDropTargetTextRight()Z
    .locals 1

    .prologue
    .line 584
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsDeleteDropTargetTextRight:Z

    return v0
.end method

.method public static isDeleteDropTargetTop()Z
    .locals 1

    .prologue
    .line 580
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsDeleteDropTargetTop:Z

    return v0
.end method

.method private isFactoryMode()Z
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFactoryModeString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 412
    const-string v0, "/efs/FactoryApp/factorymode"

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherApplication;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFactoryModeString:Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFactoryModeString:Ljava/lang/String;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherApplication;->mIsFactoryMode:Z

    .line 415
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherApplication;->mIsFactoryMode:Z

    return v0

    .line 413
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFactorySim()Z
    .locals 5

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 459
    .local v2, tm:Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 460
    .local v0, IMSI:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, imsi:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    const/4 v3, 0x1

    .line 464
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isLargeTabletLayout()Z
    .locals 1

    .prologue
    .line 597
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsLargeTabletLayout:Z

    return v0
.end method

.method public static isMenuIconSizeChanged()Z
    .locals 1

    .prologue
    .line 624
    sget v0, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNormalMode()Z
    .locals 2

    .prologue
    .line 755
    sget-object v1, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherProvider;

    .local v0, provider:Lcom/android/launcher2/LauncherProvider;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider;->isFavoritesInNormalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isScreenLarge()Z
    .locals 1

    .prologue
    .line 572
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsScreenLarge:Z

    return v0
.end method

.method public static isScreenSmall()Z
    .locals 1

    .prologue
    .line 568
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsScreenSmall:Z

    return v0
.end method

.method public static isTabletLayout()Z
    .locals 1

    .prologue
    .line 576
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsTabletLayout:Z

    return v0
.end method

.method public static isUsingMoreLineinFolder()Z
    .locals 1

    .prologue
    .line 801
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsUsingMoreLineinFolder:Z

    return v0
.end method

.method public static isWidgetSearchTextColorLight()Z
    .locals 1

    .prologue
    .line 592
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsWidgetSearchTextColorLight:Z

    return v0
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filepath"

    .prologue
    .line 424
    const-string v6, ""

    .line 425
    .local v6, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 426
    .local v0, buf:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 428
    .local v4, fr:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 429
    .end local v4           #fr:Ljava/io/FileReader;
    .local v5, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x1fa0

    invoke-direct {v1, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 430
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v6

    .line 439
    if-eqz v5, :cond_0

    .line 440
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 441
    :cond_0
    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .line 448
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    if-nez v6, :cond_7

    .line 449
    const-string v6, ""

    .line 452
    :goto_1
    return-object v6

    .line 443
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 444
    .local v2, e:Ljava/io/IOException;
    const-string v7, "LauncherApplication"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .line 447
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_0

    .line 431
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 432
    .local v3, ex:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v7, "LauncherApplication"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 439
    if-eqz v4, :cond_3

    .line 440
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 441
    :cond_3
    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 443
    :catch_2
    move-exception v2

    .line 444
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "LauncherApplication"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 434
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 435
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v7, "LauncherApplication"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 439
    if-eqz v4, :cond_4

    .line 440
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 441
    :cond_4
    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 443
    :catch_4
    move-exception v2

    .line 444
    const-string v7, "LauncherApplication"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 438
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 439
    :goto_4
    if-eqz v4, :cond_5

    .line 440
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 441
    :cond_5
    if-eqz v0, :cond_6

    .line 442
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 446
    :cond_6
    :goto_5
    throw v7

    .line 443
    :catch_5
    move-exception v2

    .line 444
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "LauncherApplication"

    const-string v9, "IOException close()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 451
    .end local v2           #e:Ljava/io/IOException;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    goto :goto_1

    .line 438
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_4

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 434
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3

    .line 431
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_9
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static setHomeScreenIndex(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "homeScreenIndex"

    .prologue
    .line 633
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;IZ)V

    .line 634
    return-void
.end method

.method private static setHomeScreenIndex(Landroid/content/Context;IZ)V
    .locals 5
    .parameter "context"
    .parameter "homeScreenIndex"
    .parameter "updatePrefsTable"

    .prologue
    const/4 v4, 0x0

    .line 642
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isNormalMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 643
    sget v3, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    if-eq v3, p1, :cond_0

    .line 644
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    .line 645
    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 646
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 647
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "homescreenindex.simple"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 648
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 660
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 662
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    .line 663
    .local v2, provider:Lcom/android/launcher2/LauncherProvider;
    if-eqz v2, :cond_1

    .line 664
    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider;->updateScreenIndex()V

    .line 667
    .end local v2           #provider:Lcom/android/launcher2/LauncherProvider;
    :cond_1
    return-void

    .line 651
    :cond_2
    sget v3, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-eq v3, p1, :cond_0

    .line 652
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 653
    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 654
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 655
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "homescreenindex"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 656
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setScreenCount(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "screenCount"

    .prologue
    .line 684
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;IZ)V

    .line 685
    return-void
.end method

.method private static setScreenCount(Landroid/content/Context;IZ)V
    .locals 5
    .parameter "context"
    .parameter "screenCount"
    .parameter "updatePrefsTable"

    .prologue
    const/4 v4, 0x0

    .line 690
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isNormalMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 691
    sget v3, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-eq v3, p1, :cond_0

    .line 692
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    .line 693
    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 694
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 695
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "screencount.simple"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 696
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 710
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 712
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    .line 713
    .local v2, provider:Lcom/android/launcher2/LauncherProvider;
    if-eqz v2, :cond_1

    .line 714
    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider;->updateScreenCount()V

    .line 717
    .end local v2           #provider:Lcom/android/launcher2/LauncherProvider;
    :cond_1
    return-void

    .line 699
    :cond_2
    sget v3, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-eq v3, p1, :cond_0

    .line 700
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 701
    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 702
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 703
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "screencount"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 704
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setScreenModeForSecret(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "screenMode"

    .prologue
    .line 735
    const-string v2, "com.android.launcher2.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 736
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 737
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "screenmode.secret"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 738
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 740
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenModeForSecret:I

    .line 741
    return-void
.end method

.method public static setSecretScreenCount(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "screenCount"

    .prologue
    .line 720
    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    if-eq v2, p1, :cond_0

    .line 721
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    .line 723
    const-string v2, "com.android.launcher2.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 724
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 725
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "screencount.secret"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 726
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 731
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkFactoryMode()Z
    .locals 1

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/launcher2/LauncherApplication;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherApplication;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBinaryType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 472
    const-string v1, "ro.build.type"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, type:Ljava/lang/String;
    return-object v0
.end method

.method public getCpuBoosterObject()Landroid/os/DVFSHelper;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->cpuBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method public getCpuMaxBoosterObject()Landroid/os/DVFSHelper;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->cpuMaxBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method public getGpuBoosterObject()Landroid/os/DVFSHelper;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method getLauncher()Lcom/android/launcher2/Launcher;
    .locals 1

    .prologue
    .line 544
    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 545
    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 547
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getLauncherProvider()Lcom/android/launcher2/LauncherProvider;
    .locals 1

    .prologue
    .line 555
    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherProvider;

    return-object v0
.end method

.method getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method getPkgResCache()Lcom/android/launcher2/PkgResCache;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method public getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method

.method getThemeLoader()Lcom/android/launcher2/ThemeLoader;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mThemeLoader:Lcom/android/launcher2/ThemeLoader;

    return-object v0
.end method

.method public onCreate()V
    .locals 13

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 167
    .local v7, res:Landroid/content/res/Resources;
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v10

    if-nez v10, :cond_0

    const v10, 0x7f090002

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_19

    :cond_0
    const/4 v10, 0x1

    :goto_0
    sput-boolean v10, Lcom/android/launcher2/LauncherApplication;->sHasMenuKey:Z

    .line 168
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v9, v10, 0xf

    .line 169
    .local v9, screenSize:I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_1a

    const/4 v10, 0x1

    :goto_1
    sput-boolean v10, Lcom/android/launcher2/LauncherApplication;->sIsScreenSmall:Z

    .line 170
    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1b

    :cond_1
    const/4 v10, 0x1

    :goto_2
    sput-boolean v10, Lcom/android/launcher2/LauncherApplication;->sIsScreenLarge:Z

    .line 172
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenDensity:F

    .line 173
    const v10, 0x7f090003

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    sput-boolean v10, Lcom/android/launcher2/LauncherApplication;->sIsTabletLayout:Z

    .line 174
    const v10, 0x7f090007

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    sput-boolean v10, Lcom/android/launcher2/LauncherApplication;->sIsDeleteDropTargetTop:Z

    .line 175
    const v10, 0x7f090008

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    sput-boolean v10, Lcom/android/launcher2/LauncherApplication;->sIsDeleteDropTargetTextRight:Z

    .line 176
    const v10, 0x7f090004

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    sput-boolean v10, Lcom/android/launcher2/LauncherApplication;->sIsAppsListAllowed:Z

    .line 177
    const v10, 0x7f090006

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    sput-boolean v10, Lcom/android/launcher2/LauncherApplication;->sIsWidgetSearchTextColorLight:Z

    .line 178
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v11, 0x320

    if-lt v10, v11, :cond_1c

    const/4 v10, 0x1

    :goto_3
    sput-boolean v10, Lcom/android/launcher2/LauncherApplication;->sIsLargeTabletLayout:Z

    .line 179
    const v10, 0x7f09000e

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    sput-boolean v10, Lcom/android/launcher2/LauncherApplication;->sIsUsingMoreLineinFolder:Z

    .line 181
    new-instance v10, Lcom/android/launcher2/ThemeLoader;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/launcher2/ThemeLoader;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mThemeLoader:Lcom/android/launcher2/ThemeLoader;

    .line 184
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    .line 187
    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iput-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

    .line 188
    iget-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10, p0}, Lcom/android/launcher2/MenuAppModel;->setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V

    .line 189
    new-instance v10, Lcom/android/launcher2/PkgResCache;

    invoke-direct {v10, p0}, Lcom/android/launcher2/PkgResCache;-><init>(Lcom/android/launcher2/LauncherApplication;)V

    iput-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 191
    const v10, 0x7f09000c

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 192
    .local v4, isMenuAppsIconSizeChanged:Z
    const/4 v10, 0x0

    sput v10, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    .line 193
    if-eqz v4, :cond_2

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, appIconSize:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c01dd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sput v10, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    .line 197
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c003e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    float-to-int v0, v10

    .line 201
    :goto_4
    const-string v10, "LauncherApplication"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sMenuIconSize = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " appIconSize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget v10, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    if-ne v10, v0, :cond_2

    .line 203
    const/4 v10, 0x0

    sput v10, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    .line 218
    .end local v0           #appIconSize:I
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 219
    new-instance v10, Lcom/android/launcher2/PkgResCache;

    sget v11, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    invoke-direct {v10, p0, v11}, Lcom/android/launcher2/PkgResCache;-><init>(Lcom/android/launcher2/LauncherApplication;I)V

    iput-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    .line 220
    new-instance v10, Lcom/android/launcher2/LauncherModel;

    iget-object v11, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    invoke-direct {v10, p0, v11, v12}, Lcom/android/launcher2/LauncherModel;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/PkgResCache;)V

    iput-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 226
    :goto_5
    sget-object v10, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iput-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 227
    iget-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-virtual {v10, p0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V

    .line 230
    new-instance v3, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 231
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_FixedStkMenu"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 235
    const-string v10, "android.intent.action.STK_TITLE_IS_LOADED"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    :cond_3
    const-string v10, "package"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 238
    iget-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v10, v3}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v10, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v10, "android.intent.action.CSC_CHAMELEON_UPDATE_LAUNCHER"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Launcher_DynamicCSCFeature"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 250
    const-string v10, "com.android.launcher.action.DYNAMICCSC_MODE_CHANGE"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v10, "Dynamic_CSC"

    const-string v11, "Widget Intent Registered in Launcher App."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_4
    iget-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v10, v3}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 259
    const-string v10, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    iget-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v10, v3}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 264
    .local v8, resolver:Landroid/content/ContentResolver;
    sget-object v10, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 269
    const-string v10, "com.android.launcher2.prefs"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 270
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    .line 275
    .local v1, csc:Lcom/sec/android/app/CscFeature;
    const v10, 0x7f0a0009

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    sput v10, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    .line 283
    const-string v10, "screencount"

    const/4 v11, 0x0

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 284
    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lez v10, :cond_6

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v11, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v10, v11, :cond_a

    .line 285
    :cond_6
    const-string v10, "CscFeature_Launcher_TotalPageCount"

    invoke-virtual {v1, v10}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 287
    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lez v10, :cond_7

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v11, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v10, v11, :cond_9

    .line 288
    :cond_7
    const v10, 0x7f0a0007

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 289
    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lez v10, :cond_8

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v11, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v10, v11, :cond_9

    .line 290
    :cond_8
    sget v10, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 304
    :cond_9
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 305
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "screencount"

    sget v11, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 313
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_a
    const-string v10, "screencount.simple"

    const/4 v11, 0x0

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    .line 314
    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-lez v10, :cond_b

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    sget v11, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v10, v11, :cond_e

    .line 315
    :cond_b
    const v10, 0x7f0a0008

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    .line 316
    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-lez v10, :cond_c

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    sget v11, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v10, v11, :cond_d

    .line 317
    :cond_c
    sget v10, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    .line 321
    :cond_d
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 322
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "screencount.simple"

    sget v11, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_e
    const-string v10, "homescreenindex"

    const/4 v11, -0x1

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 332
    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-ltz v10, :cond_f

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v11, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lt v10, v11, :cond_13

    .line 333
    :cond_f
    const-string v10, "CscFeature_Launcher_DefaultPageNumber"

    invoke-virtual {v1, v10}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 334
    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-ltz v10, :cond_10

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v11, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lt v10, v11, :cond_12

    .line 335
    :cond_10
    const v10, 0x7f0a000a

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 336
    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-ltz v10, :cond_11

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v11, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lt v10, v11, :cond_12

    .line 337
    :cond_11
    const/4 v10, 0x0

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 342
    :cond_12
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 343
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "homescreenindex"

    sget v11, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 351
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_13
    const-string v10, "homescreenindex.simple"

    const/4 v11, -0x1

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    .line 352
    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    if-ltz v10, :cond_14

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    sget v11, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-lt v10, v11, :cond_17

    .line 353
    :cond_14
    const v10, 0x7f0a000b

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    .line 354
    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    if-ltz v10, :cond_15

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    sget v11, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-lt v10, v11, :cond_16

    .line 355
    :cond_15
    const/4 v10, 0x0

    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    .line 359
    :cond_16
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 360
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "homescreenindex.simple"

    sget v11, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 361
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 380
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_17
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 381
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v6

    .line 382
    .local v6, provider:Lcom/android/launcher2/LauncherProvider;
    if-eqz v6, :cond_18

    .line 383
    invoke-virtual {v6}, Lcom/android/launcher2/LauncherProvider;->updateScreenCount()V

    .line 384
    invoke-virtual {v6}, Lcom/android/launcher2/LauncherProvider;->updateScreenIndex()V

    .line 390
    .end local v6           #provider:Lcom/android/launcher2/LauncherProvider;
    :cond_18
    new-instance v10, Landroid/os/DVFSHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0xc

    invoke-direct {v10, v11, v12}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lcom/android/launcher2/LauncherApplication;->cpuBooster:Landroid/os/DVFSHelper;

    .line 391
    new-instance v10, Landroid/os/DVFSHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0xe

    invoke-direct {v10, v11, v12}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lcom/android/launcher2/LauncherApplication;->cpuMaxBooster:Landroid/os/DVFSHelper;

    .line 395
    new-instance v10, Landroid/os/DVFSHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0x10

    invoke-direct {v10, v11, v12}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    .line 396
    iget-object v10, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    const-string v11, "Launcher_homemenu"

    invoke-virtual {v10, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 399
    sget-object v10, Lcom/android/launcher2/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 400
    iget-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherModel;->reloadBadges()V

    .line 401
    return-void

    .line 167
    .end local v1           #csc:Lcom/sec/android/app/CscFeature;
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v4           #isMenuAppsIconSizeChanged:Z
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    .end local v8           #resolver:Landroid/content/ContentResolver;
    .end local v9           #screenSize:I
    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 169
    .restart local v9       #screenSize:I
    :cond_1a
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 170
    :cond_1b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 178
    :cond_1c
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 222
    .restart local v4       #isMenuAppsIconSizeChanged:Z
    :cond_1d
    new-instance v10, Lcom/android/launcher2/LauncherModel;

    iget-object v11, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-direct {v10, p0, v11}, Lcom/android/launcher2/LauncherModel;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V

    iput-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    goto/16 :goto_5

    .line 198
    .restart local v0       #appIconSize:I
    :catch_0
    move-exception v10

    goto/16 :goto_4
.end method

.method public onTerminate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 481
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 483
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 486
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 487
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 488
    iput-object v2, p0, Lcom/android/launcher2/LauncherApplication;->cpuBooster:Landroid/os/DVFSHelper;

    .line 489
    iput-object v2, p0, Lcom/android/launcher2/LauncherApplication;->cpuMaxBooster:Landroid/os/DVFSHelper;

    .line 490
    iput-object v2, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    .line 491
    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 540
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncher:Ljava/lang/ref/WeakReference;

    .line 541
    return-void
.end method

.method setLauncherProvider(Lcom/android/launcher2/LauncherProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 551
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    .line 552
    return-void
.end method

.method public updatePageCount()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 766
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 798
    :cond_0
    return-void

    .line 770
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v3

    .line 771
    .local v3, launcher:Lcom/android/launcher2/Launcher;
    if-eqz v3, :cond_0

    .line 775
    iget-object v1, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 776
    .local v1, homeView:Lcom/android/launcher2/HomeView;
    if-eqz v1, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v5

    .line 781
    .local v5, provider:Lcom/android/launcher2/LauncherProvider;
    if-eqz v5, :cond_0

    .line 785
    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v4

    .line 786
    .local v4, oldScreenCount:I
    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider;->getScreenCount()I

    move-result v6

    .line 787
    .local v6, screenCount:I
    invoke-static {p0, v6, v9}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;IZ)V

    .line 788
    sub-int v0, v6, v4

    .line 789
    .local v0, difference:I
    if-lez v0, :cond_2

    .line 790
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 791
    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->addPage()V

    .line 790
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 793
    .end local v2           #i:I
    :cond_2
    if-gez v0, :cond_0

    .line 794
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    mul-int/lit8 v7, v0, -0x1

    if-ge v2, v7, :cond_0

    .line 795
    invoke-virtual {v1, v9}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    .line 794
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
