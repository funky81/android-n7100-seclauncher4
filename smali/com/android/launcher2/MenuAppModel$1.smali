.class final Lcom/android/launcher2/MenuAppModel$1;
.super Ljava/lang/Object;
.source "MenuAppModel.java"

# interfaces
.implements Lcom/android/launcher2/MenuAppModel$Normalizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher2/MenuAppModel$Normalizer",
        "<",
        "Lcom/android/launcher2/AppItem;",
        ">;"
    }
.end annotation


# instance fields
.field priorScreen:I

.field targetCell:I

.field targetScreen:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private normalizeItems(Lcom/android/launcher2/AppItem;IZ)V
    .locals 4
    .parameter "item"
    .parameter "maxItemsPerScreen"
    .parameter "keepEmptyPages"

    .prologue
    const/4 v3, 0x0

    .line 1224
    iget v0, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1226
    .local v0, screen:I
    iget v1, p0, Lcom/android/launcher2/MenuAppModel$1;->priorScreen:I

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1227
    if-eqz p3, :cond_0

    .line 1229
    iget v1, p0, Lcom/android/launcher2/MenuAppModel$1;->targetScreen:I

    iget v2, p0, Lcom/android/launcher2/MenuAppModel$1;->priorScreen:I

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/MenuAppModel$1;->targetScreen:I

    .line 1232
    :cond_0
    iget v1, p0, Lcom/android/launcher2/MenuAppModel$1;->targetCell:I

    if-eqz v1, :cond_1

    .line 1235
    iget v1, p0, Lcom/android/launcher2/MenuAppModel$1;->targetScreen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher2/MenuAppModel$1;->targetScreen:I

    .line 1236
    iput v3, p0, Lcom/android/launcher2/MenuAppModel$1;->targetCell:I

    .line 1238
    :cond_1
    iput v0, p0, Lcom/android/launcher2/MenuAppModel$1;->priorScreen:I

    .line 1241
    :cond_2
    iget v1, p0, Lcom/android/launcher2/MenuAppModel$1;->targetScreen:I

    if-ne v0, v1, :cond_3

    iget v1, p1, Lcom/android/launcher2/AppItem;->mCell:I

    iget v2, p0, Lcom/android/launcher2/MenuAppModel$1;->targetCell:I

    if-eq v1, v2, :cond_4

    .line 1242
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 1243
    iget v1, p0, Lcom/android/launcher2/MenuAppModel$1;->targetScreen:I

    iput v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1244
    iget v1, p0, Lcom/android/launcher2/MenuAppModel$1;->targetCell:I

    iput v1, p1, Lcom/android/launcher2/AppItem;->mCell:I

    .line 1247
    :cond_4
    iget v1, p0, Lcom/android/launcher2/MenuAppModel$1;->targetCell:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher2/MenuAppModel$1;->targetCell:I

    if-ne v1, p2, :cond_5

    .line 1248
    iget v1, p0, Lcom/android/launcher2/MenuAppModel$1;->targetScreen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher2/MenuAppModel$1;->targetScreen:I

    .line 1249
    iput v3, p0, Lcom/android/launcher2/MenuAppModel$1;->targetCell:I

    .line 1251
    :cond_5
    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1147
    const/4 v0, 0x0

    .line 1148
    .local v0, ret:I
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v3, v2, :cond_4

    iget v3, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v3, v2, :cond_4

    .line 1150
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v4, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    #calls: Lcom/android/launcher2/MenuAppModel;->integerCompare(II)I
    invoke-static {v3, v4}, Lcom/android/launcher2/MenuAppModel;->access$000(II)I

    move-result v0

    .line 1151
    if-nez v0, :cond_0

    .line 1152
    iget v3, p1, Lcom/android/launcher2/AppItem;->mCell:I

    iget v4, p2, Lcom/android/launcher2/AppItem;->mCell:I

    #calls: Lcom/android/launcher2/MenuAppModel;->integerCompare(II)I
    invoke-static {v3, v4}, Lcom/android/launcher2/MenuAppModel;->access$000(II)I

    move-result v0

    .line 1165
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1167
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 1168
    invoke-static {}, Lcom/android/launcher2/MenuAppModel;->access$200()Ljava/text/Collator;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1174
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 1176
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_9

    iget-object v3, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_9

    .line 1177
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    .line 1183
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 1187
    iget-wide v1, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v3, p2, Lcom/android/launcher2/BaseItem;->mId:J

    #calls: Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I
    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher2/MenuAppModel;->access$100(JJ)I

    move-result v0

    .line 1191
    :cond_3
    return v0

    .line 1155
    :cond_4
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v4, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v3, v4, :cond_5

    .line 1158
    iget-wide v3, p1, Lcom/android/launcher2/AppItem;->mCreateTime:J

    iget-wide v5, p2, Lcom/android/launcher2/AppItem;->mCreateTime:J

    #calls: Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I
    invoke-static {v3, v4, v5, v6}, Lcom/android/launcher2/MenuAppModel;->access$100(JJ)I

    move-result v0

    goto :goto_0

    .line 1163
    :cond_5
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v3, v2, :cond_6

    move v0, v1

    :goto_3
    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_3

    .line 1170
    :cond_7
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eq v3, v4, :cond_1

    .line 1172
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_8

    move v0, v2

    :goto_4
    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_4

    .line 1179
    :cond_9
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eq v3, v4, :cond_2

    .line 1181
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_a

    move v0, v2

    :goto_5
    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1144
    check-cast p1, Lcom/android/launcher2/AppItem;

    .end local p1
    check-cast p2, Lcom/android/launcher2/AppItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppModel$1;->compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I

    move-result v0

    return v0
.end method

.method public normalize(Ljava/util/List;IZ)V
    .locals 3
    .parameter
    .parameter "maxItemsPerScreen"
    .parameter "keepEmptyPages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v2, 0x0

    .line 1197
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1199
    iput v2, p0, Lcom/android/launcher2/MenuAppModel$1;->targetScreen:I

    .line 1200
    iput v2, p0, Lcom/android/launcher2/MenuAppModel$1;->targetCell:I

    .line 1201
    iput v2, p0, Lcom/android/launcher2/MenuAppModel$1;->priorScreen:I

    .line 1216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    .line 1217
    .local v1, item:Lcom/android/launcher2/AppItem;
    iget-boolean v2, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v2, :cond_0

    .line 1219
    invoke-direct {p0, v1, p2, p3}, Lcom/android/launcher2/MenuAppModel$1;->normalizeItems(Lcom/android/launcher2/AppItem;IZ)V

    goto :goto_0

    .line 1221
    .end local v1           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1255
    const-string v0, "MenuAppModel.MENU_CUSTOM_NORMALIZER"

    return-object v0
.end method
