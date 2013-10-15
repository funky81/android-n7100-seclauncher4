.class Lcom/android/launcher2/Workspace$13;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

.field final synthetic val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

.field final synthetic val$layout:Lcom/android/launcher2/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1800
    iput-object p1, p0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$13;->val$layout:Lcom/android/launcher2/CellLayout;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$13;->val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$13;->val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1803
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Runnable D Runnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    iget-object v0, p0, Lcom/android/launcher2/Workspace$13;->val$layout:Lcom/android/launcher2/CellLayout;

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$13;->val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    new-instance v2, Lcom/android/launcher2/Workspace$13$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$13$1;-><init>(Lcom/android/launcher2/Workspace$13;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setResizeFrame(Landroid/view/View;Ljava/lang/Runnable;Lcom/android/launcher2/Workspace$State;)V

    .line 1832
    iget-object v0, p0, Lcom/android/launcher2/Workspace$13;->val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$13;->val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

    iget v1, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v0, v1, :cond_0

    .line 1833
    iget-object v0, p0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$13;->val$homeItem:Lcom/android/launcher2/HomeWidgetItem;

    iget v1, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1835
    :cond_0
    return-void
.end method
