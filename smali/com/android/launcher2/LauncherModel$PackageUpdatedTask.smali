.class public Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_AVAILABLE:I = 0x4

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNAVAILABLE:I = 0x5

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "op"
    .parameter "packages"

    .prologue
    .line 2293
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2294
    iput p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    .line 2295
    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 2296
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 2301
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 2302
    .local v15, packages:[Ljava/lang/String;
    array-length v8, v15

    .line 2303
    .local v8, N:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2304
    .local v6, homeRemoved:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2305
    .local v7, homeUpdated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    packed-switch v2, :pswitch_data_0

    .line 2367
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 2368
    .local v9, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    const/16 v16, 0x0

    .line 2369
    .local v16, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    const/4 v13, 0x0

    .line 2370
    .local v13, modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    const/16 v18, 0x0

    .line 2372
    .local v18, secreted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v9, v2, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    .line 2374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    .line 2376
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v0, v2, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 2378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    .line 2380
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v13, v2, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    .line 2382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    .line 2386
    :cond_3
    if-nez v9, :cond_4

    if-eqz v16, :cond_5

    .line 2387
    :cond_4
    move-object v10, v9

    .line 2388
    .local v10, addedFinal:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v17, v16

    .line 2389
    .local v17, removedFinal:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v10, v1}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2399
    .end local v10           #addedFinal:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v17           #removedFinal:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    if-eqz v2, :cond_11

    .line 2447
    :goto_1
    return-void

    .line 2307
    .end local v9           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .end local v13           #modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .end local v16           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .end local v18           #secreted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    :pswitch_0
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v8, :cond_8

    .line 2308
    sget-boolean v2, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_6

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuAppLoader.addPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    aget-object v3, v15, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2314
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    aget-object v3, v15, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2317
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    aget-object v3, v15, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppLoader;->addPackage(Ljava/lang/String;)V

    .line 2307
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2319
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherModel;->hasLocaleChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    goto/16 :goto_0

    .line 2324
    .end local v12           #i:I
    :pswitch_1
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_3
    if-ge v12, v8, :cond_b

    .line 2325
    sget-boolean v2, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_9

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuAppLoader.updatePackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    aget-object v3, v15, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2328
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    aget-object v3, v15, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2331
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    aget-object v3, v15, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppLoader;->updatePackage(Ljava/lang/String;)V

    .line 2332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget-object v4, v15, v12

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher2/HomeLoader;->updatePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 2324
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2334
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherModel;->hasLocaleChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    goto/16 :goto_0

    .line 2339
    .end local v12           #i:I
    :pswitch_2
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_4
    if-ge v12, v8, :cond_0

    .line 2340
    sget-boolean v2, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_c

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuAppLoader.removePackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    aget-object v3, v15, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2343
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 2344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    aget-object v3, v15, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2346
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    aget-object v3, v15, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppLoader;->removePackage(Ljava/lang/String;)V

    .line 2347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget-object v4, v15, v12

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/launcher2/HomeLoader;->removePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 2339
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 2352
    .end local v12           #i:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_10

    const/4 v5, 0x1

    .line 2353
    .local v5, available:Z
    :goto_5
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_6
    if-ge v12, v8, :cond_0

    .line 2354
    sget-boolean v2, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_e

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuAppLoader.updatePackageAvailability "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    aget-object v3, v15, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2357
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 2358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    aget-object v3, v15, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2361
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    aget-object v3, v15, v12

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher2/MenuAppLoader;->updatePackageAvailability(Ljava/lang/String;Z)V

    .line 2362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget-object v4, v15, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/HomeLoader;->updatePackageAvailability(Ljava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 2353
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 2352
    .end local v5           #available:Z
    .end local v12           #i:I
    :cond_10
    const/4 v5, 0x0

    goto :goto_5

    .line 2405
    .restart local v9       #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .restart local v13       #modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .restart local v16       #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .restart local v18       #secreted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v14, v2, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 2406
    .local v14, origCallbacks:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/LauncherModel$Callbacks;>;"
    if-eqz v14, :cond_12

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_13

    .line 2407
    :cond_12
    const-string v2, "Launcher.Model"

    const-string v3, "Nobody to tell about the app changes. Launcher is not running."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2410
    :cond_13
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 2411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v7}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2421
    :cond_14
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 2422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v6}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2434
    :cond_15
    if-nez v9, :cond_16

    if-nez v16, :cond_16

    if-eqz v13, :cond_17

    :cond_16
    const/4 v11, 0x1

    .line 2437
    .local v11, appModelUpdated:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v11}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Z)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 2434
    .end local v11           #appModelUpdated:Z
    :cond_17
    const/4 v11, 0x0

    goto :goto_7

    .line 2305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
