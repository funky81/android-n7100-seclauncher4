.class Lcom/android/launcher2/Workspace$StateChangeRunnable;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangeRunnable"
.end annotation


# instance fields
.field private mMyState:Lcom/android/launcher2/Workspace$State;

.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V
    .locals 1
    .parameter
    .parameter "state"

    .prologue
    .line 1669
    iput-object p1, p0, Lcom/android/launcher2/Workspace$StateChangeRunnable;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace$StateChangeRunnable;->mMyState:Lcom/android/launcher2/Workspace$State;

    .line 1670
    iput-object p2, p0, Lcom/android/launcher2/Workspace$StateChangeRunnable;->mMyState:Lcom/android/launcher2/Workspace$State;

    .line 1671
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/launcher2/Workspace$StateChangeRunnable;->mMyState:Lcom/android/launcher2/Workspace$State;

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/android/launcher2/Workspace$StateChangeRunnable;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$StateChangeRunnable;->mMyState:Lcom/android/launcher2/Workspace$State;

    #calls: Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V
    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$1400(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V

    .line 1678
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace$StateChangeRunnable;->this$0:Lcom/android/launcher2/Workspace;

    #calls: Lcom/android/launcher2/Workspace;->refreshHotseat()V
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1700(Lcom/android/launcher2/Workspace;)V

    .line 1679
    return-void
.end method
