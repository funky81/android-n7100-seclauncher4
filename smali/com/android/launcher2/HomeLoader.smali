.class public Lcom/android/launcher2/HomeLoader;
.super Ljava/lang/Object;
.source "HomeLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeLoader$1;
    }
.end annotation


# instance fields
.field private final mBadgeCache:Lcom/android/launcher2/BadgeCache;

.field private final mIsSafeMode:Z

.field private final mLauncherApp:Lcom/android/launcher2/LauncherApplication;

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPkgResCache:Lcom/android/launcher2/PkgResCache;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V
    .locals 1
    .parameter "context"
    .parameter "pkgResCache"
    .parameter "badgeCache"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/launcher2/HomeLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    .line 56
    iput-object p2, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 57
    iput-object p3, p0, Lcom/android/launcher2/HomeLoader;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    .line 58
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 59
    iget-object v0, p0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeLoader;->mIsSafeMode:Z

    .line 60
    return-void
.end method

.method private isComponentActive(Landroid/content/ComponentName;[Landroid/content/pm/ComponentInfo;)Z
    .locals 8
    .parameter "cn"
    .parameter "components"

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, active:Z
    if-eqz p2, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, className:Ljava/lang/String;
    move-object v1, p2

    .local v1, arr$:[Landroid/content/pm/ComponentInfo;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v1, v5

    .line 81
    .local v3, ci:Landroid/content/pm/ComponentInfo;
    iget-object v7, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 82
    iget-boolean v7, v3, Landroid/content/pm/ComponentInfo;->exported:Z

    if-eqz v7, :cond_1

    .line 83
    iget-object v7, p0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 84
    .local v2, ces:I
    const/4 v7, 0x1

    if-eq v2, v7, :cond_0

    if-nez v2, :cond_1

    iget-boolean v7, v3, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v7, :cond_1

    .line 87
    :cond_0
    const/4 v0, 0x1

    .line 94
    .end local v1           #arr$:[Landroid/content/pm/ComponentInfo;
    .end local v2           #ces:I
    .end local v3           #ci:Landroid/content/pm/ComponentInfo;
    .end local v4           #className:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_1
    return v0

    .line 80
    .restart local v1       #arr$:[Landroid/content/pm/ComponentInfo;
    .restart local v3       #ci:Landroid/content/pm/ComponentInfo;
    .restart local v4       #className:Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private loadBitmapFromIconResource(Landroid/content/Intent$ShortcutIconResource;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "resource"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, icon:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 107
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, id:I
    if-eqz v1, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v4, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    .end local v1           #id:I
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private refreshShortcut(Lcom/android/launcher2/HomeItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 127
    move-object v2, p1

    check-cast v2, Lcom/android/launcher2/HomeShortcutItem;

    .line 128
    .local v2, shortcut:Lcom/android/launcher2/HomeShortcutItem;
    const/4 v0, 0x0

    .line 129
    .local v0, changed:Z
    iget-object v1, v2, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 130
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 131
    iget-object v4, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_2

    .line 132
    new-instance v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v3}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 133
    .local v3, titleIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    iget-object v4, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v4, v3, v1}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    .line 134
    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eq v4, v5, :cond_0

    .line 135
    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 136
    const/4 v0, 0x1

    .line 138
    :cond_0
    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 139
    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    .line 154
    .end local v3           #titleIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    :cond_1
    :goto_0
    return v0

    .line 142
    :cond_2
    iget-object v4, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_1

    .line 143
    iget-object v4, p0, Lcom/android/launcher2/HomeLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/launcher2/LauncherProvider;->getShortcutInfo(Lcom/android/launcher2/HomeItem;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v3

    .line 144
    .local v3, titleIcon:Lcom/android/launcher2/HomeShortcutItem;
    iget-object v4, v3, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eq v4, v5, :cond_3

    .line 145
    iget-object v4, v3, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 146
    const/4 v0, 0x1

    .line 148
    :cond_3
    iget-object v4, v3, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    iget-object v4, v3, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 150
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public removePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, sHomeItemIdMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeItem;>;"
    .local p3, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 171
    .local v0, homeItem:Lcom/android/launcher2/HomeItem;
    const/4 v2, 0x0

    .line 172
    .local v2, itemPkg:Ljava/lang/String;
    sget-object v3, Lcom/android/launcher2/HomeLoader$1;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v4, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v4}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 181
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 185
    .end local v0           #homeItem:Lcom/android/launcher2/HomeItem;
    .end local v2           #itemPkg:Ljava/lang/String;
    :cond_1
    return-void

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method updateBadgeCounts(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, sHomeItemIdMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeItem;>;"
    .local p2, badgeCounts:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v5, updated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    .line 197
    .local v3, item:Lcom/android/launcher2/HomeItem;
    iget-object v6, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v7, :cond_0

    move-object v4, v3

    .line 198
    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    .line 199
    .local v4, shortcut:Lcom/android/launcher2/HomeShortcutItem;
    iget-object v6, v4, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    .line 200
    iget-object v6, v4, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 201
    .local v1, cn:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 202
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 203
    .local v0, badgeCache:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v4, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-eq v6, v7, :cond_0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    .line 205
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    .end local v0           #badgeCache:Ljava/lang/Integer;
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #item:Lcom/android/launcher2/HomeItem;
    .end local v4           #shortcut:Lcom/android/launcher2/HomeShortcutItem;
    :cond_1
    return-object v5
.end method

.method public updatePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter "packageName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, sHomeItemIdMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeItem;>;"
    .local p3, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    .local p4, updated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/16 v6, 0x207

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 239
    .local v4, pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_2

    .line 240
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/HomeLoader;->removePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 299
    :cond_1
    return-void

    .line 233
    .end local v4           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 234
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    .restart local v4       #pkgInfo:Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 244
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 247
    .local v2, homeItem:Lcom/android/launcher2/HomeItem;
    sget-object v5, Lcom/android/launcher2/HomeLoader$1;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v6, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 255
    :pswitch_0
    invoke-virtual {v2}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 256
    .local v0, cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 257
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v5}, Lcom/android/launcher2/HomeLoader;->isComponentActive(Landroid/content/ComponentName;[Landroid/content/pm/ComponentInfo;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 258
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeLoader;->refreshShortcut(Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 260
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    .end local v0           #cn:Landroid/content/ComponentName;
    :pswitch_1
    invoke-virtual {v2}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 268
    .restart local v0       #cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 269
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v5}, Lcom/android/launcher2/HomeLoader;->isComponentActive(Landroid/content/ComponentName;[Landroid/content/pm/ComponentInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 270
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 277
    .end local v0           #cn:Landroid/content/ComponentName;
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 278
    .restart local v0       #cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 279
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v5}, Lcom/android/launcher2/HomeLoader;->isComponentActive(Landroid/content/ComponentName;[Landroid/content/pm/ComponentInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 280
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 287
    .end local v0           #cn:Landroid/content/ComponentName;
    :pswitch_3
    invoke-virtual {v2}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 288
    .restart local v0       #cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 289
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, v0, v5}, Lcom/android/launcher2/HomeLoader;->isComponentActive(Landroid/content/ComponentName;[Landroid/content/pm/ComponentInfo;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 290
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 292
    :cond_5
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updatePackageAvailability(Ljava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter "packageName"
    .parameter "available"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, sHomeItemIdMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeItem;>;"
    .local p4, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    .local p5, updated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    if-eqz p3, :cond_3

    .line 319
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v6, 0x3

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 324
    .local v4, pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v4, :cond_5

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_5

    .line 325
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 326
    .local v2, homeItem:Lcom/android/launcher2/HomeItem;
    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v5, v6, :cond_1

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_0

    .line 327
    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 328
    .local v0, cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v5}, Lcom/android/launcher2/HomeLoader;->isComponentActive(Landroid/content/ComponentName;[Landroid/content/pm/ComponentInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 330
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 321
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #homeItem:Lcom/android/launcher2/HomeItem;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 322
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    .restart local v4       #pkgInfo:Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 331
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #cn:Landroid/content/ComponentName;
    .restart local v2       #homeItem:Lcom/android/launcher2/HomeItem;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeLoader;->refreshShortcut(Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 332
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 340
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #homeItem:Lcom/android/launcher2/HomeItem;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 341
    .restart local v2       #homeItem:Lcom/android/launcher2/HomeItem;
    sget-object v5, Lcom/android/launcher2/HomeLoader$1;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v6, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 345
    :pswitch_1
    invoke-virtual {v2}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 346
    iget-object v5, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v5}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 347
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 348
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 354
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 355
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 361
    .end local v2           #homeItem:Lcom/android/launcher2/HomeItem;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    return-void

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
