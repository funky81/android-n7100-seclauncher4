.class final Lcom/android/launcher2/LauncherModel$8;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$ids:Ljava/util/List;

.field final synthetic val$notify:Z


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/ContentResolver;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$8;->val$ids:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$8;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$8;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/launcher2/LauncherModel$8;->val$notify:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 754
    const/4 v7, 0x0

    .line 755
    .local v7, updated:Z
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$8;->val$ids:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 756
    .local v5, itemId:Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 757
    .local v2, id:J
    const/4 v9, 0x0

    invoke-static {v2, v3, v9}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v8

    .line 758
    .local v8, uriToDelete:Landroid/net/Uri;
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$8;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v9, v8, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 759
    sget-object v9, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    .line 760
    .local v4, item:Lcom/android/launcher2/HomeItem;
    if-eqz v4, :cond_0

    .line 761
    const/4 v7, 0x1

    .line 762
    sget-object v9, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v9, Lcom/android/launcher2/LauncherModel$14;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v10, v4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v10}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 793
    :pswitch_0
    sget-object v9, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 766
    :pswitch_1
    invoke-static {v4}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 767
    sget-object v9, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 774
    :cond_1
    sget-object v9, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    iget-wide v10, v4, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    .line 775
    .local v0, folder:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v0, :cond_0

    .line 776
    new-instance v6, Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$8;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 782
    .local v6, mainHandler:Landroid/os/Handler;
    new-instance v9, Lcom/android/launcher2/LauncherModel$8$1;

    invoke-direct {v9, p0, v0, v4}, Lcom/android/launcher2/LauncherModel$8$1;-><init>(Lcom/android/launcher2/LauncherModel$8;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V

    invoke-virtual {v6, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 796
    .end local v0           #folder:Lcom/android/launcher2/HomeFolderItem;
    .end local v6           #mainHandler:Landroid/os/Handler;
    :pswitch_2
    sget-object v9, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 799
    :pswitch_3
    sget-object v9, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 802
    :pswitch_4
    sget-object v9, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 808
    .end local v2           #id:J
    .end local v4           #item:Lcom/android/launcher2/HomeItem;
    .end local v5           #itemId:Ljava/lang/Long;
    .end local v8           #uriToDelete:Landroid/net/Uri;
    :cond_2
    if-eqz v7, :cond_3

    iget-boolean v9, p0, Lcom/android/launcher2/LauncherModel$8;->val$notify:Z

    if-eqz v9, :cond_3

    .line 809
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$8;->val$cr:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 811
    :cond_3
    return-void

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
