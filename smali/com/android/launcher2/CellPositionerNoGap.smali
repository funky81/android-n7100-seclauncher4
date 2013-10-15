.class public Lcom/android/launcher2/CellPositionerNoGap;
.super Ljava/lang/Object;
.source "CellPositionerNoGap.java"

# interfaces
.implements Lcom/android/launcher2/CellPositioner;


# instance fields
.field private final mLayout:Lcom/android/launcher2/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/launcher2/CellPositionerNoGap;->mLayout:Lcom/android/launcher2/CellLayout;

    .line 30
    return-void
.end method


# virtual methods
.method public addDelta(Lcom/android/launcher2/PositionDelta;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 67
    return-void
.end method

.method public deltaAt(IIII)Lcom/android/launcher2/PositionDelta;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "spanx"
    .parameter "spany"

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public findNearestVacantArea(IIII[I)[I
    .locals 1
    .parameter "cell_x"
    .parameter "cell_y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 56
    if-eqz p5, :cond_0

    .line 57
    :goto_0
    const/4 v0, 0x0

    aput p1, p5, v0

    .line 58
    const/4 v0, 0x1

    aput p2, p5, v0

    .line 59
    return-object p5

    .line 56
    :cond_0
    const/4 v0, 0x2

    new-array p5, v0, [I

    goto :goto_0
.end method

.method public getDeltas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset(Z)V
    .locals 0
    .parameter "resetDrag"

    .prologue
    .line 51
    return-void
.end method

.method public resetDragDelta()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public updateDeltasForDrag(Lcom/android/launcher2/PositionDelta;IIZZZ)Z
    .locals 1
    .parameter "dragDelta"
    .parameter "minSpanX"
    .parameter "minSpanY"
    .parameter "shrinkingEnabled"
    .parameter "allowDragDeltaReposition"
    .parameter "ignoreOccupied"

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method
