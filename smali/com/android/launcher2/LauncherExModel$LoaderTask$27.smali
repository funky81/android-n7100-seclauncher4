.class Lcom/android/launcher2/LauncherExModel$LoaderTask$27;
.super Ljava/lang/Object;
.source "LauncherExModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherExModel$LoaderTask;->changeScreenIdInAppsDataBase(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

.field final synthetic val$newPositions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$27;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$27;->val$newPositions:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$27;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    iget-object v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$27;->val$newPositions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherProvider;->moveAppOrderModify(Ljava/util/List;)V

    .line 1348
    return-void
.end method
