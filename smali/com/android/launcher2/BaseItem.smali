.class public abstract Lcom/android/launcher2/BaseItem;
.super Ljava/lang/Object;
.source "BaseItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/BaseItem$Type;
    }
.end annotation


# static fields
.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field public mBadgeCount:I

.field public mDirty:Z

.field public mIconBitmap:Landroid/graphics/Bitmap;

.field public mIconMovie:Landroid/graphics/Movie;

.field public mIconResId:I

.field public mIconShadowBitmap:Landroid/graphics/Bitmap;

.field public mId:J

.field public mScreen:I

.field public mSecretItem:Z

.field public mTitle:Ljava/lang/String;

.field public mTitleResId:I

.field public final mType:Lcom/android/launcher2/BaseItem$Type;

.field public viewForThisHasSeenLightOfDayBefore:Z


# direct methods
.method protected constructor <init>(Lcom/android/launcher2/BaseItem$Type;)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 69
    iput-boolean v2, p0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    .line 104
    iput-object p1, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    .line 105
    return-void
.end method

.method public static getContainingFolderId(Lcom/android/launcher2/BaseItem;)J
    .locals 4
    .parameter "item"

    .prologue
    .line 192
    instance-of v2, p0, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-object v2, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v2, :cond_1

    .line 193
    check-cast p0, Lcom/android/launcher2/AppItem;

    .end local p0
    iget-object v2, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    .line 199
    .local v0, id:J
    :cond_0
    :goto_0
    return-wide v0

    .line 194
    .end local v0           #id:J
    .restart local p0
    :cond_1
    instance-of v2, p0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_2

    .line 195
    check-cast p0, Lcom/android/launcher2/HomeItem;

    .end local p0
    iget-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    .line 196
    .restart local v0       #id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 199
    .end local v0           #id:J
    .restart local p0
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static isFolder(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isItemInFolder(Lcom/android/launcher2/BaseItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 176
    instance-of v1, p0, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-object v1, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_0

    move v1, v2

    .line 188
    :goto_0
    return v1

    .line 178
    :cond_0
    instance-of v1, p0, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 179
    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 181
    .local v0, homeItem:Lcom/android/launcher2/HomeItem;
    iget-wide v3, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v5, -0x64

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    iget-wide v3, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v5, -0x65

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    iget-wide v3, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    move v1, v2

    .line 184
    goto :goto_0

    .line 188
    .end local v0           #homeItem:Lcom/android/launcher2/HomeItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWidget(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SURFACE_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public final getItemType()Lcom/android/launcher2/BaseItem$Type;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    return-object v0
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    return v0
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 152
    iput p1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 153
    return-void
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method
