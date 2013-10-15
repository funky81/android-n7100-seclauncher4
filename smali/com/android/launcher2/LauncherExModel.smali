.class public Lcom/android/launcher2/LauncherExModel;
.super Lcom/android/launcher2/LauncherModel;
.source "LauncherExModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherExModel$LoaderTask;
    }
.end annotation


# static fields
.field public static final INTENT_SECRET_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.SECRET_MODE_OFF"

.field public static final INTENT_SECRET_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.SECRET_MODE_ON"

.field public static final INTENT_UPDATING_APPWDGET_COMPLETED:Ljava/lang/String; = "com.samsung.android.intent.action.UPDATING_APPWIDGET_COMPLETED"

.field private static final TAG:Ljava/lang/String; = "LauncherExModel"


# instance fields
.field private mIsCurrentSecretMode:Z

.field private mIsLoaderTaskRunning:Z

.field private volatile mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V
    .locals 1
    .parameter "app"
    .parameter "pkgResCache"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    .line 54
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherExModel;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherExModel;)Lcom/android/launcher2/LauncherExModel$LoaderTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/LauncherExModel;Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherExModel$LoaderTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/LauncherExModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/LauncherExModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/android/launcher2/LauncherExModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 161
    sget-object v0, Lcom/android/launcher2/LauncherExModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 169
    sget-object v0, Lcom/android/launcher2/LauncherExModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 170
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherExModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private startLoader(ZZ)V
    .locals 2
    .parameter "isSecret"
    .parameter "isModeChanged"

    .prologue
    .line 102
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZZZ)V

    .line 103
    return-void
.end method

.method private startLoader(ZZZZ)V
    .locals 3
    .parameter "isLaunching"
    .parameter "forceRefresh"
    .parameter "isSecret"
    .parameter "isModeChanged"

    .prologue
    .line 108
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLoader. isLaunching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; forceRefresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Secret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    if-eqz p2, :cond_0

    .line 112
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherExModel;->stopLoaderLocked()Z

    move-result v0

    or-int/2addr p1, v0

    .line 117
    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/launcher2/LauncherExModel$LoaderTask;-><init>(Lcom/android/launcher2/LauncherExModel;ZZZ)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .line 118
    if-eqz p4, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_2

    .line 119
    sget-object v0, Lcom/android/launcher2/LauncherExModel;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher2/LauncherExModel$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/LauncherExModel$1;-><init>(Lcom/android/launcher2/LauncherExModel;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    :cond_1
    :goto_0
    monitor-exit v1

    .line 130
    return-void

    .line 125
    :cond_2
    sget-object v0, Lcom/android/launcher2/LauncherExModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 126
    sget-object v0, Lcom/android/launcher2/LauncherExModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dumpState()V
    .locals 4

    .prologue
    .line 1407
    const-string v1, "LauncherExModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallbacks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const-string v1, "LauncherExModel"

    const-string v2, "mMainAppCache.added"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1409
    const-string v1, "LauncherExModel"

    const-string v2, "mMainAppCache.removed"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1410
    const-string v1, "LauncherExModel"

    const-string v2, "mMainAppCache.modified"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1413
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .line 1414
    .local v0, loader:Lcom/android/launcher2/LauncherExModel$LoaderTask;
    if-eqz v0, :cond_0

    .line 1415
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->dumpState()V

    .line 1419
    :goto_0
    return-void

    .line 1417
    :cond_0
    const-string v1, "LauncherExModel"

    const-string v2, "mLoaderTask=null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "com.samsung.android.intent.extra.SECRET_APP"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 63
    .local v2, isSecretPackageChange:Z
    if-eqz v2, :cond_1

    .line 94
    .end local v2           #isSecretPackageChange:Z
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 67
    const-string v3, "com.samsung.android.intent.action.SECRET_MODE_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    :cond_2
    :goto_1
    const-string v3, "com.samsung.android.intent.action.UPDATING_APPWIDGET_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "secretMode"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 78
    .local v1, isSecretOn:Z
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    if-nez v3, :cond_0

    .line 79
    invoke-direct {p0, v4, v4}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZ)V

    .line 80
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    if-nez v3, :cond_5

    :goto_2
    iput-boolean v4, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    goto :goto_0

    .line 69
    .end local v1           #isSecretOn:Z
    :cond_3
    const-string v3, "com.samsung.android.intent.action.SECRET_MODE_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    if-eqz v3, :cond_2

    .line 71
    invoke-direct {p0, v5, v4}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZ)V

    .line 72
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    if-nez v3, :cond_4

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_3

    .restart local v1       #isSecretOn:Z
    :cond_5
    move v4, v5

    .line 80
    goto :goto_2
.end method

.method public startLoader(Z)V
    .locals 2
    .parameter "isSecret"

    .prologue
    const/4 v1, 0x0

    .line 98
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZZZ)V

    .line 99
    return-void
.end method

.method public startLoaderFromBackground(Z)V
    .locals 3
    .parameter "forceRefresh"

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 148
    .local v0, cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    invoke-direct {p0, v2, p1, v1, v2}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZZZ)V

    .line 158
    :goto_1
    return-void

    .line 147
    .end local v0           #cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v0, v1

    goto :goto_0

    .line 151
    .restart local v0       #cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherExModel;->stopLoaderLocked()Z

    .line 153
    if-eqz p1, :cond_2

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    .line 156
    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected stopLoaderLocked()Z
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, isLaunching:Z
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .line 135
    .local v1, oldTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .line 136
    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 140
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->stopLocked()V

    .line 142
    :cond_1
    return v0
.end method
