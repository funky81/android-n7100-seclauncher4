.class Lcom/android/launcher2/HomeView$4;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;)V
    .locals 0
    .parameter

    .prologue
    .line 972
    iput-object p1, p0, Lcom/android/launcher2/HomeView$4;->this$0:Lcom/android/launcher2/HomeView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "ev"

    .prologue
    .line 975
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 976
    .local v0, action:I
    invoke-static {}, Lcom/android/launcher2/HomeView;->access$200()Landroid/os/DVFSHelper;

    move-result-object v1

    const-string v2, "Launcher_touch"

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 978
    if-nez v0, :cond_0

    .line 979
    invoke-static {}, Lcom/android/launcher2/HomeView;->access$200()Landroid/os/DVFSHelper;

    move-result-object v1

    const-string v2, "Launcher_touch"

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    .line 981
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 982
    invoke-static {}, Lcom/android/launcher2/HomeView;->access$200()Landroid/os/DVFSHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    .line 985
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
