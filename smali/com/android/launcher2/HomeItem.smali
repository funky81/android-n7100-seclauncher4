.class public Lcom/android/launcher2/HomeItem;
.super Lcom/android/launcher2/BaseItem;
.source "HomeItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeItem$1;
    }
.end annotation


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:J

.field public dropPos:[I

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 66
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_UNKNOWN:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/BaseItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 48
    iput v3, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 53
    iput v3, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 58
    iput v2, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 63
    iput v2, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 67
    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher2/BaseItem$Type;)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 70
    invoke-direct {p0, p1}, Lcom/android/launcher2/BaseItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 48
    iput v3, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 53
    iput v3, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 58
    iput v2, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 63
    iput v2, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 71
    return-void
.end method

.method static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 122
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 124
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 125
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 126
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 127
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 130
    :goto_0
    return-object v3

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private mapTypeToDbValue()I
    .locals 3

    .prologue
    .line 143
    sget-object v1, Lcom/android/launcher2/HomeItem$1;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v2, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 163
    const/4 v0, -0x1

    .line 166
    .local v0, itemType:I
    :goto_0
    return v0

    .line 145
    .end local v0           #itemType:I
    :pswitch_0
    const/4 v0, 0x0

    .line 146
    .restart local v0       #itemType:I
    goto :goto_0

    .line 148
    .end local v0           #itemType:I
    :pswitch_1
    const/4 v0, 0x1

    .line 149
    .restart local v0       #itemType:I
    goto :goto_0

    .line 151
    .end local v0           #itemType:I
    :pswitch_2
    const/4 v0, 0x2

    .line 152
    .restart local v0       #itemType:I
    goto :goto_0

    .line 154
    .end local v0           #itemType:I
    :pswitch_3
    const/4 v0, 0x4

    .line 155
    .restart local v0       #itemType:I
    goto :goto_0

    .line 157
    .end local v0           #itemType:I
    :pswitch_4
    const/16 v0, 0x384

    .line 158
    .restart local v0       #itemType:I
    goto :goto_0

    .line 160
    .end local v0           #itemType:I
    :pswitch_5
    const/16 v0, 0x385

    .line 161
    .restart local v0       #itemType:I
    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "values"
    .parameter "bitmap"

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-static {p1}, Lcom/android/launcher2/HomeItem;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 137
    .local v0, data:[B
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 139
    .end local v0           #data:[B
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 221
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 227
    :goto_0
    return-object v1

    .line 224
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 227
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    return v0
.end method

.method public mapDbValueToType(I)Lcom/android/launcher2/BaseItem$Type;
    .locals 1
    .parameter "dbValue"

    .prologue
    .line 171
    sparse-switch p1, :sswitch_data_0

    .line 191
    const/4 v0, 0x0

    .line 194
    .local v0, type:Lcom/android/launcher2/BaseItem$Type;
    :goto_0
    return-object v0

    .line 173
    .end local v0           #type:Lcom/android/launcher2/BaseItem$Type;
    :sswitch_0
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    .line 174
    .restart local v0       #type:Lcom/android/launcher2/BaseItem$Type;
    goto :goto_0

    .line 176
    .end local v0           #type:Lcom/android/launcher2/BaseItem$Type;
    :sswitch_1
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    .line 177
    .restart local v0       #type:Lcom/android/launcher2/BaseItem$Type;
    goto :goto_0

    .line 179
    .end local v0           #type:Lcom/android/launcher2/BaseItem$Type;
    :sswitch_2
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    .line 180
    .restart local v0       #type:Lcom/android/launcher2/BaseItem$Type;
    goto :goto_0

    .line 182
    .end local v0           #type:Lcom/android/launcher2/BaseItem$Type;
    :sswitch_3
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    .line 183
    .restart local v0       #type:Lcom/android/launcher2/BaseItem$Type;
    goto :goto_0

    .line 185
    .end local v0           #type:Lcom/android/launcher2/BaseItem$Type;
    :sswitch_4
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    .line 186
    .restart local v0       #type:Lcom/android/launcher2/BaseItem$Type;
    goto :goto_0

    .line 188
    .end local v0           #type:Lcom/android/launcher2/BaseItem$Type;
    :sswitch_5
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SURFACE_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    .line 189
    .restart local v0       #type:Lcom/android/launcher2/BaseItem$Type;
    goto :goto_0

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x384 -> :sswitch_4
        0x385 -> :sswitch_5
    .end sparse-switch
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 103
    const-string v0, "itemType"

    invoke-direct {p0}, Lcom/android/launcher2/HomeItem;->mapTypeToDbValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v0, "container"

    iget-wide v1, p0, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    const-string v0, "screen"

    iget v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v0, "cellX"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v0, "cellY"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v0, "spanX"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v0, "spanY"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v1, "secret"

    iget-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeItem(id="

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

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateValuesWithCoordinates(Landroid/content/ContentValues;II)V
    .locals 2
    .parameter "values"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 114
    const-string v0, "cellX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v0, "cellY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    return-void
.end method
