.class Lcom/android/launcher2/LauncherExModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherExModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherExModel$LoaderTask;->waitForIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    const/4 v2, 0x1

    #setter for: Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStep1Finished:Z
    invoke-static {v0, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$202(Lcom/android/launcher2/LauncherExModel$LoaderTask;Z)Z

    .line 235
    const-string v0, "LauncherExModel"

    const-string v2, "done with first binding step"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 238
    monitor-exit v1

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
