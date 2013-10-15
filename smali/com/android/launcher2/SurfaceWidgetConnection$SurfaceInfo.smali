.class final Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SurfaceWidgetConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;
    }
.end annotation


# instance fields
.field private final mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

.field private mOrientation:I

.field private mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

.field private final mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;Lcom/android/launcher2/SurfaceWidgetConnection$Name;Lcom/android/launcher2/SurfaceWidgetView;)V
    .locals 1
    .parameter "conn"
    .parameter "name"
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    .line 208
    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mOrientation:I

    .line 220
    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    .line 221
    iput-object p2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    .line 222
    iput-object p3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    .line 223
    invoke-virtual {p3}, Lcom/android/launcher2/SurfaceWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mOrientation:I

    .line 224
    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;)Lcom/android/launcher2/SurfaceWidgetView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    return-object v0
.end method


# virtual methods
.method public getLatestSurfaceState()Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    return-object v0
.end method

.method isSameOrientation(I)Z
    .locals 1
    .parameter "orientation"

    .prologue
    .line 360
    iget v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mOrientation:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 10
    .parameter "surfaceTexture"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->releaseSurface()V

    .line 231
    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 232
    new-instance v0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {v0, v1, p2, p3}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;-><init>(Landroid/view/Surface;II)V

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    .line 234
    const/4 v5, 0x0

    .line 235
    .local v5, spanX:I
    const/4 v6, 0x0

    .line 236
    .local v6, spanY:I
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 237
    .local v9, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz v0, :cond_0

    move-object v7, v9

    .line 238
    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 239
    .local v7, clp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v5, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 240
    iget v6, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 243
    .end local v7           #clp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    const/4 v4, 0x0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceSizeChanged(Landroid/view/Surface;IIZII)V

    .line 244
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSurfaceTextureAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v8

    .line 248
    .local v8, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v0, v8}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4
    .parameter "surfaceTexture"

    .prologue
    .line 254
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s surface texture was destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceDestroyed()V

    .line 258
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->releaseSurface()V

    .line 259
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetDisconnect()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 260
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Landroid/os/DeadObjectException;
    const-string v1, "SurfaceWidgetConnection"

    const-string v2, "onSurfaceTextureDestroyed() came earlier than onServiceDisconnected() so wait for onServiceDisconnected() to restart widget"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 272
    .end local v0           #e:Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SurfaceWidgetConnection"

    const-string v2, "onSurfaceTextureDestroyed() has a problem when destroying widget. Wait for onServiceDisconnected()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 11
    .parameter "surfaceTexture"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iput p2, v0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->width:I

    .line 290
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iput p3, v0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->height:I

    .line 292
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    .line 295
    .local v10, orientation:I
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v10}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->isSameOrientation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->setAlpha(F)V

    .line 298
    :cond_0
    iput v10, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mOrientation:I

    .line 300
    const/4 v5, 0x0

    .line 301
    .local v5, spanX:I
    const/4 v6, 0x0

    .line 302
    .local v6, spanY:I
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 303
    .local v9, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz v0, :cond_1

    move-object v7, v9

    .line 304
    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 305
    .local v7, clp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v5, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 306
    iget v6, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 309
    .end local v7           #clp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    const/4 v4, 0x1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceSizeChanged(Landroid/view/Surface;IIZII)V

    .line 310
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSurfaceSizeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_2
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v8

    .line 314
    .local v8, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v0, v8}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 323
    return-void
.end method

.method public releaseSurface()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    if-eqz v0, :cond_1

    .line 327
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s surface is being released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 331
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 332
    iput-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 336
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s surface texture is being released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 340
    iput-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 342
    :cond_3
    return-void
.end method
