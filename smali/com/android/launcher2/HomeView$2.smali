.class Lcom/android/launcher2/HomeView$2;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->onHomePressed(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$moveToDefaultScreen:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/launcher2/HomeView$2;->this$0:Lcom/android/launcher2/HomeView;

    iput-boolean p2, p0, Lcom/android/launcher2/HomeView$2;->val$moveToDefaultScreen:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/launcher2/HomeView$2;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 785
    iget-object v0, p0, Lcom/android/launcher2/HomeView$2;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/HomeView$2$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$2$1;-><init>(Lcom/android/launcher2/HomeView$2;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 791
    return-void
.end method
