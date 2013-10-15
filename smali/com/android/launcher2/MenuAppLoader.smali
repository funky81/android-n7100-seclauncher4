.class public Lcom/android/launcher2/MenuAppLoader;
.super Ljava/lang/Object;
.source "MenuAppLoader.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final DEBUG_LOADER:Z = true

.field private static final DEFAULT_APP_COUNT:I = 0x32

.field private static final DEFAULT_FOLDER_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MenuAppLoader"

.field public static nonUninstallableApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static nonUninstallableWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAbortLoader:Z

.field private mAllItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadgeCache:Lcom/android/launcher2/BadgeCache;

.field private final mLauncherApp:Lcom/android/launcher2/LauncherApplication;

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuAppLoader;->DEBUGGABLE:Z

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableWidgets:Ljava/util/ArrayList;

    .line 60
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.agoda.mobile.consumer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.glu.bombshells_samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.tecace.cameraace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.izsoft.canimalsabc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.glu.contractkiller2_samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.NamcoBandaiGames.DoodleFit2.Samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.glu.dragonslayer_samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.hcom.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.oceanhouse_media.booklcjustmeandmymomlite_app"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.moleskine.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.itech.pdfreaderpro"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "air.com.adobe.pstouch.oem1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.namcobandaigames.rocketfox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.sesame.apps.elmocalls.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.ea.tetrisfree_na"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.fuzzypeach.worldfactbook_tab"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.ikonet.vhb"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.itech.virtualofficepro"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.almond.kitty.spen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "kr.co.rightbrain.RetailMode.Galaxy_TAB3_8_DCT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableWidgets:Ljava/util/ArrayList;

    const-string v1, "com.almond.kitty.spen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableWidgets:Ljava/util/ArrayList;

    const-string v1, "com.tecace.cameraace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableWidgets:Ljava/util/ArrayList;

    const-string v1, "com.hcom.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V
    .locals 2
    .parameter "context"
    .parameter "pkgResCache"
    .parameter "badgeCache"

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    .line 112
    new-instance v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v0}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    .line 118
    iput-object p1, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    .line 119
    iput-object p2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 120
    iput-object p3, p0, Lcom/android/launcher2/MenuAppLoader;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    .line 121
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 122
    return-void
.end method

.method private createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;
    .locals 9
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 159
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 160
    .local v0, activity:Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    .line 161
    .local v4, item:Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_2

    .line 162
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 163
    .local v5, pkgName:Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v1, cn:Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 165
    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-eqz v7, :cond_0

    move v3, v6

    .line 167
    .local v3, isSystemApp:Z
    :cond_0
    sget-object v7, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, "SM-T310X"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    const/4 v3, 0x1

    .line 169
    :cond_1
    new-instance v4, Lcom/android/launcher2/AppItem;

    .end local v4           #item:Lcom/android/launcher2/AppItem;
    invoke-direct {v4, v1, v3}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    .line 170
    .restart local v4       #item:Lcom/android/launcher2/AppItem;
    iput-boolean v6, v4, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 176
    invoke-direct {p0, v4, p1, v1}, Lcom/android/launcher2/MenuAppLoader;->setTitleAndIcon(Lcom/android/launcher2/AppItem;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)V

    .line 177
    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V

    .line 178
    iget-boolean v6, v4, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v6, :cond_2

    .line 179
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-wide v6, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v6, v4, Lcom/android/launcher2/AppItem;->mCreateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #isSystemApp:Z
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 186
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    iget-object v7, v4, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_3
    return-object v4

    .line 180
    .restart local v1       #cn:Landroid/content/ComponentName;
    .restart local v3       #isSystemApp:Z
    .restart local v5       #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 181
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "MenuAppLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find PackageInfo for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createDbAppItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .locals 3
    .parameter "item"

    .prologue
    .line 197
    new-instance v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 198
    .local v0, newApp:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    .line 199
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 206
    :goto_0
    iget-wide v1, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 207
    iget v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 208
    iget v1, p1, Lcom/android/launcher2/AppItem;->mCell:I

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    .line 209
    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 210
    iget-boolean v1, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    iput-boolean v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    .line 211
    return-object v0

    .line 201
    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 202
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v1, v1, Lcom/android/launcher2/BaseItem;->mId:J

    :goto_1
    iput-wide v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    .line 203
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    .line 204
    iget-boolean v1, p1, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    goto :goto_0

    .line 202
    :cond_1
    const-wide/16 v1, -0x1

    goto :goto_1
.end method

.method private findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 229
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 232
    :cond_0
    return-object v0
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 241
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 242
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    const/4 v4, 0x1

    .line 246
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;
    .locals 4
    .parameter "folderId"

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, folder:Lcom/android/launcher2/AppFolderItem;
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 262
    .local v1, item:Lcom/android/launcher2/AppItem;
    if-nez v1, :cond_1

    .line 263
    new-instance v0, Lcom/android/launcher2/AppFolderItem;

    .end local v0           #folder:Lcom/android/launcher2/AppFolderItem;
    invoke-direct {v0}, Lcom/android/launcher2/AppFolderItem;-><init>()V

    .line 264
    .restart local v0       #folder:Lcom/android/launcher2/AppFolderItem;
    iput-wide p1, v0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 265
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 266
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 267
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_0
    :goto_0
    return-object v0

    .line 268
    :cond_1
    iget-object v2, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_0

    move-object v0, v1

    .line 269
    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    goto :goto_0
.end method

.method private setBadgeCount(Lcom/android/launcher2/AppItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    .line 539
    return-void
.end method

.method private setTitleAndIcon(Lcom/android/launcher2/AppItem;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)V
    .locals 2
    .parameter "item"
    .parameter "info"
    .parameter "cn"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V

    .line 554
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    iput v0, p1, Lcom/android/launcher2/BaseItem;->mIconResId:I

    .line 555
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    iput v0, p1, Lcom/android/launcher2/BaseItem;->mTitleResId:I

    .line 557
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v0}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 559
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 561
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateOrCreateApp(Landroid/content/ComponentName;JJIIZLjava/lang/String;Z)Lcom/android/launcher2/AppItem;
    .locals 13
    .parameter "cn"
    .parameter "id"
    .parameter "folderId"
    .parameter "screen"
    .parameter "cell"
    .parameter "hidden"
    .parameter "title"
    .parameter "secret"

    .prologue
    .line 602
    const/4 v5, 0x0

    .line 603
    .local v5, item:Lcom/android/launcher2/AppItem;
    if-eqz p1, :cond_2

    .line 604
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #item:Lcom/android/launcher2/AppItem;
    check-cast v5, Lcom/android/launcher2/AppItem;

    .line 605
    .restart local v5       #item:Lcom/android/launcher2/AppItem;
    if-nez v5, :cond_0

    .line 609
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 613
    .local v8, pkgName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/16 v10, 0x2000

    invoke-virtual {v9, v8, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 615
    .local v7, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 616
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x4

    and-int/2addr v9, v10

    if-eqz v9, :cond_0

    .line 621
    new-instance v6, Lcom/android/launcher2/AppItem;

    const/4 v9, 0x0

    invoke-direct {v6, p1, v9}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v5           #item:Lcom/android/launcher2/AppItem;
    .local v6, item:Lcom/android/launcher2/AppItem;
    :try_start_1
    move-object/from16 v0, p9

    iput-object v0, v6, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 623
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v9}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v6, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 624
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    .line 625
    iget-wide v9, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v9, v6, Lcom/android/launcher2/AppItem;->mCreateTime:J

    .line 626
    move/from16 v0, p10

    iput-boolean v0, v6, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 627
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v9, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-direct {p0, v6}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 638
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v6           #item:Lcom/android/launcher2/AppItem;
    .end local v7           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v8           #pkgName:Ljava/lang/String;
    .restart local v5       #item:Lcom/android/launcher2/AppItem;
    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    iget-wide v9, v5, Lcom/android/launcher2/BaseItem;->mId:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    .line 639
    iput-wide p2, v5, Lcom/android/launcher2/BaseItem;->mId:J

    .line 640
    move/from16 v0, p6

    iput v0, v5, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 641
    move/from16 v0, p7

    iput v0, v5, Lcom/android/launcher2/AppItem;->mCell:I

    .line 642
    move/from16 v0, p8

    iput-boolean v0, v5, Lcom/android/launcher2/AppItem;->mHidden:Z

    .line 643
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 644
    move/from16 v0, p10

    iput-boolean v0, v5, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 648
    const-wide/16 v9, -0x1

    cmp-long v9, p4, v9

    if-eqz v9, :cond_1

    .line 649
    move-wide/from16 v0, p4

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/MenuAppLoader;->getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;

    move-result-object v4

    .line 650
    .local v4, folder:Lcom/android/launcher2/AppFolderItem;
    if-eqz v4, :cond_3

    .line 651
    invoke-virtual {v4, v5}, Lcom/android/launcher2/AppFolderItem;->loadItem(Lcom/android/launcher2/AppItem;)V

    .line 664
    .end local v4           #folder:Lcom/android/launcher2/AppFolderItem;
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppItem;

    .line 665
    .local v3, dupItem:Lcom/android/launcher2/AppItem;
    if-eqz v3, :cond_2

    iget-object v9, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v10, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v9, v10, :cond_2

    .line 666
    check-cast v3, Lcom/android/launcher2/AppFolderItem;

    .end local v3           #dupItem:Lcom/android/launcher2/AppItem;
    invoke-virtual {v3}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    .line 670
    :cond_2
    return-object v5

    .line 653
    .restart local v4       #folder:Lcom/android/launcher2/AppFolderItem;
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 654
    const/4 v9, -0x1

    iput v9, v5, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 655
    const/4 v9, -0x1

    iput v9, v5, Lcom/android/launcher2/AppItem;->mCell:I

    goto :goto_1

    .line 630
    .end local v4           #folder:Lcom/android/launcher2/AppFolderItem;
    :catch_0
    move-exception v9

    goto :goto_0

    .end local v5           #item:Lcom/android/launcher2/AppItem;
    .restart local v2       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #item:Lcom/android/launcher2/AppItem;
    .restart local v7       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v8       #pkgName:Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v5, v6

    .end local v6           #item:Lcom/android/launcher2/AppItem;
    .restart local v5       #item:Lcom/android/launcher2/AppItem;
    goto :goto_0
.end method

.method private updateOrCreateFolder(JIILjava/lang/String;Z)Lcom/android/launcher2/AppFolderItem;
    .locals 3
    .parameter "folderId"
    .parameter "screen"
    .parameter "cell"
    .parameter "title"
    .parameter "secret"

    .prologue
    .line 686
    const/4 v0, 0x0

    .line 687
    .local v0, folder:Lcom/android/launcher2/AppFolderItem;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 688
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppLoader;->getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_0

    .line 690
    iput p3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 691
    iput p4, v0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 692
    iput-object p5, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 693
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 694
    iput-boolean p6, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 697
    :cond_0
    return-object v0
.end method

.method private updatePackageActivities(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v10, 0x0

    .line 722
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v1, appMods:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v11, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v11}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v9

    .line 724
    .local v9, provider:Lcom/android/launcher2/LauncherProvider;
    iget-object v11, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 725
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    .line 726
    .local v7, item:Lcom/android/launcher2/AppItem;
    iget-object v2, v7, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    .line 727
    .local v2, cn:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 728
    invoke-static {p2, v2}, Lcom/android/launcher2/MenuAppLoader;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 729
    iget-object v11, p0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 732
    new-instance v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 733
    .local v0, appMod:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v11, 0x5

    iput v11, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 734
    iget-wide v11, v7, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v11, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 735
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 741
    .end local v0           #appMod:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v7           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 742
    .local v4, info:Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v12, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    .restart local v2       #cn:Landroid/content/ComponentName;
    iget-object v11, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    .line 745
    .restart local v7       #item:Lcom/android/launcher2/AppItem;
    if-nez v7, :cond_3

    .line 746
    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppLoader;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    move-result-object v7

    .line 747
    if-eqz v7, :cond_2

    .line 748
    invoke-virtual {v9}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v11

    iput-wide v11, v7, Lcom/android/launcher2/BaseItem;->mId:J

    .line 749
    iput-boolean v10, v7, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 750
    iget-object v11, p0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    invoke-direct {p0, v7}, Lcom/android/launcher2/MenuAppLoader;->createDbAppItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 758
    :cond_3
    iget-object v8, v7, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 759
    .local v8, origTitle:Ljava/lang/String;
    invoke-direct {p0, v7, v4, v2}, Lcom/android/launcher2/MenuAppLoader;->setTitleAndIcon(Lcom/android/launcher2/AppItem;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)V

    .line 760
    iget-object v11, v7, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v5, 0x1

    .line 762
    .local v5, isTitleChanged:Z
    :goto_2
    const/4 v11, 0x0

    iput-object v11, v7, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 763
    iput-boolean v10, v7, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    .line 764
    iget-object v11, p0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    if-eqz v5, :cond_2

    .line 766
    new-instance v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 767
    .restart local v0       #appMod:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v11, 0x2

    iput v11, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 768
    iget-wide v11, v7, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v11, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 769
    iget-object v11, v7, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v11, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 770
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #appMod:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v5           #isTitleChanged:Z
    :cond_4
    move v5, v10

    .line 760
    goto :goto_2

    .line 774
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v7           #item:Lcom/android/launcher2/AppItem;
    .end local v8           #origTitle:Ljava/lang/String;
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 775
    iget-object v10, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v10, v1}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 776
    :cond_6
    return-void
.end method


# virtual methods
.method public abortLoader()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    .line 130
    return-void
.end method

.method public addPackage(Ljava/lang/String;)V
    .locals 8
    .parameter "packageName"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppLoader;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 137
    .local v3, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v4, newApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v5

    .line 139
    .local v5, provider:Lcom/android/launcher2/LauncherProvider;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 140
    .local v1, info:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppLoader;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    move-result-object v2

    .line 141
    .local v2, item:Lcom/android/launcher2/AppItem;
    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/launcher2/BaseItem;->mId:J

    .line 143
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 144
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppLoader;->createDbAppItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 149
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v6, v4}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 150
    :cond_2
    return-void
.end method

.method public loadAllItems(Z)Ljava/util/Map;
    .locals 55
    .parameter "isSecret"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    sget-boolean v3, Lcom/android/launcher2/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "MenuAppLoader"

    const-string v14, "loadAllItems"

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v40

    .line 283
    .local v40, t0:J
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    .line 285
    new-instance v3, Ljava/util/HashMap;

    const/16 v14, 0x3c

    invoke-direct {v3, v14}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 292
    new-instance v36, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v36, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 296
    .local v2, contentResolver:Landroid/content/ContentResolver;
    const/16 v22, 0x0

    .line 297
    .local v22, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v14, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v3, v0, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v22

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v42

    .line 314
    .local v42, t1:J
    if-nez v22, :cond_1

    .line 315
    const/16 v21, 0x0

    .line 460
    :goto_0
    return-object v21

    .line 317
    :cond_1
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ResolveInfo;

    .line 318
    .local v34, info:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v3, :cond_4

    .line 327
    .end local v34           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    .line 330
    .local v44, t2:J
    sget-object v3, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 332
    .local v23, c:Landroid/database/Cursor;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v46

    .line 335
    .local v46, t3:J
    :try_start_0
    const-string v3, "_id"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 336
    .local v33, idIndex:I
    const-string v3, "folderId"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 337
    .local v30, folderIdIndex:I
    const-string v3, "screen"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 338
    .local v38, screenIndex:I
    const-string v3, "cell"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 339
    .local v24, cellIndex:I
    const-string v3, "hidden"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 340
    .local v31, hiddenIndex:I
    const-string v3, "title"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 341
    .local v52, titleIndex:I
    const-string v3, "componentName"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 342
    .local v26, componentNameIndex:I
    const-string v3, "secret"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 344
    .local v39, secretIndex:I
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v29, delApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-nez v3, :cond_9

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 347
    const/16 v35, 0x0

    .line 348
    .local v35, item:Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 349
    .local v5, id:J
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 350
    .local v7, folderId:J
    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 351
    .local v9, screen:I
    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 352
    .local v10, cell:I
    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v11, 0x1

    .line 353
    .local v11, hidden:Z
    :goto_3
    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 354
    .local v12, title:Ljava/lang/String;
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 355
    .local v25, component:Ljava/lang/String;
    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v13, 0x1

    .line 357
    .local v13, secret:Z
    :goto_4
    if-eqz v25, :cond_8

    .line 358
    invoke-static/range {v25 .. v25}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .local v4, cn:Landroid/content/ComponentName;
    move-object/from16 v3, p0

    .line 360
    invoke-direct/range {v3 .. v13}, Lcom/android/launcher2/MenuAppLoader;->updateOrCreateApp(Landroid/content/ComponentName;JJIIZLjava/lang/String;Z)Lcom/android/launcher2/AppItem;

    move-result-object v35

    .line 361
    if-nez v35, :cond_3

    .line 363
    new-instance v28, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct/range {v28 .. v28}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 364
    .local v28, delApp:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v3, 0x5

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 365
    move-object/from16 v0, v28

    iput-wide v5, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 366
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 379
    .end local v4           #cn:Landroid/content/ComponentName;
    .end local v5           #id:J
    .end local v7           #folderId:J
    .end local v9           #screen:I
    .end local v10           #cell:I
    .end local v11           #hidden:Z
    .end local v12           #title:Ljava/lang/String;
    .end local v13           #secret:Z
    .end local v24           #cellIndex:I
    .end local v25           #component:Ljava/lang/String;
    .end local v26           #componentNameIndex:I
    .end local v28           #delApp:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v29           #delApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    .end local v30           #folderIdIndex:I
    .end local v31           #hiddenIndex:I
    .end local v33           #idIndex:I
    .end local v35           #item:Lcom/android/launcher2/AppItem;
    .end local v38           #screenIndex:I
    .end local v39           #secretIndex:I
    .end local v52           #titleIndex:I
    :catchall_0
    move-exception v3

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v3

    .line 322
    .end local v23           #c:Landroid/database/Cursor;
    .end local v44           #t2:J
    .end local v46           #t3:J
    .restart local v34       #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v14, "sstream.app"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 323
    const-string v3, "MenuAppLoader"

    const-string v14, "remove from apps (SStream App)"

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 325
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppLoader;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    goto/16 :goto_1

    .line 352
    .end local v34           #info:Landroid/content/pm/ResolveInfo;
    .restart local v5       #id:J
    .restart local v7       #folderId:J
    .restart local v9       #screen:I
    .restart local v10       #cell:I
    .restart local v23       #c:Landroid/database/Cursor;
    .restart local v24       #cellIndex:I
    .restart local v26       #componentNameIndex:I
    .restart local v29       #delApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    .restart local v30       #folderIdIndex:I
    .restart local v31       #hiddenIndex:I
    .restart local v33       #idIndex:I
    .restart local v35       #item:Lcom/android/launcher2/AppItem;
    .restart local v38       #screenIndex:I
    .restart local v39       #secretIndex:I
    .restart local v44       #t2:J
    .restart local v46       #t3:J
    .restart local v52       #titleIndex:I
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 355
    .restart local v11       #hidden:Z
    .restart local v12       #title:Ljava/lang/String;
    .restart local v25       #component:Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    goto :goto_4

    .restart local v13       #secret:Z
    :cond_8
    move-object/from16 v14, p0

    move-wide v15, v5

    move/from16 v17, v9

    move/from16 v18, v10

    move-object/from16 v19, v12

    move/from16 v20, v13

    .line 371
    :try_start_1
    invoke-direct/range {v14 .. v20}, Lcom/android/launcher2/MenuAppLoader;->updateOrCreateFolder(JIILjava/lang/String;Z)Lcom/android/launcher2/AppFolderItem;

    goto/16 :goto_2

    .line 375
    .end local v5           #id:J
    .end local v7           #folderId:J
    .end local v9           #screen:I
    .end local v10           #cell:I
    .end local v11           #hidden:Z
    .end local v12           #title:Ljava/lang/String;
    .end local v13           #secret:Z
    .end local v25           #component:Ljava/lang/String;
    .end local v35           #item:Lcom/android/launcher2/AppItem;
    :cond_9
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    :cond_a
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v48

    .line 383
    .local v48, t4:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    move-object/from16 v21, v0

    .line 384
    .local v21, allItems:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v3, :cond_c

    .line 385
    const/16 v21, 0x0

    .line 450
    :cond_b
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v50

    .line 452
    .local v50, t5:J
    const-string v3, "MenuAppLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadAllItems; aborted: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v3, "MenuAppLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    Query PkgMgr for all main intents: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v42, v40

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v3, "MenuAppLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    Create AppItem for all main intents: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v44, v42

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v44, v40

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v3, "MenuAppLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    Query AppOrder database table: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v46, v44

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v46, v40

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v3, "MenuAppLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    Merge AppOrder and PkgMgr data: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v48, v46

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v48, v40

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v3, "MenuAppLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    Normalize items and update DB: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v50, v48

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v50, v40

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    goto/16 :goto_0

    .line 394
    .end local v50           #t5:J
    :cond_c
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 395
    .local v27, created:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/launcher2/AppItem;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_d
    :goto_6
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/launcher2/AppItem;

    .line 396
    .restart local v35       #item:Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v35

    iget-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v14, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v14, :cond_d

    .line 397
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 405
    .end local v35           #item:Lcom/android/launcher2/AppItem;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v37

    .line 406
    .local v37, provider:Lcom/android/launcher2/LauncherProvider;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_f
    :goto_7
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/launcher2/AppItem;

    .line 407
    .restart local v35       #item:Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v35

    iget-wide v14, v0, Lcom/android/launcher2/BaseItem;->mId:J

    const-wide/16 v16, -0x1

    cmp-long v3, v14, v16

    if-nez v3, :cond_f

    .line 408
    invoke-virtual/range {v37 .. v37}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v14

    move-object/from16 v0, v35

    iput-wide v14, v0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 409
    const/4 v3, 0x1

    move-object/from16 v0, v35

    iput-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 410
    move-object/from16 v0, v35

    iget-wide v14, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 417
    .end local v35           #item:Lcom/android/launcher2/AppItem;
    :cond_10
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    sget-object v14, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    const/4 v15, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v14, v15}, Lcom/android/launcher2/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;

    .line 421
    new-instance v54, Ljava/util/ArrayList;

    invoke-direct/range {v54 .. v54}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v54, updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_11
    :goto_8
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/launcher2/AppItem;

    .line 423
    .restart local v35       #item:Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v35

    iget-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    if-eqz v3, :cond_11

    .line 424
    new-instance v53, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct/range {v53 .. v53}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 425
    .local v53, update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 426
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v14, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v14, :cond_12

    .line 427
    const/4 v3, 0x0

    move-object/from16 v0, v53

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 436
    :goto_9
    move-object/from16 v0, v35

    iget-wide v14, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-object/from16 v0, v53

    iput-wide v14, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 437
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_15

    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v14, v3, Lcom/android/launcher2/BaseItem;->mId:J

    :goto_a
    move-object/from16 v0, v53

    iput-wide v14, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    .line 438
    move-object/from16 v0, v35

    iget v3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, v53

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 439
    move-object/from16 v0, v35

    iget v3, v0, Lcom/android/launcher2/AppItem;->mCell:I

    move-object/from16 v0, v53

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    .line 440
    move-object/from16 v0, v35

    iget-boolean v3, v0, Lcom/android/launcher2/AppItem;->mHidden:Z

    move-object/from16 v0, v53

    iput-boolean v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    .line 441
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v53

    iput-object v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 442
    move-object/from16 v0, v35

    iget-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    move-object/from16 v0, v53

    iput-boolean v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    .line 443
    const/4 v3, 0x0

    move-object/from16 v0, v35

    iput-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 444
    move-object/from16 v0, v54

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 429
    :cond_12
    const/4 v3, 0x3

    move-object/from16 v0, v53

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 430
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v0, v53

    iput-object v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    goto :goto_9

    .line 433
    :cond_13
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v14, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v14, :cond_14

    const/4 v3, 0x4

    :goto_b
    move-object/from16 v0, v53

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    goto :goto_9

    :cond_14
    const/4 v3, 0x1

    goto :goto_b

    .line 437
    :cond_15
    const-wide/16 v14, -0x1

    goto :goto_a

    .line 447
    .end local v35           #item:Lcom/android/launcher2/AppItem;
    .end local v53           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_16
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, v54

    invoke-static {v3, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_5
.end method

.method refreshAllApps()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 469
    .local v4, t0:J
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v9, updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iput-boolean v11, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    .line 471
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 472
    .local v2, item:Lcom/android/launcher2/AppItem;
    iget v12, v2, Lcom/android/launcher2/BaseItem;->mIconResId:I

    if-nez v12, :cond_1

    iget v12, v2, Lcom/android/launcher2/BaseItem;->mTitleResId:I

    if-eqz v12, :cond_2

    .line 473
    :cond_1
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v13, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v13, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 474
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v13, v2, Lcom/android/launcher2/BaseItem;->mIconResId:I

    iput v13, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 475
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v3, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v3, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    .line 476
    .local v3, prevTitle:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v13, v2, Lcom/android/launcher2/BaseItem;->mTitleResId:I

    iput v13, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    .line 477
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v13, v2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v14, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    .line 478
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v12, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v12, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 479
    const/4 v12, 0x0

    iput-object v12, v2, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 480
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v12, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v12, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 482
    if-eqz v3, :cond_6

    .line 483
    iget-object v12, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    move v0, v10

    .line 487
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 488
    new-instance v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v8}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 489
    .local v8, update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v12, 0x2

    iput v12, v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 490
    iget-wide v12, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v12, v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 491
    iget-object v12, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v12, v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 492
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    .end local v0           #changed:Z
    .end local v3           #prevTitle:Ljava/lang/String;
    .end local v8           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_2
    iget-boolean v12, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v12, :cond_0

    .line 498
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_3
    iget-boolean v10, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-nez v10, :cond_4

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 499
    iget-object v10, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v10, v9}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 502
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 503
    .local v6, t1:J
    const-string v10, "MenuAppLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "refreshAllApps; aborted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", refresh time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v6, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void

    .end local v6           #t1:J
    .restart local v2       #item:Lcom/android/launcher2/AppItem;
    .restart local v3       #prevTitle:Ljava/lang/String;
    :cond_5
    move v0, v11

    .line 483
    goto :goto_0

    .line 485
    :cond_6
    iget-object v12, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v12, :cond_7

    move v0, v10

    .restart local v0       #changed:Z
    :goto_1
    goto :goto_0

    .end local v0           #changed:Z
    :cond_7
    move v0, v11

    goto :goto_1
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"

    .prologue
    .line 515
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v2, delApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 517
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    .line 518
    .local v4, item:Lcom/android/launcher2/AppItem;
    iget-object v0, v4, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    .line 519
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 520
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 523
    new-instance v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 524
    .local v1, delApp:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v5, 0x5

    iput v5, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 525
    iget-wide v5, v4, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v5, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 526
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 529
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #delApp:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v4           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 530
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5, v2}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 531
    :cond_2
    return-void
.end method

.method updateBadgeCounts(Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, badgeCounts:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 570
    .local v4, updated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 571
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 572
    .local v0, appItem:Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_0

    .line 573
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 574
    .local v3, newCount:I
    iget v5, v0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-eq v5, v3, :cond_0

    .line 575
    iput v3, v0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    .line 576
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 580
    .end local v0           #appItem:Lcom/android/launcher2/AppItem;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    .end local v3           #newCount:I
    :cond_1
    return-object v4
.end method

.method public updatePackage(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 705
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppLoader;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 706
    .local v0, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppLoader;->removePackage(Ljava/lang/String;)V

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppLoader;->updatePackageActivities(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method updatePackageAvailability(Ljava/lang/String;Z)V
    .locals 4
    .parameter "packageName"
    .parameter "available"

    .prologue
    .line 786
    if-eqz p2, :cond_1

    .line 787
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppLoader;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 788
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 789
    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/MenuAppLoader;->updatePackageActivities(Ljava/lang/String;Ljava/util/List;)V

    .line 803
    .end local v2           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return-void

    .line 793
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 794
    .local v1, item:Lcom/android/launcher2/AppItem;
    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 796
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    .line 797
    iget-object v3, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v3}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 798
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 799
    iget-object v3, p0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
