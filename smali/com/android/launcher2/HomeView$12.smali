.class Lcom/android/launcher2/HomeView$12;
.super Landroid/os/Handler;
.source "HomeView.java"


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
    .line 1545
    iput-object p1, p0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 1548
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1549
    const/4 v1, 0x0

    .line 1550
    .local v1, i:I
    iget-object v5, p0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/launcher2/HomeView;->access$400(Lcom/android/launcher2/HomeView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1551
    .local v3, key:Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/launcher2/HomeView;->access$400(Lcom/android/launcher2/HomeView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1552
    .local v4, v:Landroid/view/View;
    mul-int/lit16 v0, v1, 0xfa

    .line 1553
    .local v0, delay:I
    instance-of v5, v4, Landroid/widget/Advanceable;

    if-eqz v5, :cond_0

    .line 1554
    new-instance v5, Lcom/android/launcher2/HomeView$12$1;

    invoke-direct {v5, p0, v4}, Lcom/android/launcher2/HomeView$12$1;-><init>(Lcom/android/launcher2/HomeView$12;Landroid/view/View;)V

    int-to-long v6, v0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/launcher2/HomeView$12;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1562
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1563
    goto :goto_0

    .line 1564
    .end local v0           #delay:I
    .end local v3           #key:Landroid/view/View;
    .end local v4           #v:Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    const-wide/16 v6, 0x4e20

    #calls: Lcom/android/launcher2/HomeView;->sendAdvanceMessage(J)V
    invoke-static {v5, v6, v7}, Lcom/android/launcher2/HomeView;->access$500(Lcom/android/launcher2/HomeView;J)V

    .line 1578
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 1566
    :cond_3
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 1567
    iget-object v5, p0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mMarketSample:Landroid/view/View;
    invoke-static {v5}, Lcom/android/launcher2/HomeView;->access$600(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1568
    iget-object v5, p0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mMarketSample:Landroid/view/View;
    invoke-static {v5}, Lcom/android/launcher2/HomeView;->access$600(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1569
    iget-object v5, p0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    const v6, 0x7f070065

    invoke-virtual {v5, v6}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1570
    .restart local v4       #v:Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v5}, Lcom/android/launcher2/HomeView;->access$700(Lcom/android/launcher2/HomeView;)Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 1573
    .end local v4           #v:Landroid/view/View;
    :cond_4
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 1574
    iget-object v5, p0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mMarketSample:Landroid/view/View;
    invoke-static {v5}, Lcom/android/launcher2/HomeView;->access$600(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1575
    iget-object v5, p0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mMarketSample:Landroid/view/View;
    invoke-static {v5}, Lcom/android/launcher2/HomeView;->access$600(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_1
.end method
