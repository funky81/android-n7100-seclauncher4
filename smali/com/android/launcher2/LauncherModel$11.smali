.class Lcom/android/launcher2/LauncherModel$11;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->toggleEasyMode(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$easyModeSwitch:I

.field final synthetic val$fromSettings:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2201
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$11;->this$0:Lcom/android/launcher2/LauncherModel;

    iput p2, p0, Lcom/android/launcher2/LauncherModel$11;->val$easyModeSwitch:I

    iput-boolean p3, p0, Lcom/android/launcher2/LauncherModel$11;->val$fromSettings:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2204
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$11;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/LauncherModel$11;->val$easyModeSwitch:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/LauncherProvider;->switchFavoritesMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2205
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$11;->val$fromSettings:Z

    if-eqz v1, :cond_0

    .line 2206
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$11;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v0, v1, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 2207
    .local v0, origCallbacks:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/LauncherModel$Callbacks;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2208
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$11;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherModel$11$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherModel$11$1;-><init>(Lcom/android/launcher2/LauncherModel$11;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2225
    .end local v0           #origCallbacks:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/LauncherModel$Callbacks;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$11;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    .line 2226
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$11;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-boolean v3, v1, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    .line 2228
    :cond_1
    return-void
.end method
