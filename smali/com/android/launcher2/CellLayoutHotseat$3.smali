.class Lcom/android/launcher2/CellLayoutHotseat$3;
.super Ljava/lang/Object;
.source "CellLayoutHotseat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutHotseat;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutHotseat;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutHotseat$3;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat$3;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->access$102(Lcom/android/launcher2/CellLayoutHotseat;Z)Z

    .line 375
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat$3;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    .line 376
    return-void
.end method
