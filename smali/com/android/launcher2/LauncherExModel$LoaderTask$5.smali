.class Lcom/android/launcher2/LauncherExModel$LoaderTask$5;
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

.field final synthetic val$chunkSize:I

.field final synthetic val$start:I

.field final synthetic val$workspace:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/List;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;->val$workspace:Ljava/util/List;

    iput p3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;->val$start:I

    iput p4, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;->val$chunkSize:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 861
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    #calls: Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$400(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 862
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 863
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;->val$workspace:Ljava/util/List;

    iget v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;->val$start:I

    iget v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;->val$start:I

    iget v4, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;->val$chunkSize:I

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeShortcuts(Ljava/util/List;II)V

    .line 864
    :cond_0
    return-void
.end method
