.class public Lcom/android/launcher2/AppFolderItem;
.super Lcom/android/launcher2/AppItem;
.source "AppFolderItem.java"

# interfaces
.implements Lcom/android/launcher2/FolderItem;


# instance fields
.field private listeners:Ljava/util/ArrayList;
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

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOpened:Z

.field private mSavedItems:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/AppItem;-><init>(Lcom/android/launcher2/BaseItem$Type;Landroid/content/ComponentName;Z)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    .line 36
    iput-boolean v2, p0, Lcom/android/launcher2/AppFolderItem;->mOpened:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mEnabled:Z

    .line 41
    return-void
.end method

.method private adjustPositions(III)V
    .locals 3
    .parameter "minPos"
    .parameter "maxPos"
    .parameter "adjustValue"

    .prologue
    .line 135
    if-gt p1, p2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    .line 137
    .local v1, item:Lcom/android/launcher2/AppItem;
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-lt v2, p1, :cond_0

    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-gt v2, p2, :cond_0

    .line 138
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/2addr v2, p3

    iput v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_0

    .line 141
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    return-void
.end method

.method private freeEditResources()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    .line 254
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 56
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/AppFolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    .line 57
    return-void
.end method

.method public addItemAt(Lcom/android/launcher2/BaseItem;I)V
    .locals 7
    .parameter "item"
    .parameter "position"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppFolderItem;->isValidItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Can only add MENU_APPs to MENU_FOLDERs"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v1, p1

    .line 80
    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 81
    .local v1, appItem:Lcom/android/launcher2/AppItem;
    iget-object v5, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 82
    .local v4, size:I
    if-ltz p2, :cond_1

    if-le p2, v4, :cond_2

    .line 83
    :cond_1
    move p2, v4

    .line 85
    :cond_2
    iget-object v5, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne v5, p0, :cond_5

    .line 87
    iget v5, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v5, p2, :cond_3

    .line 88
    iget v5, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ge v5, p2, :cond_4

    .line 89
    iget v5, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v3, v5, 0x1

    .line 90
    .local v3, minAdjustPos:I
    add-int/lit8 v2, p2, -0x1

    .line 91
    .local v2, maxAdjustPos:I
    const/4 v0, -0x1

    .line 92
    .local v0, adjustDelta:I
    add-int/lit8 p2, p2, -0x1

    .line 98
    :goto_0
    invoke-direct {p0, v3, v2, v0}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    .line 99
    iput p2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 118
    .end local v0           #adjustDelta:I
    .end local v2           #maxAdjustPos:I
    .end local v3           #minAdjustPos:I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->sort()V

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->itemsChanged()V

    .line 120
    return-void

    .line 94
    :cond_4
    move v3, p2

    .line 95
    .restart local v3       #minAdjustPos:I
    iget v5, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v2, v5, -0x1

    .line 96
    .restart local v2       #maxAdjustPos:I
    const/4 v0, 0x1

    .restart local v0       #adjustDelta:I
    goto :goto_0

    .line 103
    .end local v0           #adjustDelta:I
    .end local v2           #maxAdjustPos:I
    .end local v3           #minAdjustPos:I
    :cond_5
    add-int/lit8 v2, v4, -0x1

    .line 104
    .restart local v2       #maxAdjustPos:I
    move v3, p2

    .line 105
    .restart local v3       #minAdjustPos:I
    const/4 v0, 0x1

    .line 107
    .restart local v0       #adjustDelta:I
    iget-object v5, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v5, :cond_6

    .line 108
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 112
    :goto_2
    invoke-direct {p0, v3, v2, v0}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    .line 113
    iput p2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 114
    const/4 v5, -0x1

    iput v5, v1, Lcom/android/launcher2/AppItem;->mCell:I

    .line 115
    iput-object p0, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 116
    iget-object v5, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v5, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 110
    :cond_6
    iget-object v5, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v5, p1}, Lcom/android/launcher2/AppFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_2
.end method

.method public addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method public childDestroyed(Lcom/android/launcher2/AppItem;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    return-void
.end method

.method public contains(Lcom/android/launcher2/BaseItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsNonSystemApps()Z
    .locals 3

    .prologue
    .line 198
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 199
    .local v1, item:Lcom/android/launcher2/AppItem;
    iget-boolean v2, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 201
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-super {p0}, Lcom/android/launcher2/AppItem;->destroy()V

    .line 211
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 212
    .local v1, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AppItem;->parentDestroyed(Lcom/android/launcher2/AppFolderItem;)V

    goto :goto_0

    .line 214
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 216
    .restart local v1       #item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AppItem;->parentDestroyed(Lcom/android/launcher2/AppFolderItem;)V

    goto :goto_1

    .line 218
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    iput-object v3, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    .line 219
    invoke-direct {p0}, Lcom/android/launcher2/AppFolderItem;->freeEditResources()V

    .line 220
    iput-object v3, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    .line 221
    return-void
.end method

.method public editBegin()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/android/launcher2/AppItem;->editBegin()V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    .line 228
    return-void
.end method

.method public editCommit()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Lcom/android/launcher2/AppItem;->editCommit()V

    .line 233
    invoke-direct {p0}, Lcom/android/launcher2/AppFolderItem;->freeEditResources()V

    .line 234
    return-void
.end method

.method public editDestroy()V
    .locals 3

    .prologue
    .line 237
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 238
    .local v1, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->editParentDestroyed()V

    goto :goto_0

    .line 239
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_0
    return-void
.end method

.method public editRevert()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/android/launcher2/AppItem;->editRevert()V

    .line 244
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    .line 246
    invoke-direct {p0}, Lcom/android/launcher2/AppFolderItem;->freeEditResources()V

    .line 247
    return-void
.end method

.method public getAllItems()Ljava/util/List;
    .locals 2
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
    .line 355
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 335
    iget-wide v0, p0, Lcom/android/launcher2/BaseItem;->mId:J

    return-wide v0
.end method

.method public getItemAt(I)Lcom/android/launcher2/BaseItem;
    .locals 2
    .parameter "position"

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, item:Lcom/android/launcher2/BaseItem;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/android/launcher2/BaseItem;
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 157
    .restart local v0       #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mEnabled:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mOpened:Z

    return v0
.end method

.method public isValidItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 178
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method itemsChanged()V
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onItemsChanged()V

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_0
    return-void
.end method

.method loadItem(Lcom/android/launcher2/AppItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iput-object p0, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 264
    return-void
.end method

.method public normalize(Lcom/android/launcher2/MenuAppModel$Normalizer;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, normalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;,"Lcom/android/launcher2/MenuAppModel$Normalizer<Lcom/android/launcher2/AppItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/launcher2/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    .line 272
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, -0x1

    .line 283
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 284
    check-cast v0, Lcom/android/launcher2/AppItem;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 285
    iget v0, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    .line 286
    iput v2, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 287
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 288
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e00c2

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 289
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->itemsChanged()V

    .line 291
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 331
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->mEnabled:Z

    .line 310
    return-void
.end method

.method public setOpened(Z)V
    .locals 0
    .parameter "v"

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->mOpened:Z

    .line 319
    return-void
.end method

.method public setTitle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "title"

    .prologue
    .line 295
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    :cond_1
    iput-object p2, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 298
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppModel;->changeFolderName(Lcom/android/launcher2/AppFolderItem;)V

    .line 300
    :cond_2
    return-void
.end method

.method public sort()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getCurrentComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    return-void
.end method
