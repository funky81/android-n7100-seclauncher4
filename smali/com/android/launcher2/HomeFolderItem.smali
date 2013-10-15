.class Lcom/android/launcher2/HomeFolderItem;
.super Lcom/android/launcher2/HomeItem;
.source "HomeFolderItem.java"

# interfaces
.implements Lcom/android/launcher2/FolderItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeFolderItem$FolderListener;
    }
.end annotation


# static fields
.field public static final IN_FOLDER_POSITION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeFolderItem$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mOpened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 357
    new-instance v0, Lcom/android/launcher2/HomeFolderItem$1;

    invoke-direct {v0}, Lcom/android/launcher2/HomeFolderItem$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeFolderItem;->IN_FOLDER_POSITION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method private adjustPositions(III)V
    .locals 3
    .parameter "minPos"
    .parameter "maxPos"
    .parameter "adjustValue"

    .prologue
    .line 182
    if-gt p1, p2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 184
    .local v1, item:Lcom/android/launcher2/HomeItem;
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-lt v2, p1, :cond_0

    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-gt v2, p2, :cond_0

    .line 185
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/2addr v2, p3

    iput v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_0

    .line 188
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/launcher2/HomeItem;
    :cond_1
    return-void
.end method

.method static createFromAppFolderItem(Landroid/content/Context;Lcom/android/launcher2/AppFolderItem;JIII)Lcom/android/launcher2/HomeFolderItem;
    .locals 16
    .parameter "ctx"
    .parameter "appFolderItem"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 57
    new-instance v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v2}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    .line 58
    .local v2, item:Lcom/android/launcher2/HomeFolderItem;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 59
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    iput-boolean v1, v2, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 61
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 64
    const/4 v12, 0x0

    .line 65
    .local v12, badgeSum:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v14

    .line 66
    .local v14, itemCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v14, :cond_1

    .line 67
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppItem;

    .line 69
    .local v11, appItem:Lcom/android/launcher2/AppItem;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v15, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v15}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 71
    .local v15, titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    iget v1, v11, Lcom/android/launcher2/BaseItem;->mIconResId:I

    iput v1, v15, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iget-object v3, v11, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3, v15}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    .line 75
    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v4

    .line 76
    .local v4, shortcut:Lcom/android/launcher2/HomeShortcutItem;
    iget-object v1, v15, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 81
    .end local v15           #titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 82
    iget-wide v5, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v5, v4, Lcom/android/launcher2/HomeItem;->container:J

    .line 83
    iget-wide v5, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iget v7, v4, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v8, v4, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v9, v4, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v10}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 85
    iget v1, v11, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    add-int/2addr v12, v1

    .line 66
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 78
    .end local v4           #shortcut:Lcom/android/launcher2/HomeShortcutItem;
    :cond_0
    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v4

    .restart local v4       #shortcut:Lcom/android/launcher2/HomeShortcutItem;
    goto :goto_1

    .line 88
    .end local v4           #shortcut:Lcom/android/launcher2/HomeShortcutItem;
    .end local v11           #appItem:Lcom/android/launcher2/AppItem;
    :cond_1
    iput v12, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    .line 89
    return-object v2
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 105
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/HomeFolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    .line 106
    return-void
.end method

.method public addItemAt(Lcom/android/launcher2/BaseItem;I)V
    .locals 11
    .parameter "item"
    .parameter "position"

    .prologue
    const/4 v10, -0x1

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFolderItem;->isValidItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 125
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can only add HOME_APPLICATIONs or HOME_SHORTCUTs to HOME_FOLDERs. Tried to add "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v1, p1

    .line 129
    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 130
    .local v1, homeItem:Lcom/android/launcher2/HomeItem;
    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 131
    .local v5, size:I
    if-ltz p2, :cond_1

    if-le p2, v5, :cond_2

    .line 132
    :cond_1
    move p2, v5

    .line 134
    :cond_2
    iget-wide v6, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget-wide v8, p0, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 136
    iget v6, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v6, p2, :cond_3

    .line 137
    iget v6, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ge v6, p2, :cond_4

    .line 138
    iget v6, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v4, v6, 0x1

    .line 139
    .local v4, minAdjustPos:I
    add-int/lit8 v3, p2, -0x1

    .line 140
    .local v3, maxAdjustPos:I
    const/4 v0, -0x1

    .line 141
    .local v0, adjustDelta:I
    add-int/lit8 p2, p2, -0x1

    .line 147
    :goto_0
    invoke-direct {p0, v4, v3, v0}, Lcom/android/launcher2/HomeFolderItem;->adjustPositions(III)V

    .line 148
    iput p2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 167
    .end local v0           #adjustDelta:I
    .end local v3           #maxAdjustPos:I
    .end local v4           #minAdjustPos:I
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 168
    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onAdd(Lcom/android/launcher2/BaseItem;)V

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 143
    .end local v2           #i:I
    :cond_4
    move v4, p2

    .line 144
    .restart local v4       #minAdjustPos:I
    iget v6, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v3, v6, -0x1

    .line 145
    .restart local v3       #maxAdjustPos:I
    const/4 v0, 0x1

    .restart local v0       #adjustDelta:I
    goto :goto_0

    .line 152
    .end local v0           #adjustDelta:I
    .end local v3           #maxAdjustPos:I
    .end local v4           #minAdjustPos:I
    :cond_5
    add-int/lit8 v3, v5, -0x1

    .line 153
    .restart local v3       #maxAdjustPos:I
    move v4, p2

    .line 154
    .restart local v4       #minAdjustPos:I
    const/4 v0, 0x1

    .line 160
    .restart local v0       #adjustDelta:I
    invoke-direct {p0, v4, v3, v0}, Lcom/android/launcher2/HomeFolderItem;->adjustPositions(III)V

    .line 161
    iput v10, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 162
    iput v10, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 163
    iget-wide v6, p0, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v6, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 164
    iput p2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 165
    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 170
    .end local v0           #adjustDelta:I
    .end local v3           #maxAdjustPos:I
    .end local v4           #minAdjustPos:I
    .restart local v2       #i:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->sort()V

    .line 171
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->itemsChanged()V

    .line 172
    return-void
.end method

.method public addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public contains(Lcom/android/launcher2/BaseItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getContainer()J
    .locals 2

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 367
    iget-wide v0, p0, Lcom/android/launcher2/BaseItem;->mId:J

    return-wide v0
.end method

.method public getItemAt(I)Lcom/android/launcher2/BaseItem;
    .locals 2
    .parameter "position"

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, item:Lcom/android/launcher2/BaseItem;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/android/launcher2/BaseItem;
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 204
    .restart local v0       #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->mEnabled:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->mOpened:Z

    return v0
.end method

.method public isValidItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 225
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method itemsChanged()V
    .locals 2

    .prologue
    .line 281
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onItemsChanged()V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method loadItem(Lcom/android/launcher2/HomeItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    return-void
.end method

.method public normalize(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, changes:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->sort()V

    .line 305
    iget-object v2, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 306
    iget-object v2, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 307
    .local v1, item:Lcom/android/launcher2/HomeItem;
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v2, v0, :cond_0

    .line 308
    iput v0, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 309
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 312
    .end local v1           #item:Lcom/android/launcher2/HomeItem;
    :cond_1
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 259
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    iget v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-object v2, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher2/HomeFolderItem;->adjustPositions(III)V

    .line 240
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1, p1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onRemove(Lcom/android/launcher2/BaseItem;)V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v2, 0x7f0e00c2

    invoke-virtual {v1, v2}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 244
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->itemsChanged()V

    .line 245
    return-void
.end method

.method public removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 273
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->mEnabled:Z

    .line 328
    return-void
.end method

.method public setOpened(Z)V
    .locals 0
    .parameter "v"

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->mOpened:Z

    .line 337
    return-void
.end method

.method public setTitle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "title"

    .prologue
    .line 249
    iput-object p2, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1, p2}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onTitleChanged(Ljava/lang/String;)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {p1, p0}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 254
    return-void
.end method

.method public sort()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/HomeFolderItem;->IN_FOLDER_POSITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 278
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeFolderItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/HomeItem;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Lcom/android/launcher2/HomeItem;->unbind()V

    .line 317
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 318
    return-void
.end method
