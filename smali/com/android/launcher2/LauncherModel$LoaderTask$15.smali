.class Lcom/android/launcher2/LauncherModel$LoaderTask$15;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->postModelRefreshed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V
    .locals 0
    .parameter

    .prologue
    .line 2146
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$15;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2149
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$15;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    #getter for: Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$300(Lcom/android/launcher2/LauncherModel$LoaderTask;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2150
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->onModelRefreshed()V

    .line 2152
    const-string v1, "Launcher.Model"

    const-string v2, "MenuAppModel.onModelRefreshed called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$15;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    #calls: Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$200(Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 2154
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 2155
    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAppsLoaded()V

    .line 2157
    const-string v1, "Launcher.Model"

    const-string v2, "bindAppsLoaded called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    .end local v0           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_0
    return-void
.end method
