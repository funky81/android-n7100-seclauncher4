.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

.field final synthetic val$addedFinal:Ljava/util/List;

.field final synthetic val$removedFinal:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2389
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;->val$addedFinal:Ljava/util/List;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;->val$removedFinal:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2392
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;->val$addedFinal:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;->val$removedFinal:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuAppModel;->appsAddedOrRemoved(Ljava/util/List;Ljava/util/List;)V

    .line 2393
    return-void
.end method
