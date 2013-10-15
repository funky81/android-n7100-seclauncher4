.class public final enum Lcom/android/launcher2/MenuAppModel;
.super Ljava/lang/Enum;
.source "MenuAppModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppModel$Normalizer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/MenuAppModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/MenuAppModel; = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final enum INSTANCE:Lcom/android/launcher2/MenuAppModel; = null

.field public static final MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_INSTALL_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPRINT_HIDE_APP_LIST:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MenuAppModel"

.field private static mCustomMenuSecretPageCnt:I

.field private static sCollator:Ljava/text/Collator;


# instance fields
.field private disable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppDiabledItems:Ljava/util/Map;
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

.field private mAppItems:Ljava/util/Map;
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

.field private mApplication:Lcom/android/launcher2/LauncherApplication;

.field private mAvailableWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mCanUninstallApps:Z

.field private mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

.field private mFoldersAdded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldersRemoved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasHiddenItems:Z

.field private mHasPreSecretWidget:Z

.field private mInEditMode:Z

.field private mIsFinishFrontAppsLoader:Z

.field private mIsSafeMode:Z

.field private mMaxItemsPerPage:I

.field private mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSecretMoveItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSprintFeaturedFolderPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSprintFolderPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendGets:Z

.field private mTopLevelItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    new-instance v2, Lcom/android/launcher2/MenuAppModel;

    const-string v3, "INSTANCE"

    invoke-direct {v2, v3, v1}, Lcom/android/launcher2/MenuAppModel;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    .line 60
    new-array v2, v0, [Lcom/android/launcher2/MenuAppModel;

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    aput-object v3, v2, v1

    sput-object v2, Lcom/android/launcher2/MenuAppModel;->$VALUES:[Lcom/android/launcher2/MenuAppModel;

    .line 86
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    .line 88
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    .line 148
    sput v1, Lcom/android/launcher2/MenuAppModel;->mCustomMenuSecretPageCnt:I

    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->SPRINT_HIDE_APP_LIST:Ljava/util/Set;

    .line 159
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->SPRINT_HIDE_APP_LIST:Ljava/util/Set;

    const-string v1, "com.sprint.zone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->SPRINT_HIDE_APP_LIST:Ljava/util/Set;

    const-string v1, "com.coremobility.app.vnotes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->SPRINT_HIDE_APP_LIST:Ljava/util/Set;

    const-string v1, "com.sprint.voicemail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->SPRINT_HIDE_APP_LIST:Ljava/util/Set;

    const-string v1, "com.sprint.w.installer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->SPRINT_HIDE_APP_LIST:Ljava/util/Set;

    const-string v1, "com.sequent.controlpanel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1143
    new-instance v0, Lcom/android/launcher2/MenuAppModel$1;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    .line 1264
    new-instance v0, Lcom/android/launcher2/MenuAppModel$2;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$2;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    .line 1312
    new-instance v0, Lcom/android/launcher2/MenuAppModel$3;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$3;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_INSTALL_COMPARATOR:Ljava/util/Comparator;

    return-void

    :cond_0
    move v0, v1

    .line 86
    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->disable:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFolderPackages:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFeaturedFolderPackages:Ljava/util/ArrayList;

    .line 146
    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAvailableWidgets:Ljava/util/List;

    .line 152
    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mHasPreSecretWidget:Z

    .line 632
    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mIsFinishFrontAppsLoader:Z

    return-void
.end method

.method static synthetic access$000(II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/android/launcher2/MenuAppModel;->integerCompare(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(JJ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private addItemtoFolder(Lcom/android/launcher2/AppItem;J)Z
    .locals 7
    .parameter "item"
    .parameter "folderId"

    .prologue
    const/4 v3, 0x1

    .line 1412
    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 1414
    .local v0, folderItem:Lcom/android/launcher2/AppFolderItem;
    if-eqz v0, :cond_1

    .line 1415
    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 1416
    new-instance v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v2}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 1417
    .local v2, update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v4, 0x4

    iput v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 1418
    iput-wide p2, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    .line 1419
    iget-boolean v4, p1, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    .line 1420
    iget-wide v4, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 1421
    iget v4, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 1422
    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 1423
    iget-wide v4, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 1424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1425
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1426
    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v4, v1}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 1427
    sget-boolean v4, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MenuAppModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addItemtoFolder :: ADDED:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    .end local v2           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkEditMode(Z)V
    .locals 3
    .parameter "requiredState"

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eq v0, p1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method requires mInEditMode to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    return-void
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
    .line 699
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 700
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 703
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 704
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 706
    :cond_0
    return-object v0
.end method

.method private static integerCompare(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1116
    const/4 v0, 0x0

    .line 1118
    .local v0, ret:I
    if-le p0, p1, :cond_1

    .line 1119
    const/4 v0, 0x1

    .line 1123
    :cond_0
    :goto_0
    return v0

    .line 1120
    :cond_1
    if-ge p0, p1, :cond_0

    .line 1121
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isSprintChameleonApp(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "componentName"

    .prologue
    .line 611
    const/4 v0, 0x0

    return v0
.end method

.method private isSprintChameleonApp(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 764
    const/4 v0, 0x0

    return v0
.end method

.method private static longCompare(JJ)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1127
    const/4 v0, 0x0

    .line 1129
    .local v0, ret:I
    cmp-long v1, p0, p2

    if-lez v1, :cond_1

    .line 1130
    const/4 v0, 0x1

    .line 1134
    :cond_0
    :goto_0
    return v0

    .line 1131
    :cond_1
    cmp-long v1, p0, p2

    if-gez v1, :cond_0

    .line 1132
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private setModelFlags()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1049
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    .line 1050
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    .line 1051
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 1052
    .local v1, item:Lcom/android/launcher2/AppItem;
    iget-boolean v2, v1, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v2, :cond_3

    .line 1053
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    .line 1064
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    if-eqz v2, :cond_0

    .line 1067
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_2
    return-void

    .line 1059
    .restart local v1       #item:Lcom/android/launcher2/AppItem;
    :cond_3
    iget-boolean v2, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    iget-boolean v2, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v2, :cond_1

    .line 1060
    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuAppModel;
    .locals 1
    .parameter "name"

    .prologue
    .line 60
    const-class v0, Lcom/android/launcher2/MenuAppModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppModel;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/MenuAppModel;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->$VALUES:[Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, [Lcom/android/launcher2/MenuAppModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/MenuAppModel;

    return-object v0
.end method


# virtual methods
.method public CanMoveToSecretApps()Z
    .locals 4

    .prologue
    .line 243
    const/4 v2, 0x0

    .line 245
    .local v2, movableItem:Z
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 246
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 247
    .local v1, item:Lcom/android/launcher2/AppItem;
    iget-boolean v3, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/android/launcher2/BaseItem;->isFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    const/4 v2, 0x1

    .line 253
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    return v2
.end method

.method appsAddedOrRemoved(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, added:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .local p2, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v6, 0x1

    .line 179
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_8

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, invalidate:Z
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 182
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 183
    .local v2, item:Lcom/android/launcher2/AppItem;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v2, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 184
    const/4 v1, 0x1

    .line 185
    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->destroy()V

    goto :goto_0

    .line 188
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->setModelFlags()V

    .line 190
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 192
    .restart local v2       #item:Lcom/android/launcher2/AppItem;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v2, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-boolean v3, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v3, :cond_4

    .line 195
    iput-boolean v6, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    goto :goto_1

    .line 203
    :cond_4
    iget-boolean v3, v2, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_5

    iget-boolean v3, v2, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v3, :cond_5

    .line 204
    iput-boolean v6, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    .line 207
    :cond_5
    iget-object v3, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v3, :cond_6

    .line 208
    const/4 v1, 0x1

    .line 214
    :cond_6
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v3, :cond_3

    .line 215
    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->editBegin()V

    goto :goto_1

    .line 219
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_7
    if-eqz v1, :cond_8

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 222
    .end local v1           #invalidate:Z
    :cond_8
    return-void
.end method

.method public canUninstallApps()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeFolderName(Lcom/android/launcher2/AppFolderItem;)V
    .locals 6
    .parameter "folder"

    .prologue
    .line 266
    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 267
    new-instance v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 268
    .local v1, update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 269
    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 270
    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 275
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    .end local v1           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_0
    return-void
.end method

.method checkAndAddAppItemToSprintFolder(Lcom/android/launcher2/AppItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1363
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFeaturedFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return v6

    .line 1367
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v2

    .line 1368
    .local v2, dbHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1369
    .local v4, itemPkg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1370
    .local v0, added:Z
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFeaturedFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1371
    .local v5, pkg:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1372
    invoke-virtual {v2, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSprintFolderID(Z)J

    move-result-wide v8

    invoke-direct {p0, p1, v8, v9}, Lcom/android/launcher2/MenuAppModel;->addItemtoFolder(Lcom/android/launcher2/AppItem;J)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1373
    const/4 v0, 0x1

    goto :goto_1

    .line 1378
    .end local v5           #pkg:Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_8

    .line 1380
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFeaturedFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1393
    :cond_4
    :goto_2
    if-eqz v0, :cond_b

    .line 1394
    invoke-virtual {v2, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->removeFromSprintFolderTable(Ljava/lang/String;)Z

    .line 1398
    :cond_5
    :goto_3
    if-eqz v0, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFeaturedFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_7

    .line 1401
    sget-boolean v8, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "MenuAppModel"

    const-string v9, "checkAndAddAppItemToSprintFolder :: NO Items to add / All Items added. Deleting table"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_6
    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1403
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, "DROP TABLE IF EXISTS sprintFolder"

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1405
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_7
    if-eqz v0, :cond_0

    move v6, v7

    .line 1406
    goto :goto_0

    .line 1382
    :cond_8
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1383
    .restart local v5       #pkg:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1384
    invoke-virtual {v2, v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSprintFolderID(Z)J

    move-result-wide v8

    invoke-direct {p0, p1, v8, v9}, Lcom/android/launcher2/MenuAppModel;->addItemtoFolder(Lcom/android/launcher2/AppItem;J)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1385
    const/4 v0, 0x1

    goto :goto_4

    .line 1389
    .end local v5           #pkg:Ljava/lang/String;
    :cond_a
    if-eqz v0, :cond_4

    .line 1390
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFolderPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1396
    :cond_b
    sget-boolean v8, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "MenuAppModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkAndAddAppItemToSprintFolder :: unable to add item to folder : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public editAddFolder()Lcom/android/launcher2/AppFolderItem;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 294
    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 295
    new-instance v0, Lcom/android/launcher2/AppFolderItem;

    invoke-direct {v0}, Lcom/android/launcher2/AppFolderItem;-><init>()V

    .line 296
    .local v0, newFolder:Lcom/android/launcher2/AppFolderItem;
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 298
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 304
    :goto_0
    iput-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 305
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->editBegin()V

    .line 306
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-nez v1, :cond_0

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 314
    return-object v0

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public editBegin()V
    .locals 3

    .prologue
    .line 322
    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-nez v2, :cond_2

    .line 323
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 325
    .local v1, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->editBegin()V

    goto :goto_0

    .line 327
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 329
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    .line 331
    :cond_2
    return-void
.end method

.method public editCommit()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 346
    iget-boolean v5, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v5, :cond_c

    .line 347
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v5, :cond_b

    .line 351
    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    .line 352
    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    .line 353
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 354
    .local v2, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->editCommit()V

    .line 356
    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v5, :cond_1

    .line 357
    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    goto :goto_0

    .line 363
    :cond_1
    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_0

    iget-boolean v5, v2, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v5, :cond_0

    .line 364
    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    goto :goto_0

    .line 368
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 373
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v4, updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 378
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 379
    .local v0, folder:Lcom/android/launcher2/AppFolderItem;
    new-instance v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 380
    .local v3, update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iput v7, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 381
    iget-wide v5, v0, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 382
    iget v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 383
    iget v5, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    .line 384
    iget-object v5, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 385
    iget-boolean v5, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    iput-boolean v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    .line 386
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iput-boolean v7, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    goto :goto_1

    .line 389
    .end local v0           #folder:Lcom/android/launcher2/AppFolderItem;
    .end local v3           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_3
    iput-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    .line 392
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 393
    .restart local v2       #item:Lcom/android/launcher2/AppItem;
    iget-boolean v5, v2, Lcom/android/launcher2/BaseItem;->mDirty:Z

    if-eqz v5, :cond_5

    .line 394
    new-instance v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 395
    .restart local v3       #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_6

    .line 396
    iput v8, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 403
    :goto_3
    iget-wide v5, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 404
    iget v5, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 405
    iget v5, v2, Lcom/android/launcher2/AppItem;->mCell:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    .line 406
    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 407
    iget-boolean v5, v2, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    iput-boolean v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    .line 408
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iput-boolean v7, v2, Lcom/android/launcher2/BaseItem;->mDirty:Z

    goto :goto_2

    .line 399
    :cond_6
    const/4 v5, 0x4

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 400
    iget-object v5, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v5, :cond_7

    iget-object v5, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v5, v5, Lcom/android/launcher2/BaseItem;->mId:J

    :goto_4
    iput-wide v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    .line 401
    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    goto :goto_3

    .line 400
    :cond_7
    const-wide/16 v5, -0x1

    goto :goto_4

    .line 414
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    .end local v3           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_8
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v5, :cond_a

    .line 415
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 416
    .restart local v0       #folder:Lcom/android/launcher2/AppFolderItem;
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    .line 417
    new-instance v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 418
    .restart local v3       #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v5, 0x5

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 419
    iget-wide v5, v0, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 420
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 422
    .end local v0           #folder:Lcom/android/launcher2/AppFolderItem;
    .end local v3           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_9
    iput-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    .line 424
    :cond_a
    iput-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 425
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 426
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5, v4}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 429
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    :cond_b
    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    .line 431
    :cond_c
    return-void
.end method

.method public editInsertItemOnNewScreen(Lcom/android/launcher2/AppItem;I)V
    .locals 3
    .parameter "movedItem"
    .parameter "newScreenPos"

    .prologue
    .line 438
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 439
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 440
    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 441
    iput p2, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 442
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/launcher2/AppItem;->mCell:I

    .line 443
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 444
    .local v1, item:Lcom/android/launcher2/AppItem;
    if-eq v1, p1, :cond_0

    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-lt v2, p2, :cond_0

    .line 445
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_0

    .line 447
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 449
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public editIsDirty(Z)Z
    .locals 4
    .parameter "folderChangeOnly"

    .prologue
    const/4 v2, 0x1

    .line 457
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 458
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 460
    .local v2, rc:Z
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 461
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 462
    .local v1, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/AppItem;->editIsDirty(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 463
    const/4 v2, 0x1

    .line 468
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_3
    return v2

    .line 458
    .end local v2           #rc:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public editRemoveFolder()V
    .locals 4

    .prologue
    .line 486
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 487
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 488
    .local v0, folder:Lcom/android/launcher2/AppFolderItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 490
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown folder or folder already removed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    .line 503
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 504
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 505
    return-void

    .line 498
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-nez v1, :cond_3

    .line 499
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    .line 500
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->editDestroy()V

    goto :goto_0
.end method

.method public editRevert()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 511
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v3, :cond_6

    .line 512
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 513
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 514
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 515
    .local v0, folder:Lcom/android/launcher2/AppFolderItem;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 516
    .end local v0           #folder:Lcom/android/launcher2/AppFolderItem;
    :cond_0
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    .line 518
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 519
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 520
    .restart local v0       #folder:Lcom/android/launcher2/AppFolderItem;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 521
    .end local v0           #folder:Lcom/android/launcher2/AppFolderItem;
    :cond_2
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    .line 523
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 524
    .local v2, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->editRevert()V

    goto :goto_2

    .line 526
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_4
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 527
    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 529
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5
    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    .line 531
    :cond_6
    return-void
.end method

.method public findDisabledItemById(Ljava/lang/Long;)Lcom/android/launcher2/AppItem;
    .locals 4
    .parameter "id"

    .prologue
    .line 549
    const/4 v0, 0x0

    .line 550
    .local v0, item:Lcom/android/launcher2/AppItem;
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/android/launcher2/AppItem;
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 553
    .restart local v0       #item:Lcom/android/launcher2/AppItem;
    :cond_0
    return-object v0
.end method

.method public findItemById(J)Lcom/android/launcher2/AppItem;
    .locals 3
    .parameter "id"

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, item:Lcom/android/launcher2/AppItem;
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/android/launcher2/AppItem;
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 545
    .restart local v0       #item:Lcom/android/launcher2/AppItem;
    :cond_0
    return-object v0
.end method

.method public getAppItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    return-object v0
.end method

.method public getAvailableWidgets()Ljava/util/List;
    .locals 1
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
    .line 905
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAvailableWidgets:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    goto :goto_0
.end method

.method public getCustomMenuSecretPageCnt()I
    .locals 1

    .prologue
    .line 897
    sget v0, Lcom/android/launcher2/MenuAppModel;->mCustomMenuSecretPageCnt:I

    return v0
.end method

.method public getDisabledAppList()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v13, 0x1

    .line 717
    iget-object v11, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    if-eqz v11, :cond_1

    .line 718
    iget-object v11, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 722
    :goto_0
    iget-object v11, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v11}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c003e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 723
    .local v0, app_icon_size:I
    const/4 v6, 0x0

    .line 724
    .local v6, mIconBitmap:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 725
    .local v8, myDrable:Landroid/graphics/drawable/Drawable;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v2, disabledItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    const/4 v5, 0x0

    .line 729
    .local v5, item:Lcom/android/launcher2/AppItem;
    iget-object v11, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v11}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v12, 0x200

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    .line 731
    .local v10, packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 732
    .local v4, id:Ljava/lang/Long;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 733
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 734
    .local v9, p:Landroid/content/pm/ApplicationInfo;
    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/launcher2/MenuAppModel;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 735
    .local v7, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-boolean v11, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v11, :cond_0

    iget v11, v9, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_0

    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/launcher2/MenuAppModel;->isSprintChameleonApp(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 738
    iget-object v11, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v11}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 739
    new-instance v1, Landroid/content/ComponentName;

    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v12, "dummy"

    invoke-direct {v1, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .local v1, cn:Landroid/content/ComponentName;
    new-instance v5, Lcom/android/launcher2/AppItem;

    .end local v5           #item:Lcom/android/launcher2/AppItem;
    const/4 v11, 0x0

    invoke-direct {v5, v1, v11}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    .restart local v5       #item:Lcom/android/launcher2/AppItem;
    move-object v11, v8

    .line 741
    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 742
    const/4 v11, 0x1

    invoke-static {v6, v0, v0, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 743
    iput-object v6, v5, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 744
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v5, Lcom/android/launcher2/BaseItem;->mId:J

    .line 745
    iget-object v11, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v11}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v5, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 746
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    iget-object v11, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    invoke-interface {v11, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 732
    .end local v1           #cn:Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 720
    .end local v0           #app_icon_size:I
    .end local v2           #disabledItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .end local v3           #i:I
    .end local v4           #id:Ljava/lang/Long;
    .end local v5           #item:Lcom/android/launcher2/AppItem;
    .end local v6           #mIconBitmap:Landroid/graphics/Bitmap;
    .end local v7           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #myDrable:Landroid/graphics/drawable/Drawable;
    .end local v9           #p:Landroid/content/pm/ApplicationInfo;
    .end local v10           #packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    goto/16 :goto_0

    .line 754
    .restart local v0       #app_icon_size:I
    .restart local v2       #disabledItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .restart local v3       #i:I
    .restart local v4       #id:Ljava/lang/Long;
    .restart local v5       #item:Lcom/android/launcher2/AppItem;
    .restart local v6       #mIconBitmap:Landroid/graphics/Bitmap;
    .restart local v8       #myDrable:Landroid/graphics/drawable/Drawable;
    .restart local v10       #packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_2
    return-object v2
.end method

.method public getFolderToDelete()Lcom/android/launcher2/AppFolderItem;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    return-object v0
.end method

.method public getHiddenApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, hiddenItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #hiddenItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .restart local v0       #hiddenItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 590
    .local v2, item:Lcom/android/launcher2/AppItem;
    iget-boolean v3, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuAppModel;->isSprintChameleonApp(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 592
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 595
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 596
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-interface {v3, v0, v4, v4}, Lcom/android/launcher2/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    .line 598
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    sget-boolean v3, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 599
    const-string v4, "MenuAppModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHiddenApps. count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_4

    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_3
    return-object v0

    .line 599
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1
.end method

.method public getNormalItems(Z)Ljava/util/List;
    .locals 7
    .parameter "getAppListFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    const/4 v4, 0x0

    .line 795
    .local v4, wholeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-boolean v5, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v5, :cond_1

    .line 796
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v5, :cond_0

    .line 797
    iget-boolean v5, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 798
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 799
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 802
    :cond_1
    const/4 v3, 0x0

    .line 803
    .local v3, returnList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v4, :cond_7

    .line 804
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #returnList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 807
    .restart local v3       #returnList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz p1, :cond_3

    .line 808
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->getCustomMenuSecretPageCnt()I

    move-result v2

    .line 809
    .local v2, menuSecretPageCnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 810
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 811
    .local v0, checkItem:Lcom/android/launcher2/AppItem;
    iget-boolean v5, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v5, :cond_2

    .line 812
    iget v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    sub-int/2addr v5, v2

    iput v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 813
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 817
    .end local v0           #checkItem:Lcom/android/launcher2/AppItem;
    .end local v1           #i:I
    .end local v2           #menuSecretPageCnt:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->getCustomMenuSecretPageCnt()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 818
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 819
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 820
    .restart local v0       #checkItem:Lcom/android/launcher2/AppItem;
    iget-boolean v5, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v5, :cond_4

    .line 821
    iget v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 822
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 826
    .end local v0           #checkItem:Lcom/android/launcher2/AppItem;
    .end local v1           #i:I
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 827
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 828
    .restart local v0       #checkItem:Lcom/android/launcher2/AppItem;
    iget-boolean v5, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v5, :cond_6

    .line 829
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 835
    .end local v0           #checkItem:Lcom/android/launcher2/AppItem;
    .end local v1           #i:I
    :cond_7
    return-object v3
.end method

.method public getSecretItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 770
    const/4 v3, 0x0

    .line 771
    .local v3, wholeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v4, :cond_1

    .line 772
    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v4, :cond_0

    .line 773
    iget-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 774
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 775
    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 778
    :cond_1
    const/4 v2, 0x0

    .line 779
    .local v2, returnList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v3, :cond_3

    .line 780
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #returnList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 783
    .restart local v2       #returnList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 784
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 785
    .local v0, checkItem:Lcom/android/launcher2/AppItem;
    iget-boolean v4, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 786
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 790
    .end local v0           #checkItem:Lcom/android/launcher2/AppItem;
    .end local v1           #i:I
    :cond_3
    return-object v2
.end method

.method public getTopLevelItems()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 635
    const/4 v7, 0x0

    .line 636
    .local v7, returnList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v8, :cond_1

    .line 637
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v8, :cond_0

    .line 638
    iget-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 639
    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-eqz v8, :cond_1

    .line 640
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 644
    :cond_1
    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 646
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    const-string v9, "com.android.launcher2.prefs"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 647
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v8, "MenuView.ViewType"

    sget-object v9, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    .line 649
    .local v4, mViewType:Lcom/android/launcher2/MenuView$ViewType;
    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v4, v8, :cond_9

    .line 650
    iget-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mIsFinishFrontAppsLoader:Z

    if-nez v8, :cond_2

    .line 651
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mIsFinishFrontAppsLoader:Z

    .line 652
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherProvider;->loadFrontApps()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    .line 655
    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 656
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 657
    .local v5, newList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 658
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 660
    .local v0, chkItem:Lcom/android/launcher2/AppItem;
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    if-eqz v0, :cond_3

    iget-object v8, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_3

    .line 661
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 662
    iget-object v8, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 663
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    .end local v3           #j:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    .restart local v3       #j:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 670
    .end local v0           #chkItem:Lcom/android/launcher2/AppItem;
    .end local v3           #j:I
    :cond_5
    const/4 v2, 0x0

    .line 671
    .local v2, isExsit:Z
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_a

    .line 672
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 673
    .restart local v0       #chkItem:Lcom/android/launcher2/AppItem;
    const/4 v2, 0x0

    .line 675
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    if-eqz v0, :cond_6

    iget-object v8, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_6

    .line 676
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_3
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 677
    iget-object v8, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 678
    const/4 v2, 0x1

    .line 684
    .end local v3           #j:I
    :cond_6
    if-nez v2, :cond_7

    .line 685
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 676
    .restart local v3       #j:I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0           #chkItem:Lcom/android/launcher2/AppItem;
    .end local v1           #i:I
    .end local v2           #isExsit:Z
    .end local v3           #j:I
    .end local v4           #mViewType:Lcom/android/launcher2/MenuView$ViewType;
    .end local v5           #newList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v6           #prefs:Landroid/content/SharedPreferences;
    :cond_9
    move-object v5, v7

    .line 693
    :cond_a
    return-object v5
.end method

.method public getUninstallableApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 848
    const/4 v2, 0x0

    .line 849
    .local v2, uninstallApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 850
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #uninstallApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .restart local v2       #uninstallApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 852
    .local v1, item:Lcom/android/launcher2/AppItem;
    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-nez v3, :cond_0

    .line 858
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    if-nez v3, :cond_0

    .line 859
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 862
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 863
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->MENU_INSTALL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 865
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    sget-boolean v3, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 866
    const-string v4, "MenuAppModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUninstallableApps. count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_5

    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_4
    return-object v2

    .line 866
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1
.end method

.method public hasHiddenApps()Z
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecretApps()Z
    .locals 3

    .prologue
    .line 879
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 880
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 881
    .local v1, item:Lcom/android/launcher2/AppItem;
    iget-boolean v2, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v2, :cond_0

    .line 882
    const/4 v2, 0x1

    .line 886
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasSecretWidget()Z
    .locals 1

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mHasPreSecretWidget:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->hasSecretApps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    :cond_0
    const/4 v0, 0x1

    .line 893
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateTopLevelItems()V
    .locals 1

    .prologue
    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    .line 930
    return-void
.end method

.method isDisableAppListEmpty()Z
    .locals 1

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->getDisabledAppList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    const/4 v0, 0x0

    .line 713
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSecretItem(Lcom/android/launcher2/AppItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 875
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadSprintFolderPackages()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1348
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .line 1349
    .local v0, provider:Lcom/android/launcher2/LauncherProvider;
    const-string v3, "content://com.sec.android.app.launcher.settings/sprintFolder"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1350
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1351
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1352
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1353
    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1354
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFolderPackages:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1356
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mSprintFeaturedFolderPackages:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1359
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1360
    return-void
.end method

.method normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .parameter "keepEmptyPages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 952
    .local p1, appItemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    .local p2, normalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;,"Lcom/android/launcher2/MenuAppModel$Normalizer<Lcom/android/launcher2/AppItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 953
    .local v2, topItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 954
    .local v1, item:Lcom/android/launcher2/AppItem;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v3, :cond_0

    .line 957
    :cond_1
    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_2

    .line 958
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    check-cast v1, Lcom/android/launcher2/AppFolderItem;

    .end local v1           #item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v1, p2}, Lcom/android/launcher2/AppFolderItem;->normalize(Lcom/android/launcher2/MenuAppModel$Normalizer;)V

    goto :goto_0

    .line 960
    .restart local v1       #item:Lcom/android/launcher2/AppItem;
    :cond_2
    iget-object v3, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-nez v3, :cond_0

    .line 964
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    if-nez v3, :cond_0

    .line 965
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 968
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_4
    iget v3, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    invoke-interface {p2, v2, v3, p3}, Lcom/android/launcher2/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    .line 969
    return-object v2
.end method

.method public normalizeModel(Z)V
    .locals 3
    .parameter "keepEmptyPages"

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher2/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    .line 982
    :cond_0
    sget-boolean v0, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 983
    const-string v1, "MenuAppModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normalizeModel. Normalizer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_1
    return-void

    .line 983
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    .line 992
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    .line 993
    return-void
.end method

.method onModelRefreshed()V
    .locals 1

    .prologue
    .line 1001
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    .line 1002
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    .line 1003
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 1004
    return-void
.end method

.method public releaseShadows()V
    .locals 3

    .prologue
    .line 1010
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 1011
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 1012
    .local v1, item:Lcom/android/launcher2/AppItem;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1015
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_0
    return-void
.end method

.method public setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V
    .locals 1
    .parameter "folder"

    .prologue
    .line 1025
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    .line 1026
    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    .line 1027
    return-void
.end method

.method public setHasPreSecretWidget(Z)V
    .locals 0
    .parameter "hasPreSecretWidget"

    .prologue
    .line 909
    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppModel;->mHasPreSecretWidget:Z

    .line 910
    return-void
.end method

.method public setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    .line 1038
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1039
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0a0024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    .line 1042
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    .line 1043
    return-void
.end method

.method public setModelItems(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, allApps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    const/4 v1, 0x0

    .line 1081
    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    .line 1082
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    .line 1083
    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    .line 1084
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 1091
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->setModelFlags()V

    .line 1092
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v0, :cond_0

    .line 1093
    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    .line 1094
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 1096
    :cond_0
    return-void
.end method

.method public setNormalizer(Lcom/android/launcher2/MenuAppModel$Normalizer;I)V
    .locals 1
    .parameter
    .parameter "maxItemsPerScreen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1108
    .local p1, normalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;,"Lcom/android/launcher2/MenuAppModel$Normalizer<Lcom/android/launcher2/AppItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    if-eq p2, v0, :cond_1

    .line 1109
    :cond_0
    iput p2, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    .line 1110
    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    .line 1111
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 1113
    :cond_1
    return-void
.end method

.method public updateCanUninstallApps()V
    .locals 0

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->setModelFlags()V

    .line 902
    return-void
.end method
