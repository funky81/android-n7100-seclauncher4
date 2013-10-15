.class public Lcom/android/launcher2/AppItem;
.super Lcom/android/launcher2/BaseItem;
.source "AppItem.java"


# static fields
.field private static final DEBUGGABLE:Z


# instance fields
.field public mCell:I

.field public final mComponentName:Landroid/content/ComponentName;

.field public mCreateTime:J

.field protected mFolder:Lcom/android/launcher2/AppFolderItem;

.field public mHidden:Z

.field private mSavedCell:I

.field private mSavedDirty:Z

.field private mSavedFolder:Lcom/android/launcher2/AppFolderItem;

.field private mSavedHidden:Z

.field private mSavedScreen:I

.field private mSavedSecret:Z

.field public mScreenLocation:[I

.field public final mSystemApp:Z

.field public mUnavailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/AppItem;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "cn"
    .parameter "isSystemApp"

    .prologue
    const/4 v2, 0x0

    .line 93
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/BaseItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/AppItem;->mCreateTime:J

    .line 63
    iput-boolean v2, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    .line 94
    iput-object p1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    .line 95
    iput-boolean p2, p0, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    .line 96
    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher2/BaseItem$Type;Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "type"
    .parameter "cn"
    .parameter "isSystemApp"

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p1}, Lcom/android/launcher2/BaseItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/AppItem;->mCreateTime:J

    .line 63
    iput-boolean v2, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    .line 106
    iput-object p2, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    .line 107
    iput-boolean p3, p0, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    .line 108
    return-void
.end method

.method public static dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "tag"
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    sget-boolean v2, Lcom/android/launcher2/AppItem;->DEBUGGABLE:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 204
    .local v1, info:Lcom/android/launcher2/AppItem;
    sget-boolean v2, Lcom/android/launcher2/AppItem;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " createTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/launcher2/AppItem;->mCreateTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    .end local v1           #info:Lcom/android/launcher2/AppItem;
    :cond_2
    return-void
.end method

.method private freeEditResources()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    .line 260
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppFolderItem;->childDestroyed(Lcom/android/launcher2/AppItem;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eq v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppFolderItem;->childDestroyed(Lcom/android/launcher2/AppItem;)V

    .line 121
    :cond_1
    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 122
    iput-object v2, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 123
    iput-object v2, p0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 124
    iput-object v2, p0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 125
    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    .line 126
    return-void
.end method

.method public editBegin()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    .line 210
    iget v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    .line 211
    iget v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    .line 212
    iget-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedDirty:Z

    .line 213
    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedHidden:Z

    .line 214
    iget-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedSecret:Z

    .line 215
    return-void
.end method

.method public editCommit()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppItem;->editIsDirty(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AppItem;->freeEditResources()V

    .line 222
    return-void
.end method

.method public editIsDirty(Z)Z
    .locals 2
    .parameter "folderChangeOnly"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    iget v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    iget v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedHidden:Z

    iget-boolean v1, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedSecret:Z

    iget-boolean v1, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public editParentDestroyed()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 236
    iput v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 237
    iput v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 238
    return-void
.end method

.method public editRevert()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 242
    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    iput v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 243
    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 244
    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedDirty:Z

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 245
    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedHidden:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    .line 246
    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedSecret:Z

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 247
    invoke-direct {p0}, Lcom/android/launcher2/AppItem;->freeEditResources()V

    .line 248
    return-void
.end method

.method public editRevertCell()V
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 253
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 150
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 153
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    :cond_0
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, pkgName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    return-object v0
.end method

.method public getPosition()I
    .locals 3

    .prologue
    .line 312
    const/4 v0, -0x1

    .line 314
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getCurrentComparator()Ljava/util/Comparator;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-ne v1, v2, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 323
    :goto_0
    return v0

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    :goto_1
    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_1
.end method

.method public getSavedCell()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    return v0
.end method

.method public getSavedScreen()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 336
    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 337
    iput v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 338
    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    .line 340
    return-void
.end method

.method public makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 180
    .local v0, homeItem:Lcom/android/launcher2/HomeShortcutItem;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 181
    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 184
    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 185
    iget-boolean v1, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    iput-boolean v1, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 188
    iget v1, p0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    iput v1, v0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    .line 189
    return-object v0
.end method

.method public moveSecretBox()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 297
    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 298
    iput v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 299
    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 301
    return-void
.end method

.method public parentDestroyed(Lcom/android/launcher2/AppFolderItem;)V
    .locals 3
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 268
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne p1, v0, :cond_0

    .line 269
    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 270
    iput v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 271
    iput v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne p1, v0, :cond_1

    .line 276
    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    .line 277
    iput v1, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    .line 278
    iput v1, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    .line 280
    :cond_1
    return-void
.end method

.method public removeFromFolder()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 289
    .local v0, folder:Lcom/android/launcher2/AppFolderItem;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 291
    iget v1, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 292
    iget v1, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 294
    :cond_0
    return-void
.end method

.method public removeSecretBox()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 305
    iput v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 306
    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 308
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    .line 329
    iput p1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    iput p1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " folderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " unavailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public unhide()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    .line 344
    return-void
.end method
