.class Lcom/android/launcher2/LauncherExModel$LoaderTask$22;
.super Ljava/lang/Object;
.source "LauncherExModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretWorkspace(Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

.field final synthetic val$secretWidget:Lcom/android/launcher2/SurfaceWidgetItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/SurfaceWidgetItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$22;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$22;->val$secretWidget:Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1132
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$22;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    #calls: Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$400(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1133
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1134
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$22;->val$secretWidget:Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeSurfaceWidget(Lcom/android/launcher2/SurfaceWidgetItem;)V

    .line 1135
    :cond_0
    return-void
.end method
