.class Lcom/android/launcher2/ChainIterable$ChainIterator;
.super Ljava/lang/Object;
.source "ChainIterable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ChainIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChainIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mCurrent:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Iterable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher2/ChainIterable;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ChainIterable;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    .local p0, this:Lcom/android/launcher2/ChainIterable$ChainIterator;,"Lcom/android/launcher2/ChainIterable<TT;>.ChainIterator;"
    iput-object p1, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->this$0:Lcom/android/launcher2/ChainIterable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    #getter for: Lcom/android/launcher2/ChainIterable;->mIterables:Ljava/lang/Iterable;
    invoke-static {p1}, Lcom/android/launcher2/ChainIterable;->access$000(Lcom/android/launcher2/ChainIterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mIterator:Ljava/util/Iterator;

    .line 48
    iget-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 60
    .local p0, this:Lcom/android/launcher2/ChainIterable$ChainIterator;,"Lcom/android/launcher2/ChainIterable<TT;>.ChainIterator;"
    iget-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lcom/android/launcher2/ChainIterable$ChainIterator;,"Lcom/android/launcher2/ChainIterable<TT;>.ChainIterator;"
    iget-object v1, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, temp:Ljava/lang/Object;,"TT;"
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/ChainIterable$ChainIterator;->mCurrent:Ljava/util/Iterator;

    goto :goto_0

    .line 68
    :cond_0
    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 71
    .local p0, this:Lcom/android/launcher2/ChainIterable$ChainIterator;,"Lcom/android/launcher2/ChainIterable<TT;>.ChainIterator;"
    return-void
.end method
