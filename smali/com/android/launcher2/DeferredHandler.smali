.class public Lcom/android/launcher2/DeferredHandler;
.super Ljava/lang/Object;
.source "DeferredHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DeferredHandler$1;,
        Lcom/android/launcher2/DeferredHandler$IdleRunnable;,
        Lcom/android/launcher2/DeferredHandler$Impl;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/launcher2/DeferredHandler$Impl;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 36
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    .line 37
    new-instance v0, Lcom/android/launcher2/DeferredHandler$Impl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/DeferredHandler$Impl;-><init>(Lcom/android/launcher2/DeferredHandler;Lcom/android/launcher2/DeferredHandler$1;)V

    iput-object v0, p0, Lcom/android/launcher2/DeferredHandler;->mHandler:Lcom/android/launcher2/DeferredHandler$Impl;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/DeferredHandler;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 101
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    monitor-exit v1

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 5

    .prologue
    .line 113
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 114
    .local v2, queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/util/Pair<Ljava/lang/Runnable;Ljava/lang/Integer;>;>;"
    iget-object v4, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v4

    .line 115
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object v3, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 117
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 119
    .local v1, p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Runnable;Ljava/lang/Integer;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 117
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Runnable;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 121
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;I)V

    .line 83
    return-void
.end method

.method public post(Ljava/lang/Runnable;I)V
    .locals 4
    .parameter "runnable"
    .parameter "type"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher2/DeferredHandler;->scheduleNextLocked()V

    .line 91
    :cond_0
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public postIdle(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 96
    new-instance v0, Lcom/android/launcher2/DeferredHandler$IdleRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/DeferredHandler$IdleRunnable;-><init>(Lcom/android/launcher2/DeferredHandler;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method scheduleNextLocked()V
    .locals 4

    .prologue
    .line 124
    iget-object v2, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 126
    .local v0, p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Runnable;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    .line 127
    .local v1, peek:Ljava/lang/Runnable;
    instance-of v2, v1, Lcom/android/launcher2/DeferredHandler$IdleRunnable;

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/launcher2/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v3, p0, Lcom/android/launcher2/DeferredHandler;->mHandler:Lcom/android/launcher2/DeferredHandler$Impl;

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 133
    .end local v0           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Runnable;Ljava/lang/Integer;>;"
    .end local v1           #peek:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 130
    .restart local v0       #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Runnable;Ljava/lang/Integer;>;"
    .restart local v1       #peek:Ljava/lang/Runnable;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/DeferredHandler;->mHandler:Lcom/android/launcher2/DeferredHandler$Impl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler$Impl;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
