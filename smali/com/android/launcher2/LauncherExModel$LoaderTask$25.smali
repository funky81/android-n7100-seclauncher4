.class Lcom/android/launcher2/LauncherExModel$LoaderTask$25;
.super Ljava/lang/Object;
.source "LauncherExModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretAllApps()V
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
    .line 1206
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$25;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1208
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 1210
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$25;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    #calls: Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$400(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1211
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1212
    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAllAppsSecretMode()V

    .line 1213
    :cond_0
    return-void
.end method
