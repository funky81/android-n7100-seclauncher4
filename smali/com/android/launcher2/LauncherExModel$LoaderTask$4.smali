.class Lcom/android/launcher2/LauncherExModel$LoaderTask$4;
.super Ljava/lang/Object;
.source "LauncherExModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

.field final synthetic val$hotseat:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 846
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$4;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$4;->val$hotseat:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 848
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$4;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    #calls: Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$400(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 849
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 850
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$4;->val$hotseat:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHotseatItems(Ljava/util/List;)V

    .line 851
    :cond_0
    const-string v1, "LauncherExModel"

    const-string v2, "bindWorkspace:: Callback to Bind hotseat"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return-void
.end method
