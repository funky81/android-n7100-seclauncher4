.class Lcom/android/launcher2/AlphabeticalListIndicator$StateChanger;
.super Ljava/lang/Object;
.source "AlphabeticalListIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AlphabeticalListIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateChanger"
.end annotation


# instance fields
.field private mRunning:Z

.field final synthetic this$0:Lcom/android/launcher2/AlphabeticalListIndicator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AlphabeticalListIndicator;)V
    .locals 1
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/launcher2/AlphabeticalListIndicator$StateChanger;->this$0:Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator$StateChanger;->mRunning:Z

    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 569
    iget-boolean v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator$StateChanger;->mRunning:Z

    if-nez v1, :cond_0

    .line 574
    :goto_0
    return v0

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListIndicator$StateChanger;->this$0:Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/AlphabeticalListIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 573
    iput-boolean v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator$StateChanger;->mRunning:Z

    .line 574
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator$StateChanger;->mRunning:Z

    return v0
.end method

.method public postToQueue(I)V
    .locals 3
    .parameter "aDelay"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator$StateChanger;->this$0:Lcom/android/launcher2/AlphabeticalListIndicator;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator$StateChanger;->mRunning:Z

    .line 557
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AlphabeticalListIndicator$StateChanger;->mRunning:Z

    .line 566
    return-void
.end method
