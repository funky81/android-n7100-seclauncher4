.class Lcom/android/launcher2/LauncherExModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherExModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherExModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private final PAGEINDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLaunching:Z

.field private volatile mIsModeChanged:Z

.field private volatile mIsSecret:Z

.field private mStep1Finished:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/android/launcher2/LauncherExModel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherExModel;ZZZ)V
    .locals 1
    .parameter
    .parameter "isLaunching"
    .parameter "isSecret"
    .parameter "isModeChanged"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1217
    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$26;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$26;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->PAGEINDEX_COMPARATOR:Ljava/util/Comparator;

    .line 184
    iput-boolean p2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    .line 185
    iput-boolean p3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    .line 186
    iput-boolean p4, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsModeChanged:Z

    .line 187
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->runBindSecretPage()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/launcher2/LauncherExModel$LoaderTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStep1Finished:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    return v0
.end method

.method private bindSecretAllApps()V
    .locals 3

    .prologue
    .line 1201
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1202
    const-string v1, "LauncherExModel"

    const-string v2, "LoaderTask running with no launcher"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :goto_0
    return-void

    .line 1206
    :cond_0
    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$25;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$25;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 1214
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private bindSecretPageModeChange()V
    .locals 2

    .prologue
    .line 1068
    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$17;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$17;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 1074
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 1075
    return-void
.end method

.method private bindSecretWorkspace()V
    .locals 18

    .prologue
    .line 1142
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-nez v1, :cond_1

    .line 1143
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1197
    :goto_0
    return-void

    .line 1146
    :cond_0
    new-instance v12, Lcom/android/launcher2/LauncherExModel$LoaderTask$23;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$23;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 1152
    .local v12, r:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v12}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1156
    .end local v12           #r:Ljava/lang/Runnable;
    :cond_1
    new-instance v12, Lcom/android/launcher2/LauncherExModel$LoaderTask$24;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$24;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 1162
    .restart local v12       #r:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v12}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 1164
    new-instance v2, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1165
    .local v2, secretWorkspace:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeItem;

    .line 1166
    .local v11, item:Lcom/android/launcher2/HomeItem;
    iget-wide v14, v11, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v16, -0x64

    cmp-long v1, v14, v16

    if-nez v1, :cond_2

    .line 1167
    iget-boolean v1, v11, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v1, :cond_2

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1171
    .end local v11           #item:Lcom/android/launcher2/HomeItem;
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1172
    .local v3, secretFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1173
    .local v9, id:J
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeFolderItem;

    .line 1174
    .local v7, fi:Lcom/android/launcher2/HomeFolderItem;
    iget-boolean v1, v7, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v1, :cond_4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1177
    .end local v7           #fi:Lcom/android/launcher2/HomeFolderItem;
    .end local v9           #id:J
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    .local v4, secretAppWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/HomeWidgetItem;

    .line 1179
    .local v13, secretWidget:Lcom/android/launcher2/HomeWidgetItem;
    iget-boolean v1, v13, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v1, :cond_6

    .line 1180
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1183
    .end local v13           #secretWidget:Lcom/android/launcher2/HomeWidgetItem;
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    .local v5, secretSamsungAppWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/SamsungWidgetItem;>;"
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/SamsungWidgetItem;

    .line 1185
    .local v13, secretWidget:Lcom/android/launcher2/SamsungWidgetItem;
    iget-boolean v1, v13, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v1, :cond_8

    .line 1186
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1189
    .end local v13           #secretWidget:Lcom/android/launcher2/SamsungWidgetItem;
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    .local v6, secretSurfaceWidgetItem:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/SurfaceWidgetItem;>;"
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 1191
    .local v13, secretWidget:Lcom/android/launcher2/SurfaceWidgetItem;
    iget-boolean v1, v13, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v1, :cond_a

    .line 1192
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v13           #secretWidget:Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_b
    move-object/from16 v1, p0

    .line 1195
    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretWorkspace(Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private bindSecretWorkspace(Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SamsungWidgetItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SurfaceWidgetItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1083
    .local p1, secretHomeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    .local p2, secretFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    .local p3, secretAppWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    .local p4, secretSamsungAppWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/SamsungWidgetItem;>;"
    .local p5, secretSurfaceWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/SurfaceWidgetItem;>;"
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1084
    const-string v7, "LauncherExModel"

    const-string v8, "bindSecretWorkspace running with no launcher"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_0
    return-void

    .line 1088
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1089
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1090
    move v6, v2

    .line 1091
    .local v6, start:I
    add-int/lit8 v7, v2, 0x6

    if-gt v7, v0, :cond_2

    const/4 v1, 0x6

    .line 1092
    .local v1, chunkSize:I
    :goto_1
    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$18;

    invoke-direct {v4, p0, p1, v6, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$18;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/List;II)V

    .line 1098
    .local v4, r:Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 1089
    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    .line 1091
    .end local v1           #chunkSize:I
    .end local v4           #r:Ljava/lang/Runnable;
    :cond_2
    sub-int v1, v0, v2

    goto :goto_1

    .line 1101
    .end local v6           #start:I
    :cond_3
    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$19;

    invoke-direct {v4, p0, p2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$19;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/HashMap;)V

    .line 1107
    .restart local v4       #r:Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 1109
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeWidgetItem;

    .line 1110
    .local v5, secretWidget:Lcom/android/launcher2/HomeWidgetItem;
    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$20;

    .end local v4           #r:Ljava/lang/Runnable;
    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/LauncherExModel$LoaderTask$20;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    .line 1116
    .restart local v4       #r:Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1119
    .end local v5           #secretWidget:Lcom/android/launcher2/HomeWidgetItem;
    :cond_4
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/SamsungWidgetItem;

    .line 1120
    .local v5, secretWidget:Lcom/android/launcher2/SamsungWidgetItem;
    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$21;

    .end local v4           #r:Ljava/lang/Runnable;
    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/LauncherExModel$LoaderTask$21;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/SamsungWidgetItem;)V

    .line 1126
    .restart local v4       #r:Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1129
    .end local v5           #secretWidget:Lcom/android/launcher2/SamsungWidgetItem;
    :cond_5
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 1130
    .local v5, secretWidget:Lcom/android/launcher2/SurfaceWidgetItem;
    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$22;

    .end local v4           #r:Ljava/lang/Runnable;
    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/LauncherExModel$LoaderTask$22;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/SurfaceWidgetItem;)V

    .line 1136
    .restart local v4       #r:Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method private bindWorkspace()V
    .locals 32

    .prologue
    .line 807
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 810
    .local v24, t:J
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v4

    if-nez v4, :cond_0

    .line 811
    const-string v4, "LauncherExModel"

    const-string v28, "LoaderTask running with no launcher"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :goto_0
    return-void

    .line 815
    :cond_0
    new-instance v22, Lcom/android/launcher2/LauncherExModel$LoaderTask$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$2;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 821
    .local v22, r:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v22

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 823
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v4, :cond_1

    .line 824
    new-instance v22, Lcom/android/launcher2/LauncherExModel$LoaderTask$3;

    .end local v22           #r:Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$3;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 830
    .restart local v22       #r:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v22

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 833
    :cond_1
    new-instance v27, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 834
    .local v27, workspace:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v15, hotseat:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .local v5, secretHomeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/HomeItem;

    .line 837
    .local v20, item:Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v4, :cond_3

    .line 838
    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 840
    :cond_3
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x65

    cmp-long v4, v28, v30

    if-nez v4, :cond_4

    .line 841
    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 842
    :cond_4
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x64

    cmp-long v4, v28, v30

    if-nez v4, :cond_2

    .line 843
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 846
    .end local v20           #item:Lcom/android/launcher2/HomeItem;
    :cond_5
    new-instance v22, Lcom/android/launcher2/LauncherExModel$LoaderTask$4;

    .end local v22           #r:Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/android/launcher2/LauncherExModel$LoaderTask$4;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/List;)V

    .line 853
    .restart local v22       #r:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v22

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 855
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v10

    .line 856
    .local v10, N:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v10, :cond_7

    .line 857
    move/from16 v23, v16

    .line 858
    .local v23, start:I
    add-int/lit8 v4, v16, 0x6

    if-gt v4, v10, :cond_6

    const/4 v11, 0x6

    .line 859
    .local v11, chunkSize:I
    :goto_3
    new-instance v22, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;

    .end local v22           #r:Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/List;II)V

    .line 865
    .restart local v22       #r:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v22

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 856
    add-int/lit8 v16, v16, 0x6

    goto :goto_2

    .line 858
    .end local v11           #chunkSize:I
    :cond_6
    sub-int v11, v10, v16

    goto :goto_3

    .line 868
    .end local v23           #start:I
    :cond_7
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 869
    .local v21, normalFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 870
    .local v6, secretFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 871
    .local v18, id:J
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/HomeFolderItem;

    .line 872
    .local v13, fi:Lcom/android/launcher2/HomeFolderItem;
    iget-boolean v4, v13, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v4, :cond_8

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 873
    :cond_8
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 875
    .end local v13           #fi:Lcom/android/launcher2/HomeFolderItem;
    .end local v18           #id:J
    :cond_9
    new-instance v14, Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 876
    .local v14, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    new-instance v22, Lcom/android/launcher2/LauncherExModel$LoaderTask$6;

    .end local v22           #r:Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/launcher2/LauncherExModel$LoaderTask$6;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/HashMap;)V

    .line 884
    .restart local v22       #r:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v22

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 886
    new-instance v22, Lcom/android/launcher2/LauncherExModel$LoaderTask$7;

    .end local v22           #r:Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$7;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 890
    .restart local v22       #r:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v22

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 892
    const/4 v12, 0x0

    .line 893
    .local v12, currentScreen:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v7, secretAppWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_a
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/HomeWidgetItem;

    .line 895
    .local v26, widget:Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-nez v4, :cond_a

    .line 896
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v4, :cond_b

    .line 897
    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 899
    :cond_b
    new-instance v22, Lcom/android/launcher2/LauncherExModel$LoaderTask$8;

    .end local v22           #r:Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$8;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    .line 905
    .restart local v22       #r:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v22

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_5

    .line 908
    .end local v26           #widget:Lcom/android/launcher2/HomeWidgetItem;
    :cond_c
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_d
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/HomeWidgetItem;

    .line 909
    .restart local v26       #widget:Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eqz v4, :cond_d

    .line 910
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v4, :cond_e

    .line 911
    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 913
    :cond_e
    new-instance v22, Lcom/android/launcher2/LauncherExModel$LoaderTask$9;

    .end local v22           #r:Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$9;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    .line 919
    .restart local v22       #r:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v22

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_6

    .line 923
    .end local v26           #widget:Lcom/android/launcher2/HomeWidgetItem;
    :cond_f
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v8, secretSamsungAppWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/SamsungWidgetItem;>;"
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/SamsungWidgetItem;

    .line 925
    .local v26, widget:Lcom/android/launcher2/SamsungWidgetItem;
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v4, :cond_10

    .line 926
    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 928
    :cond_10
    new-instance v22, Lcom/android/launcher2/LauncherExModel$LoaderTask$10;

    .end local v22           #r:Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$10;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/SamsungWidgetItem;)V

    .line 934
    .restart local v22       #r:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v22

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_7

    .line 937
    .end local v26           #widget:Lcom/android/launcher2/SamsungWidgetItem;
    :cond_11
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v9, secretSurfaceWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/SurfaceWidgetItem;>;"
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 939
    .local v26, widget:Lcom/android/launcher2/SurfaceWidgetItem;
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v4, :cond_12

    .line 940
    move-object/from16 v0, v26

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 942
    :cond_12
    new-instance v22, Lcom/android/launcher2/LauncherExModel$LoaderTask$11;

    .end local v22           #r:Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$11;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/SurfaceWidgetItem;)V

    .line 949
    .restart local v22       #r:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v22

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_8

    .line 952
    .end local v26           #widget:Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v4, :cond_14

    move-object/from16 v4, p0

    .line 953
    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretWorkspace(Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 957
    :cond_14
    new-instance v22, Lcom/android/launcher2/LauncherExModel$LoaderTask$12;

    .end local v22           #r:Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$12;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 963
    .restart local v22       #r:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v22

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 965
    new-instance v22, Lcom/android/launcher2/LauncherExModel$LoaderTask$13;

    .end local v22           #r:Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask$13;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;J)V

    .line 970
    .restart local v22       #r:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v22

    #calls: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private changeScreenIdInAppsDataBase(Ljava/util/Map;)V
    .locals 28
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1225
    .local p1, allApps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsModeChanged:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 1350
    :goto_0
    return-void

    .line 1227
    :cond_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    .local v17, normalPageIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    .local v21, resultNormalPageIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    .local v18, normalPageItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    .local v14, needUpdateItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    move/from16 v26, v0

    if-eqz v26, :cond_12

    .line 1234
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    .local v22, secretPageIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .local v23, secretPageItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1238
    .local v5, id:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 1239
    .local v2, ai:Lcom/android/launcher2/AppItem;
    iget-boolean v0, v2, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1240
    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 1241
    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    :cond_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1244
    :cond_2
    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 1245
    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1249
    .end local v2           #ai:Lcom/android/launcher2/AppItem;
    .end local v5           #id:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->PAGEINDEX_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->PAGEINDEX_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1253
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1255
    .local v19, prevSecretPageIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int v25, v26, v27

    .line 1256
    .local v25, totalPageCount:I
    move/from16 v0, v25

    new-array v7, v0, [Z

    .line 1259
    .local v7, isOccupiedPage:[Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1260
    .local v24, size:I
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2
    move/from16 v0, v24

    if-gt v3, v0, :cond_5

    .line 1261
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v11, v26, -0x1

    .line 1262
    .local v11, lastIndex:I
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    array-length v0, v7

    move/from16 v27, v0

    sub-int v27, v27, v3

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_5

    .line 1263
    array-length v0, v7

    move/from16 v26, v0

    sub-int v26, v26, v3

    const/16 v27, 0x1

    aput-boolean v27, v7, v26

    .line 1264
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1260
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1269
    .end local v11           #lastIndex:I
    :cond_5
    const/4 v3, 0x0

    :goto_3
    array-length v0, v7

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v3, v0, :cond_7

    .line 1270
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1271
    const/16 v26, 0x1

    aput-boolean v26, v7, v3

    .line 1272
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1269
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1275
    :cond_7
    const/4 v3, 0x0

    :goto_4
    array-length v0, v7

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v3, v0, :cond_9

    .line 1276
    aget-boolean v26, v7, v3

    if-eqz v26, :cond_8

    .line 1277
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1281
    :cond_9
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    .line 1282
    .local v12, log:Ljava/lang/String;
    const/4 v3, 0x0

    :goto_5
    array-length v0, v7

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v3, v0, :cond_b

    .line 1283
    aget-boolean v26, v7, v3

    if-eqz v26, :cond_a

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "S"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1282
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1284
    :cond_a
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "N"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    .line 1286
    :cond_b
    const-string v26, "LauncherExModel"

    move-object/from16 v0, v26

    invoke-static {v0, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v3, 0x0

    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v3, v0, :cond_e

    .line 1291
    const/4 v10, 0x0

    .local v10, j:I
    :goto_8
    array-length v0, v7

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_c

    .line 1292
    aget-boolean v26, v7, v10

    if-nez v26, :cond_d

    .line 1293
    const/16 v26, 0x1

    aput-boolean v26, v7, v10

    .line 1297
    :cond_c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1291
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1302
    .end local v10           #j:I
    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 1303
    .restart local v2       #ai:Lcom/android/launcher2/AppItem;
    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1304
    .local v13, matchingIndex:I
    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v0, v13, :cond_f

    .line 1305
    iput v13, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1306
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1309
    .end local v2           #ai:Lcom/android/launcher2/AppItem;
    .end local v13           #matchingIndex:I
    :cond_10
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 1310
    .restart local v2       #ai:Lcom/android/launcher2/AppItem;
    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1311
    .local v16, newScreen:I
    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v16

    if-eq v0, v1, :cond_11

    .line 1312
    move/from16 v0, v16

    iput v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1313
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1319
    .end local v2           #ai:Lcom/android/launcher2/AppItem;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #isOccupiedPage:[Z
    .end local v12           #log:Ljava/lang/String;
    .end local v16           #newScreen:I
    .end local v19           #prevSecretPageIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v22           #secretPageIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23           #secretPageItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .end local v24           #size:I
    .end local v25           #totalPageCount:I
    :cond_12
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_13
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1320
    .restart local v5       #id:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 1321
    .restart local v2       #ai:Lcom/android/launcher2/AppItem;
    iget-boolean v0, v2, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    move/from16 v26, v0

    if-nez v26, :cond_13

    .line 1322
    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    .line 1323
    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    :cond_14
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1327
    .end local v2           #ai:Lcom/android/launcher2/AppItem;
    .end local v5           #id:J
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->PAGEINDEX_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1328
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 1329
    .restart local v2       #ai:Lcom/android/launcher2/AppItem;
    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 1330
    .restart local v13       #matchingIndex:I
    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v0, v13, :cond_16

    .line 1331
    iput v13, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1332
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1338
    .end local v2           #ai:Lcom/android/launcher2/AppItem;
    .end local v13           #matchingIndex:I
    :cond_17
    new-instance v15, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1339
    .local v15, newPositions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppItem;

    .line 1340
    .local v8, item:Lcom/android/launcher2/AppItem;
    new-instance v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v9}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 1341
    .local v9, itemPos:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iget-wide v0, v8, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 1342
    iget v0, v8, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 1343
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1345
    .end local v8           #item:Lcom/android/launcher2/AppItem;
    .end local v9           #itemPos:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_18
    new-instance v20, Lcom/android/launcher2/LauncherExModel$LoaderTask$27;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/android/launcher2/LauncherExModel$LoaderTask$27;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/ArrayList;)V

    .line 1349
    .local v20, r:Ljava/lang/Runnable;
    #calls: Lcom/android/launcher2/LauncherExModel;->runOnWorkerThread(Ljava/lang/Runnable;)V
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherExModel;->access$800(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private changeScreenIdInHomeDataBase()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    .line 1354
    iget-boolean v9, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenModeForSecret()I

    move-result v9

    if-eq v9, v10, :cond_1

    :cond_0
    iget-boolean v9, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-nez v9, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenModeForSecret()I

    move-result v9

    if-nez v9, :cond_2

    .line 1393
    :cond_1
    :goto_0
    return-void

    .line 1358
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1361
    .local v6, needUpdateItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    sget-object v9, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1362
    .local v2, id:J
    sget-object v9, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 1363
    .local v0, hi:Lcom/android/launcher2/HomeItem;
    iget-wide v11, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v13, -0x65

    cmp-long v9, v11, v13

    if-eqz v9, :cond_3

    .line 1364
    iget-wide v11, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-gtz v9, :cond_3

    .line 1366
    iget-boolean v9, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v9, :cond_3

    .line 1367
    iget-boolean v9, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v9, :cond_4

    .line 1368
    iget v9, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v11

    add-int/2addr v9, v11

    iput v9, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1369
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1371
    :cond_4
    iget v9, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v11

    sub-int/2addr v9, v11

    iput v9, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1372
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1378
    .end local v0           #hi:Lcom/android/launcher2/HomeItem;
    .end local v2           #id:J
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1379
    .local v7, newPositions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/LauncherSettings$FavoritePos;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    .line 1380
    .local v4, item:Lcom/android/launcher2/HomeItem;
    new-instance v5, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    invoke-direct {v5}, Lcom/android/launcher2/LauncherSettings$FavoritePos;-><init>()V

    .line 1381
    .local v5, itemPos:Lcom/android/launcher2/LauncherSettings$FavoritePos;
    iget-wide v11, v4, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v11, v5, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    .line 1382
    iget v9, v4, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v9, v5, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    .line 1383
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1386
    .end local v4           #item:Lcom/android/launcher2/HomeItem;
    .end local v5           #itemPos:Lcom/android/launcher2/LauncherSettings$FavoritePos;
    :cond_6
    new-instance v8, Lcom/android/launcher2/LauncherExModel$LoaderTask$28;

    invoke-direct {v8, p0, v7}, Lcom/android/launcher2/LauncherExModel$LoaderTask$28;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/ArrayList;)V

    .line 1390
    .local v8, r:Ljava/lang/Runnable;
    #calls: Lcom/android/launcher2/LauncherExModel;->runOnWorkerThread(Ljava/lang/Runnable;)V
    invoke-static {v8}, Lcom/android/launcher2/LauncherExModel;->access$800(Ljava/lang/Runnable;)V

    .line 1392
    iget-object v9, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v11, v9, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    iget-boolean v9, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v9, :cond_7

    move v9, v10

    :goto_3
    invoke-static {v11, v9}, Lcom/android/launcher2/LauncherApplication;->setScreenModeForSecret(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z
    .locals 11
    .parameter "occupied"
    .parameter "occupiedSecret"
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 349
    iget v0, p3, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 350
    .local v0, containerIndex:I
    iget-wide v7, p3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v9, -0x65

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 351
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxSecretScreenCount()I

    move-result v8

    add-int v1, v7, v8

    .line 352
    .local v1, maxScreenCount:I
    aget-object v7, p1, v1

    iget v8, p3, Lcom/android/launcher2/BaseItem;->mScreen:I

    aget-object v7, v7, v8

    aget-object v7, v7, v5

    if-eqz v7, :cond_1

    .line 353
    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "LauncherExModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading shortcut into hotseat "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " into position ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") occupied by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v1

    iget v9, p3, Lcom/android/launcher2/BaseItem;->mScreen:I

    aget-object v8, v8, v9

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v1           #maxScreenCount:I
    :cond_0
    :goto_0
    return v5

    .line 358
    .restart local v1       #maxScreenCount:I
    :cond_1
    aget-object v7, p1, v1

    iget v8, p3, Lcom/android/launcher2/BaseItem;->mScreen:I

    aget-object v7, v7, v8

    aput-object p3, v7, v5

    move v5, v6

    .line 359
    goto :goto_0

    .line 361
    .end local v1           #maxScreenCount:I
    :cond_2
    iget-wide v7, p3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v9, -0x64

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    move v5, v6

    .line 362
    goto :goto_0

    .line 365
    :cond_3
    iget-boolean v7, p3, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v7, :cond_4

    move-object v2, p2

    .line 366
    .local v2, occupiedLocal:[[[Lcom/android/launcher2/HomeItem;
    :goto_1
    iget v3, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    .local v3, x:I
    :goto_2
    iget v7, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v8, p3, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v7, v8

    if-ge v3, v7, :cond_7

    .line 367
    iget v4, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    .local v4, y:I
    :goto_3
    iget v7, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v8, p3, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v7, v8

    if-ge v4, v7, :cond_6

    .line 368
    aget-object v7, v2, v0

    aget-object v7, v7, v3

    aget-object v7, v7, v4

    if-eqz v7, :cond_5

    .line 369
    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "LauncherExModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading shortcut "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " into cell ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") occupied by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    aget-object v8, v8, v3

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2           #occupiedLocal:[[[Lcom/android/launcher2/HomeItem;
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_4
    move-object v2, p1

    .line 365
    goto :goto_1

    .line 367
    .restart local v2       #occupiedLocal:[[[Lcom/android/launcher2/HomeItem;
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 366
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 378
    .end local v4           #y:I
    :cond_7
    iget v3, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    :goto_4
    iget v5, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v7, p3, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v5, v7

    if-ge v3, v5, :cond_9

    .line 379
    iget v4, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    .restart local v4       #y:I
    :goto_5
    iget v5, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v7, p3, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v5, v7

    if-ge v4, v5, :cond_8

    .line 380
    aget-object v5, v2, v0

    aget-object v5, v5, v3

    aput-object p3, v5, v4

    .line 379
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 378
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v4           #y:I
    :cond_9
    move v5, v6

    .line 383
    goto/16 :goto_0
.end method

.method private getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 4

    .prologue
    .line 798
    const/4 v1, 0x0

    .line 799
    .local v1, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v3, v2, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 800
    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    .line 801
    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherExModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v1, v0

    .line 802
    :cond_0
    monitor-exit v3

    .line 803
    return-object v1

    .line 802
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadAllApps()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1029
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppLoader;->loadAllItems(Z)Ljava/util/Map;

    move-result-object v0

    .line 1030
    .local v0, allApps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    .line 1033
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherExModel$LoaderTask$16;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$16;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1042
    :cond_0
    return-object v0
.end method

.method private loadAndBindAllApps()V
    .locals 4

    .prologue
    .line 975
    const-string v1, "LauncherExModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindAllApps mAllAppsLoaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRefreshRequired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v1, v1, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    if-nez v1, :cond_2

    .line 978
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->loadAllApps()Ljava/util/Map;

    move-result-object v0

    .line 979
    .local v0, allApps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_1

    .line 981
    const-string v1, "LauncherExModel"

    const-string v2, "LoaderTask aborted or running with no launcher (bindAllApps)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    .end local v0           #allApps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    :cond_0
    :goto_0
    return-void

    .line 984
    .restart local v0       #allApps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherExModel$LoaderTask$14;

    invoke-direct {v2, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$14;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 994
    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->changeScreenIdInAppsDataBase(Ljava/util/Map;)V

    .line 996
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v1, :cond_0

    .line 997
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretAllApps()V

    goto :goto_0

    .line 1000
    .end local v0           #allApps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v1, v1, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    if-eqz v1, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppLoader;->refreshAllApps()V

    .line 1002
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_0

    .line 1004
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->postModelRefreshed()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 3

    .prologue
    .line 193
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindWorkspace mWorkspaceLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRefreshRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherExModel;->unbindAllHomeItemsOnMainThread()V

    .line 202
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 208
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 209
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 210
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 212
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->loadWorkspace()V

    .line 214
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_3

    .line 215
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 220
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->changeScreenIdInHomeDataBase()V

    .line 222
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindWorkspace()V

    .line 224
    :cond_2
    return-void

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    goto :goto_0
.end method

.method private loadWorkspace()V
    .locals 82

    .prologue
    .line 387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v74

    .line 389
    .local v74, t:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 390
    .local v4, contentResolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 391
    .local v14, manager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v79

    .line 392
    .local v79, widgets:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v50

    .line 394
    .local v50, isSafeMode:Z
    new-instance v54, Ljava/util/ArrayList;

    invoke-direct/range {v54 .. v54}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v54, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 397
    .local v9, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxSecretScreenCount()I

    move-result v6

    add-int v57, v5, v6

    .line 398
    .local v57, maxScreenCount:I
    add-int/lit8 v5, v57, 0x1

    sget v6, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    add-int/lit8 v6, v6, 0x1

    sget v8, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    add-int/lit8 v8, v8, 0x1

    filled-new-array {v5, v6, v8}, [I

    move-result-object v5

    const-class v6, Lcom/android/launcher2/HomeItem;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, [[[Lcom/android/launcher2/HomeItem;

    .line 400
    .local v59, occupied:[[[Lcom/android/launcher2/HomeItem;
    add-int/lit8 v5, v57, 0x1

    sget v6, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    add-int/lit8 v6, v6, 0x1

    sget v8, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    add-int/lit8 v8, v8, 0x1

    filled-new-array {v5, v6, v8}, [I

    move-result-object v5

    const-class v6, Lcom/android/launcher2/HomeItem;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, [[[Lcom/android/launcher2/HomeItem;

    .line 403
    .local v60, occupiedSecret:[[[Lcom/android/launcher2/HomeItem;
    const/16 v49, 0x0

    .line 406
    .local v49, isHotseatDataCorrupt:Z
    :try_start_0
    const-string v5, "_id"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 407
    .local v44, idIndex:I
    const-string v5, "intent"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 409
    .local v48, intentIndex:I
    const-string v5, "title"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 411
    .local v11, titleIndex:I
    const-string v5, "iconType"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 413
    .local v18, iconTypeIndex:I
    const-string v5, "icon"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 414
    .local v10, iconIndex:I
    const-string v5, "iconPackage"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 416
    .local v19, iconPackageIndex:I
    const-string v5, "iconResource"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 418
    .local v20, iconResourceIndex:I
    const-string v5, "container"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 420
    .local v37, containerIndex:I
    const-string v5, "itemType"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 422
    .local v53, itemTypeIndex:I
    const-string v5, "appWidgetId"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 424
    .local v28, appWidgetIdIndex:I
    const-string v5, "screen"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v70

    .line 426
    .local v70, screenIndex:I
    const-string v5, "cellX"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 428
    .local v30, cellXIndex:I
    const-string v5, "cellY"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 430
    .local v31, cellYIndex:I
    const-string v5, "spanX"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v71

    .line 432
    .local v71, spanXIndex:I
    const-string v5, "spanY"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v72

    .line 434
    .local v72, spanYIndex:I
    const-string v5, "secret"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 443
    .local v12, secretIndex:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_1f

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1f

    .line 445
    :try_start_1
    move/from16 v0, v53

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 447
    .local v52, itemType:I
    sparse-switch v52, :sswitch_data_0

    goto :goto_0

    .line 450
    :sswitch_0
    move/from16 v0, v48

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v47

    .line 452
    .local v47, intentDescription:Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, v47

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    .line 457
    .local v7, intent:Landroid/content/Intent;
    if-eqz v50, :cond_1

    .line 458
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v14, v7, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v65

    .line 459
    .local v65, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v65, :cond_0

    .line 461
    move-object/from16 v0, v65

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    .line 462
    .local v26, activity:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v26

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 466
    .end local v26           #activity:Landroid/content/pm/ActivityInfo;
    .end local v65           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v52, :cond_5

    .line 467
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v8, v6, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object v6, v14

    invoke-virtual/range {v5 .. v12}, Lcom/android/launcher2/LauncherExModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;III)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v46

    .line 488
    .local v46, info:Lcom/android/launcher2/HomeShortcutItem;
    :goto_1
    if-eqz v46, :cond_b

    .line 489
    move-object/from16 v0, v46

    iput-object v7, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 490
    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, v46

    iput-wide v5, v0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 491
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 492
    .local v35, container:J
    move-wide/from16 v0, v35

    move-object/from16 v2, v46

    iput-wide v0, v2, Lcom/android/launcher2/HomeItem;->container:J

    .line 493
    move/from16 v0, v70

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v46

    iput v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 494
    move/from16 v0, v30

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v46

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 495
    move/from16 v0, v31

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v46

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 496
    if-lez v12, :cond_9

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, v46

    iput-boolean v5, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 498
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 499
    move-object/from16 v0, v46

    iget-wide v5, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v15, -0x65

    cmp-long v5, v5, v15

    if-nez v5, :cond_2

    .line 500
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wrong hotseat item : we remove the item in launcher.db - item="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 502
    .local v42, id:J
    const/16 v49, 0x1

    .line 506
    .end local v42           #id:J
    :cond_2
    const-wide/16 v5, -0x64

    cmp-long v5, v35, v5

    if-eqz v5, :cond_3

    const-wide/16 v5, -0x65

    cmp-long v5, v35, v5

    if-nez v5, :cond_a

    .line 508
    :cond_3
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :goto_3
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v46

    iget-wide v15, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v46

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    sget-object v6, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v46

    invoke-virtual {v5, v6, v0, v9, v10}, Lcom/android/launcher2/LauncherExModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 732
    .end local v7           #intent:Landroid/content/Intent;
    .end local v35           #container:J
    .end local v46           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v47           #intentDescription:Ljava/lang/String;
    .end local v52           #itemType:I
    :catch_0
    move-exception v38

    .line 733
    .local v38, e:Ljava/lang/Exception;
    :try_start_4
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "LauncherExModel"

    const-string v6, "Desktop items loading interrupted:"

    move-object/from16 v0, v38

    invoke-static {v5, v6, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 737
    .end local v10           #iconIndex:I
    .end local v11           #titleIndex:I
    .end local v12           #secretIndex:I
    .end local v18           #iconTypeIndex:I
    .end local v19           #iconPackageIndex:I
    .end local v20           #iconResourceIndex:I
    .end local v28           #appWidgetIdIndex:I
    .end local v30           #cellXIndex:I
    .end local v31           #cellYIndex:I
    .end local v37           #containerIndex:I
    .end local v38           #e:Ljava/lang/Exception;
    .end local v44           #idIndex:I
    .end local v48           #intentIndex:I
    .end local v53           #itemTypeIndex:I
    .end local v70           #screenIndex:I
    .end local v71           #spanXIndex:I
    .end local v72           #spanYIndex:I
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-eqz v6, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 738
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    .line 739
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 737
    throw v5

    .line 453
    .restart local v10       #iconIndex:I
    .restart local v11       #titleIndex:I
    .restart local v12       #secretIndex:I
    .restart local v18       #iconTypeIndex:I
    .restart local v19       #iconPackageIndex:I
    .restart local v20       #iconResourceIndex:I
    .restart local v28       #appWidgetIdIndex:I
    .restart local v30       #cellXIndex:I
    .restart local v31       #cellYIndex:I
    .restart local v37       #containerIndex:I
    .restart local v44       #idIndex:I
    .restart local v47       #intentDescription:Ljava/lang/String;
    .restart local v48       #intentIndex:I
    .restart local v52       #itemType:I
    .restart local v53       #itemTypeIndex:I
    .restart local v70       #screenIndex:I
    .restart local v71       #spanXIndex:I
    .restart local v72       #spanYIndex:I
    :catch_1
    move-exception v38

    .local v38, e:Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 470
    .end local v38           #e:Ljava/net/URISyntaxException;
    .restart local v7       #intent:Landroid/content/Intent;
    :cond_5
    if-eqz v7, :cond_8

    :try_start_5
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 471
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_6

    .line 472
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadWorkspace : intent.getExtras().isEmpty = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadWorkspace : intent.getExtras().isEmpty = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 477
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v0, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v16, v0

    move-object v15, v7

    move-object/from16 v17, v9

    move/from16 v21, v10

    move/from16 v22, v11

    invoke-virtual/range {v13 .. v22}, Lcom/android/launcher2/LauncherExModel;->getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IIIII)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v46

    .restart local v46       #info:Lcom/android/launcher2/HomeShortcutItem;
    goto/16 :goto_1

    .line 479
    .end local v46           #info:Lcom/android/launcher2/HomeShortcutItem;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v8, v6, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object v6, v14

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher2/LauncherExModel;->getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v46

    .restart local v46       #info:Lcom/android/launcher2/HomeShortcutItem;
    goto/16 :goto_1

    .line 482
    .end local v46           #info:Lcom/android/launcher2/HomeShortcutItem;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v0, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v17, v0

    move-object/from16 v16, v9

    move/from16 v21, v10

    move/from16 v22, v11

    move-object/from16 v23, v14

    move-object/from16 v24, v7

    invoke-virtual/range {v15 .. v24}, Lcom/android/launcher2/LauncherExModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v46

    .restart local v46       #info:Lcom/android/launcher2/HomeShortcutItem;
    goto/16 :goto_1

    .line 496
    .restart local v35       #container:J
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 510
    :cond_a
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v35

    invoke-static {v5, v0, v1}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v39

    .line 512
    .local v39, folderInfo:Lcom/android/launcher2/HomeFolderItem;
    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->loadItem(Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_3

    .line 519
    .end local v35           #container:J
    .end local v39           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    :cond_b
    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 520
    .restart local v42       #id:J
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading shortcut "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v42

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", removing it"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 526
    .end local v7           #intent:Landroid/content/Intent;
    .end local v42           #id:J
    .end local v46           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v47           #intentDescription:Ljava/lang/String;
    :sswitch_1
    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 527
    .restart local v42       #id:J
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v42

    invoke-static {v5, v0, v1}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v39

    .line 529
    .restart local v39       #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    iput-object v5, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 530
    move-wide/from16 v0, v42

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    .line 531
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 532
    .restart local v35       #container:J
    move-wide/from16 v0, v35

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/android/launcher2/HomeItem;->container:J

    .line 533
    move/from16 v0, v70

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 534
    move/from16 v0, v30

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 535
    move/from16 v0, v31

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 536
    if-lez v12, :cond_e

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, v39

    iput-boolean v5, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 538
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 541
    const-wide/16 v5, -0x64

    cmp-long v5, v35, v5

    if-eqz v5, :cond_c

    const-wide/16 v5, -0x65

    cmp-long v5, v35, v5

    if-nez v5, :cond_d

    .line 543
    :cond_c
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_d
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v39

    iget-wide v15, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-object/from16 v0, v39

    iget-wide v15, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 536
    :cond_e
    const/4 v5, 0x0

    goto :goto_4

    .line 550
    .end local v35           #container:J
    .end local v39           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    .end local v42           #id:J
    :sswitch_2
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 551
    .local v27, appWidgetId:I
    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 553
    .restart local v42       #id:J
    move-object/from16 v0, v79

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v64

    .line 555
    .local v64, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v64, :cond_f

    if-lez v12, :cond_f

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_f

    .line 556
    move-object/from16 v0, v79

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getSecretAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v64

    .line 558
    :cond_f
    if-nez v50, :cond_11

    const/4 v5, -0x1

    move/from16 v0, v27

    if-eq v0, v5, :cond_11

    if-nez v64, :cond_11

    .line 559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v42

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 561
    .local v56, log:Ljava/lang/String;
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_10

    const-string v5, "LauncherExModel"

    move-object/from16 v0, v56

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_10
    sget-object v5, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 565
    .end local v56           #log:Ljava/lang/String;
    :cond_11
    const/16 v40, 0x0

    .line 567
    .local v40, homeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;
    if-lez v12, :cond_15

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v51, 0x1

    .line 573
    .local v51, isSecret:Z
    :goto_5
    if-eqz v51, :cond_12

    const/4 v5, -0x1

    move/from16 v0, v27

    if-ne v0, v5, :cond_12

    .line 574
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    const-string v6, "com.android.launcher2.prefs"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v63

    .line 575
    .local v63, prefs:Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PrefsPreSecret"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v63

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 577
    .local v62, preSecretWidgetName:Ljava/lang/String;
    if-eqz v62, :cond_12

    .line 578
    const-string v5, ":"

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 579
    .local v34, componentName:[Ljava/lang/String;
    new-instance v33, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v34, v5

    const/4 v6, 0x1

    aget-object v6, v34, v6

    move-object/from16 v0, v33

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .local v33, cn:Landroid/content/ComponentName;
    if-nez v33, :cond_16

    const/16 v40, 0x0

    .line 584
    .end local v33           #cn:Landroid/content/ComponentName;
    .end local v34           #componentName:[Ljava/lang/String;
    .end local v62           #preSecretWidgetName:Ljava/lang/String;
    .end local v63           #prefs:Landroid/content/SharedPreferences;
    :cond_12
    :goto_6
    if-nez v40, :cond_13

    if-eqz v64, :cond_13

    .line 585
    new-instance v40, Lcom/android/launcher2/HomeWidgetItem;

    .end local v40           #homeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, v40

    move-object/from16 v1, v64

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    .line 587
    .restart local v40       #homeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;
    :cond_13
    if-eqz v40, :cond_0

    .line 589
    move-wide/from16 v0, v42

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    .line 590
    move/from16 v0, v70

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v40

    iput v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 591
    move/from16 v0, v30

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v40

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 592
    move/from16 v0, v31

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v40

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 593
    move/from16 v0, v71

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v40

    iput v5, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 594
    move/from16 v0, v72

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v40

    iput v5, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 596
    move/from16 v0, v51

    move-object/from16 v1, v40

    iput-boolean v0, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 599
    const-string v5, "pkgName"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 600
    .local v25, Dummypkg:Ljava/lang/String;
    if-eqz v25, :cond_14

    .line 601
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v29

    .line 602
    .local v29, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v67, Landroid/widget/RemoteViews;

    invoke-virtual/range {v40 .. v40}, Lcom/android/launcher2/HomeWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03000a

    move-object/from16 v0, v67

    invoke-direct {v0, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 603
    .local v67, rv1:Landroid/widget/RemoteViews;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v76

    .line 604
    .local v76, title:Ljava/lang/String;
    const v5, 0x7f070035

    move-object/from16 v0, v67

    move-object/from16 v1, v76

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 605
    new-instance v45, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    move-object/from16 v0, v45

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v45, in1:Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "market://details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 607
    const-string v5, "pkgName"

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v45

    invoke-static {v5, v6, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v61

    .line 609
    .local v61, pi:Landroid/app/PendingIntent;
    const v5, 0x7f070034

    move-object/from16 v0, v67

    move-object/from16 v1, v61

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 610
    move-object/from16 v0, v29

    move/from16 v1, v27

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 613
    .end local v29           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v45           #in1:Landroid/content/Intent;
    .end local v61           #pi:Landroid/app/PendingIntent;
    .end local v67           #rv1:Landroid/widget/RemoteViews;
    .end local v76           #title:Ljava/lang/String;
    :cond_14
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v35, v0

    .line 614
    .restart local v35       #container:J
    const-wide/16 v5, -0x64

    cmp-long v5, v35, v5

    if-eqz v5, :cond_17

    const-wide/16 v5, -0x65

    cmp-long v5, v35, v5

    if-eqz v5, :cond_17

    .line 616
    const-string v5, "LauncherExModel"

    const-string v6, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 567
    .end local v25           #Dummypkg:Ljava/lang/String;
    .end local v35           #container:J
    .end local v51           #isSecret:Z
    :cond_15
    const/16 v51, 0x0

    goto/16 :goto_5

    .line 580
    .restart local v33       #cn:Landroid/content/ComponentName;
    .restart local v34       #componentName:[Ljava/lang/String;
    .restart local v51       #isSecret:Z
    .restart local v62       #preSecretWidgetName:Ljava/lang/String;
    .restart local v63       #prefs:Landroid/content/SharedPreferences;
    :cond_16
    new-instance v40, Lcom/android/launcher2/HomeWidgetItem;

    .end local v40           #homeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, v40

    move-object/from16 v1, v33

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    goto/16 :goto_6

    .line 620
    .end local v33           #cn:Landroid/content/ComponentName;
    .end local v34           #componentName:[Ljava/lang/String;
    .end local v62           #preSecretWidgetName:Ljava/lang/String;
    .end local v63           #prefs:Landroid/content/SharedPreferences;
    .restart local v25       #Dummypkg:Ljava/lang/String;
    .restart local v35       #container:J
    .restart local v40       #homeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;
    :cond_17
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, v40

    iput-wide v5, v0, Lcom/android/launcher2/HomeItem;->container:J

    .line 622
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 625
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v40

    iget-wide v15, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 632
    .end local v25           #Dummypkg:Ljava/lang/String;
    .end local v27           #appWidgetId:I
    .end local v35           #container:J
    .end local v40           #homeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;
    .end local v42           #id:J
    .end local v51           #isSecret:Z
    .end local v64           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_3
    new-instance v78, Lcom/android/launcher2/SamsungWidgetItem;

    invoke-direct/range {v78 .. v78}, Lcom/android/launcher2/SamsungWidgetItem;-><init>()V

    .line 633
    .local v78, widgetItem:Lcom/android/launcher2/SamsungWidgetItem;
    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 634
    .restart local v42       #id:J
    move-wide/from16 v0, v42

    move-object/from16 v2, v78

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    .line 635
    move/from16 v0, v70

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v78

    iput v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 636
    move/from16 v0, v30

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v78

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 637
    move/from16 v0, v31

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v78

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 638
    move/from16 v0, v71

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v78

    iput v5, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 639
    move/from16 v0, v72

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v78

    iput v5, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 640
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, v78

    iput-wide v5, v0, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    .line 642
    if-lez v12, :cond_18

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    :goto_7
    move-object/from16 v0, v78

    iput-boolean v5, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 644
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v35, v0

    .line 645
    .restart local v35       #container:J
    const-wide/16 v5, -0x64

    cmp-long v5, v35, v5

    if-eqz v5, :cond_19

    const-wide/16 v5, -0x65

    cmp-long v5, v35, v5

    if-eqz v5, :cond_19

    .line 647
    const-string v5, "LauncherExModel"

    const-string v6, "Samsung Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 642
    .end local v35           #container:J
    :cond_18
    const/4 v5, 0x0

    goto :goto_7

    .line 651
    .restart local v35       #container:J
    :cond_19
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, v78

    iput-wide v5, v0, Lcom/android/launcher2/HomeItem;->container:J

    .line 653
    move/from16 v0, v48

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v77

    .line 654
    .local v77, uri:Ljava/lang/String;
    const/4 v7, 0x0

    .line 656
    .restart local v7       #intent:Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, v77

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v7

    .line 660
    :try_start_7
    move-object/from16 v0, v78

    iput-object v7, v0, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    .line 662
    const/4 v5, 0x0

    invoke-virtual {v14, v7, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v66

    .line 663
    .local v66, ri:Landroid/content/pm/ResolveInfo;
    if-nez v66, :cond_1a

    .line 664
    const-string v5, "LauncherExModel"

    const-string v6, "Can\'t resolve SamsungWidget\'s activity. Deleting it."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 657
    .end local v66           #ri:Landroid/content/pm/ResolveInfo;
    :catch_2
    move-exception v38

    .restart local v38       #e:Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 669
    .end local v38           #e:Ljava/net/URISyntaxException;
    .restart local v66       #ri:Landroid/content/pm/ResolveInfo;
    :cond_1a
    :try_start_8
    move-object/from16 v0, v66

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v14, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 677
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    move-object/from16 v3, v78

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 680
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v78

    iget-wide v15, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v78

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v78

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 670
    :catch_3
    move-exception v38

    .line 671
    .local v38, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "LauncherExModel"

    const-string v6, "SamsungWidget\'s apk has move to sdcard and unmounted. Deleting it."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 685
    .end local v7           #intent:Landroid/content/Intent;
    .end local v35           #container:J
    .end local v38           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v42           #id:J
    .end local v66           #ri:Landroid/content/pm/ResolveInfo;
    .end local v77           #uri:Ljava/lang/String;
    .end local v78           #widgetItem:Lcom/android/launcher2/SamsungWidgetItem;
    :sswitch_4
    move/from16 v0, v48

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v77

    .line 686
    .restart local v77       #uri:Ljava/lang/String;
    const/4 v7, 0x0

    .line 688
    .restart local v7       #intent:Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_a
    move-object/from16 v0, v77

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v7

    .line 692
    :try_start_b
    sget-object v58, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 693
    .local v58, mgr:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v73

    .line 694
    .local v73, swpinfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 695
    .restart local v42       #id:J
    if-nez v73, :cond_1b

    .line 696
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SurfaceWidget-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\'s provider info could not be found. Deleting it."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 689
    .end local v42           #id:J
    .end local v58           #mgr:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .end local v73           #swpinfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    :catch_4
    move-exception v38

    .local v38, e:Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 701
    .end local v38           #e:Ljava/net/URISyntaxException;
    .restart local v42       #id:J
    .restart local v58       #mgr:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .restart local v73       #swpinfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    :cond_1b
    new-instance v69, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-direct/range {v69 .. v69}, Lcom/android/launcher2/SurfaceWidgetItem;-><init>()V

    .line 702
    .local v69, sSurfaceWidgetItem:Lcom/android/launcher2/SurfaceWidgetItem;
    move-wide/from16 v0, v42

    move-object/from16 v2, v69

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    .line 703
    move/from16 v0, v70

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v69

    iput v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 704
    move/from16 v0, v30

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v69

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 705
    move/from16 v0, v31

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v69

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 706
    move/from16 v0, v71

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v69

    iput v5, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 707
    move/from16 v0, v72

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v69

    iput v5, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 708
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, v69

    iput-wide v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    .line 710
    if-lez v12, :cond_1c

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, v69

    iput-boolean v5, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 712
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v35, v0

    .line 713
    .restart local v35       #container:J
    const-wide/16 v5, -0x64

    cmp-long v5, v35, v5

    if-eqz v5, :cond_1d

    const-wide/16 v5, -0x65

    cmp-long v5, v35, v5

    if-eqz v5, :cond_1d

    .line 715
    const-string v5, "LauncherExModel"

    const-string v6, "Surface Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 710
    .end local v35           #container:J
    :cond_1c
    const/4 v5, 0x0

    goto :goto_8

    .line 719
    .restart local v35       #container:J
    :cond_1d
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, v69

    iput-wide v5, v0, Lcom/android/launcher2/HomeItem;->container:J

    .line 720
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v69

    iput-object v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    .line 721
    const-string v5, "instance"

    const/4 v6, -0x1

    invoke-virtual {v7, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v69

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    .line 723
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_1e

    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LauncherModel read out SurfaceWidgetItem mInstance = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v69

    iget v8, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    move-object/from16 v3, v69

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 728
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v69

    iget-wide v15, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v69

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v69

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 737
    .end local v7           #intent:Landroid/content/Intent;
    .end local v35           #container:J
    .end local v42           #id:J
    .end local v52           #itemType:I
    .end local v58           #mgr:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .end local v69           #sSurfaceWidgetItem:Lcom/android/launcher2/SurfaceWidgetItem;
    .end local v73           #swpinfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .end local v77           #uri:Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-eqz v5, :cond_20

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 738
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    .line 739
    :cond_20
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 742
    if-eqz v49, :cond_21

    .line 743
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->rearrangeHotseatData(Ljava/util/ArrayList;)V

    .line 746
    :cond_21
    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_23

    .line 747
    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v32

    .line 750
    .local v32, client:Landroid/content/ContentProviderClient;
    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, i$:Ljava/util/Iterator;
    :cond_22
    :goto_9
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    .line 752
    .restart local v42       #id:J
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v42

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v5, 0x0

    :try_start_c
    move-wide/from16 v0, v42

    invoke-static {v0, v1, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6, v8}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_9

    .line 757
    :catch_5
    move-exception v38

    .line 758
    .local v38, e:Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_22

    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not remove id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v42

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 764
    .end local v32           #client:Landroid/content/ContentProviderClient;
    .end local v38           #e:Landroid/os/RemoteException;
    .end local v41           #i$:Ljava/util/Iterator;
    .end local v42           #id:J
    :cond_23
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loaded workspace in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    sub-long v15, v15, v74

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v5, "LauncherExModel"

    const-string v6, "workspace layout: "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/16 v81, 0x0

    .local v81, y:I
    :goto_a
    sget v5, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    move/from16 v0, v81

    if-ge v0, v5, :cond_28

    .line 767
    const-string v55, ""

    .line 768
    .local v55, line:Ljava/lang/String;
    const/16 v68, 0x0

    .local v68, s:I
    :goto_b
    move/from16 v0, v68

    move/from16 v1, v57

    if-ge v0, v1, :cond_27

    .line 769
    if-lez v68, :cond_24

    .line 770
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    .line 772
    :cond_24
    const/16 v80, 0x0

    .local v80, x:I
    :goto_c
    sget v5, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    move/from16 v0, v80

    if-ge v0, v5, :cond_26

    .line 773
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v5, v59, v68

    aget-object v5, v5, v80

    aget-object v5, v5, v81

    if-eqz v5, :cond_25

    const-string v5, "#"

    :goto_d
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    .line 772
    add-int/lit8 v80, v80, 0x1

    goto :goto_c

    .line 773
    :cond_25
    const-string v5, "."

    goto :goto_d

    .line 768
    :cond_26
    add-int/lit8 v68, v68, 0x1

    goto :goto_b

    .line 776
    .end local v80           #x:I
    :cond_27
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    add-int/lit8 v81, v81, 0x1

    goto :goto_a

    .line 779
    .end local v55           #line:Ljava/lang/String;
    .end local v68           #s:I
    :cond_28
    return-void

    .line 447
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x384 -> :sswitch_3
        0x385 -> :sswitch_4
    .end sparse-switch
.end method

.method private postModelRefreshed()V
    .locals 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v1, Lcom/android/launcher2/LauncherExModel$LoaderTask$15;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$15;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1026
    return-void
.end method

.method private rearrangeHotseatData(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p1, homeItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v0, hotseatItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    const/4 v2, 0x0

    .line 784
    .local v2, itemPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 785
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget-wide v3, v3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 786
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iput v2, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 788
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    invoke-static {v4, v3}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 789
    add-int/lit8 v2, v2, 0x1

    .line 784
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    :cond_1
    return-void
.end method

.method private runBindSecretPage()V
    .locals 3

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    if-nez v0, :cond_1

    .line 1047
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting AllApps and Workspace to be loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1050
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    #getter for: Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherExModel;->access$300(Lcom/android/launcher2/LauncherExModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1051
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error! Background loading is already running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1053
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    invoke-virtual {v0}, Lcom/android/launcher2/DeferredHandler;->flush()V

    .line 1055
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretPageModeChange()V

    .line 1057
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->changeScreenIdInHomeDataBase()V

    .line 1058
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretWorkspace()V

    .line 1062
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretAllApps()V

    .line 1063
    return-void
.end method

.method private waitForIdle()V
    .locals 6

    .prologue
    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 229
    .local v0, workspaceWaitTime:J
    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherExModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$1;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 241
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStep1Finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 243
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v2

    goto :goto_0

    .line 249
    :cond_0
    :try_start_2
    const-string v2, "LauncherExModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms for previous step to finish binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    monitor-exit p0

    .line 254
    return-void

    .line 253
    .end local v0           #workspaceWaitTime:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    .line 1396
    sget-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 1397
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mIsLaunching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStep1Finished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStep1Finished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItems size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_0
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 258
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v6, v3, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 259
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v7, 0x1

    #setter for: Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z
    invoke-static {v3, v7}, Lcom/android/launcher2/LauncherExModel;->access$302(Lcom/android/launcher2/LauncherExModel;Z)Z

    .line 260
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    const-string v3, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Begin LoaderTask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v2, 0x1

    .line 265
    .local v2, loadWorkspaceFirst:Z
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_1

    .line 323
    :cond_0
    :goto_0
    const-string v3, "LauncherExModel"

    const-string v4, "Comparing loaded icons to database icons"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 325
    .local v1, key:Ljava/lang/Object;
    iget-object v6, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v7, v3, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object v3, v1

    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v6, v7, v3, v4}, Lcom/android/launcher2/LauncherExModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V

    goto :goto_1

    .line 260
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Object;
    .end local v2           #loadWorkspaceFirst:Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 267
    .restart local v2       #loadWorkspaceFirst:Z
    :cond_1
    const-string v6, "LauncherExModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting thread priority to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_6

    const-string v3, "DEFAULT"

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v6, v3, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 270
    :try_start_2
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    if-eqz v3, :cond_7

    .line 271
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 277
    :goto_3
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherExModel;->hasLocaleChangedLocked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 278
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherExModel;->setLocaleLocked()V

    .line 279
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    .line 280
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v3}, Lcom/android/launcher2/PkgResCache;->clear()V

    .line 284
    :cond_3
    :goto_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 286
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsModeChanged:Z

    if-eqz v3, :cond_4

    .line 287
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretPageModeChange()V

    .line 290
    :cond_4
    const-string v3, "LauncherExModel"

    const-string v4, "step 1: loading workspace"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->loadAndBindWorkspace()V

    .line 297
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_0

    .line 300
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_5

    .line 301
    const-string v3, "LauncherExModel"

    const-string v4, "Setting thread priority to BACKGROUND"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v4, v3, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 303
    :try_start_3
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    if-eqz v3, :cond_a

    .line 304
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 307
    :goto_5
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 309
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->waitForIdle()V

    .line 312
    const-string v3, "LauncherExModel"

    const-string v4, "step 2: loading all apps"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->loadAndBindAllApps()V

    .line 318
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v4, v3, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 319
    const/4 v3, 0x0

    :try_start_4
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 320
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 267
    :cond_6
    const-string v3, "BACKGROUND"

    goto/16 :goto_2

    .line 274
    :cond_7
    :try_start_5
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_8

    move v3, v5

    :goto_6
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_3

    .line 284
    :catchall_2
    move-exception v3

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    :cond_8
    move v3, v4

    .line 274
    goto :goto_6

    .line 281
    :cond_9
    :try_start_6
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    if-nez v3, :cond_3

    .line 282
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->postModelRefreshed()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 306
    :cond_a
    const/16 v3, 0xa

    :try_start_7
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_5

    .line 307
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v3

    .line 326
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_b
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 328
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iput-boolean v5, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    .line 329
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v4, v3, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 331
    :try_start_8
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    #getter for: Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;
    invoke-static {v3}, Lcom/android/launcher2/LauncherExModel;->access$000(Lcom/android/launcher2/LauncherExModel;)Lcom/android/launcher2/LauncherExModel$LoaderTask;

    move-result-object v3

    if-ne v3, p0, :cond_c

    .line 332
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v5, 0x0

    #setter for: Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;
    invoke-static {v3, v5}, Lcom/android/launcher2/LauncherExModel;->access$002(Lcom/android/launcher2/LauncherExModel;Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .line 334
    :cond_c
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v5, 0x0

    #setter for: Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z
    invoke-static {v3, v5}, Lcom/android/launcher2/LauncherExModel;->access$302(Lcom/android/launcher2/LauncherExModel;Z)Z

    .line 335
    monitor-exit v4

    .line 336
    return-void

    .line 335
    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v3
.end method

.method public stopLocked()V
    .locals 3

    .prologue
    .line 339
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping LoaderTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    .line 341
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppLoader;->abortLoader()V

    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 344
    monitor-exit p0

    .line 345
    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
