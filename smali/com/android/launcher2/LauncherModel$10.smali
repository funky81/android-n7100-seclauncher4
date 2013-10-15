.class Lcom/android/launcher2/LauncherModel$10;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->restartLauncher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;)V
    .locals 0
    .parameter

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1138
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v0, v1, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 1139
    .local v0, origCallbacks:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/LauncherModel$Callbacks;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1140
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherModel$10$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherModel$10$1;-><init>(Lcom/android/launcher2/LauncherModel$10;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1151
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    .line 1152
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-boolean v3, v1, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    .line 1153
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-boolean v3, v1, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    .line 1154
    return-void
.end method
