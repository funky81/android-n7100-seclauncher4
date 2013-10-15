.class Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;
.super Ljava/lang/Object;
.source "SamsungWidgetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SamsungWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/android/launcher2/SamsungWidgetView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SamsungWidgetView;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    #calls: Lcom/android/launcher2/SamsungWidgetView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/android/launcher2/SamsungWidgetView;->access$300(Lcom/android/launcher2/SamsungWidgetView;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->mOriginalWindowAttachCount:I

    .line 161
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    #getter for: Lcom/android/launcher2/SamsungWidgetView;->mParent:Landroid/view/ViewParent;
    invoke-static {v0}, Lcom/android/launcher2/SamsungWidgetView;->access$000(Lcom/android/launcher2/SamsungWidgetView;)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungWidgetView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    #calls: Lcom/android/launcher2/SamsungWidgetView;->getWindowAttachCount()I
    invoke-static {v1}, Lcom/android/launcher2/SamsungWidgetView;->access$100(Lcom/android/launcher2/SamsungWidgetView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    #getter for: Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z
    invoke-static {v0}, Lcom/android/launcher2/SamsungWidgetView;->access$200(Lcom/android/launcher2/SamsungWidgetView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungWidgetView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    const/4 v1, 0x1

    #setter for: Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/SamsungWidgetView;->access$202(Lcom/android/launcher2/SamsungWidgetView;Z)Z

    .line 157
    :cond_0
    return-void
.end method
