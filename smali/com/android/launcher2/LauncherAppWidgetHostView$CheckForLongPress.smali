.class Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherAppWidgetHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    #calls: Lcom/android/launcher2/LauncherAppWidgetHostView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->access$300(Lcom/android/launcher2/LauncherAppWidgetHostView;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    .line 221
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    #getter for: Lcom/android/launcher2/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;
    invoke-static {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->access$000(Lcom/android/launcher2/LauncherAppWidgetHostView;)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    #calls: Lcom/android/launcher2/LauncherAppWidgetHostView;->getWindowAttachCount()I
    invoke-static {v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->access$100(Lcom/android/launcher2/LauncherAppWidgetHostView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    #getter for: Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->access$200(Lcom/android/launcher2/LauncherAppWidgetHostView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/android/launcher2/LauncherAppWidgetHostView;

    const/4 v1, 0x1

    #setter for: Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->access$202(Lcom/android/launcher2/LauncherAppWidgetHostView;Z)Z

    .line 217
    :cond_0
    return-void
.end method
