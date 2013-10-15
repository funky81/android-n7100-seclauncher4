.class Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagePreviewSnapDelay"
.end annotation


# instance fields
.field private delay:J

.field private isRunning:Z

.field private pageIndex:I

.field final synthetic this$0:Lcom/android/launcher2/PagedView;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/PagedView;)V
    .locals 2
    .parameter

    .prologue
    .line 3618
    iput-object p1, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->this$0:Lcom/android/launcher2/PagedView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->isRunning:Z

    .line 3615
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->pageIndex:I

    .line 3619
    invoke-virtual {p1}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->delay:J

    .line 3620
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->this$0:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3636
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->pageIndex:I

    .line 3637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->isRunning:Z

    .line 3638
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 3642
    iget-object v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->this$0:Lcom/android/launcher2/PagedView;

    iget v1, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->pageIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 3643
    return-void
.end method

.method public snapTo(I)V
    .locals 3
    .parameter "pageIndex"

    .prologue
    .line 3623
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->isRunning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->pageIndex:I

    if-eq p1, v0, :cond_0

    .line 3624
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    .line 3627
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->isRunning:Z

    if-nez v0, :cond_1

    .line 3628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->isRunning:Z

    .line 3629
    iput p1, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->pageIndex:I

    .line 3630
    iget-object v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->this$0:Lcom/android/launcher2/PagedView;

    iget-wide v1, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->delay:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher2/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3632
    :cond_1
    return-void
.end method
