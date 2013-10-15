.class public Lcom/android/launcher2/CellPositionerWorkspace;
.super Ljava/lang/Object;
.source "CellPositionerWorkspace.java"

# interfaces
.implements Lcom/android/launcher2/CellPositioner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;,
        Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;
    }
.end annotation


# instance fields
.field private final directions:[[I

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mDeltaProvider:Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;

.field private final mDeltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private mDragDelta:Lcom/android/launcher2/PositionDelta;

.field private final mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

.field final mNumColumns:I

.field final mNumRows:I

.field private mOccupied:[[Z

.field private mShrinkingEnabled:Z

.field private final tmpExactXY:[I

.field private tmpForSort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpRect:[I

.field private tmpRollback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpShiftDeltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpSortedDeltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpXY:[I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;)V
    .locals 6
    .parameter "deltaProvider"
    .parameter "gridDimensionProvder"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    .line 59
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    .line 61
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    .line 74
    iput-boolean v4, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mShrinkingEnabled:Z

    .line 271
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltaProvider:Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;

    .line 48
    iput-object p2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    .line 50
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v0}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getNumRows()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    .line 51
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v0}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getNumColumns()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    .line 53
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v0}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellWidth:I

    .line 54
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v0}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellHeight:I

    .line 56
    return-void

    .line 61
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_7
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private calculateOccupiedCells(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, deltas:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    iget v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    iget v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    .line 408
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 409
    .local v0, d:Lcom/android/launcher2/PositionDelta;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto :goto_0

    .line 411
    .end local v0           #d:Lcom/android/launcher2/PositionDelta;
    :cond_0
    return-void
.end method

.method private findDeltas(Lcom/android/launcher2/PositionDelta;Ljava/util/List;Ljava/util/List;Z)Z
    .locals 4
    .parameter "underPos"
    .parameter
    .parameter
    .parameter "overlappingOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/PositionDelta;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p2, source:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    .local p3, res:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    const/4 v2, 0x1

    .line 381
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 383
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 384
    .local v0, d:Lcom/android/launcher2/PositionDelta;
    if-eqz p4, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PositionDelta;->overlaps(Lcom/android/launcher2/PositionDelta;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    .end local v0           #d:Lcom/android/launcher2/PositionDelta;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 390
    .restart local v0       #d:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->shrinkable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    if-gt v3, v2, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 391
    :cond_4
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 393
    .end local v0           #d:Lcom/android/launcher2/PositionDelta;
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 394
    .restart local v0       #d:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 395
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 397
    .end local v0           #d:Lcom/android/launcher2/PositionDelta;
    :cond_7
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 398
    .restart local v0       #d:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->shrinkable()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    if-gt v3, v2, :cond_9

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    if-le v3, v2, :cond_8

    .line 399
    :cond_9
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 402
    .end local v0           #d:Lcom/android/launcher2/PositionDelta;
    :cond_a
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 403
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    :goto_4
    return v2

    :cond_b
    const/4 v2, 0x0

    goto :goto_4
.end method

.method private findNearestArea(IIIIZ[I)Z
    .locals 10
    .parameter "cell_x"
    .parameter "cell_y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreOccupied"
    .parameter "result"

    .prologue
    .line 437
    if-eqz p5, :cond_0

    const/4 v7, 0x1

    if-ne p3, v7, :cond_0

    const/4 v7, 0x1

    if-ne p4, v7, :cond_0

    .line 438
    const/4 v7, 0x0

    aput p1, p6, v7

    .line 439
    const/4 v7, 0x1

    aput p2, p6, v7

    .line 440
    const/4 v7, 0x1

    .line 483
    :goto_0
    return v7

    .line 442
    :cond_0
    move-object/from16 v1, p6

    .line 445
    .local v1, bestXY:[I
    const v0, 0x7f7fffff

    .line 447
    .local v0, bestDistance:F
    const/4 v6, 0x0

    .local v6, y:I
    :goto_1
    iget v7, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    add-int/lit8 v8, p4, -0x1

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_6

    .line 449
    const/4 v5, 0x0

    .local v5, x:I
    :goto_2
    iget v7, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    add-int/lit8 v8, p3, -0x1

    sub-int/2addr v7, v8

    if-ge v5, v7, :cond_5

    .line 450
    if-nez p5, :cond_4

    .line 451
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, p3, :cond_4

    .line 452
    const/4 v4, 0x0

    .local v4, j:I
    :goto_4
    if-ge v4, p4, :cond_3

    .line 453
    iget-object v7, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    add-int v8, v5, v3

    aget-object v7, v7, v8

    add-int v8, v6, v4

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_2

    .line 454
    add-int/2addr v5, v3

    .line 449
    .end local v3           #i:I
    .end local v4           #j:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 452
    .restart local v3       #i:I
    .restart local v4       #j:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 451
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 467
    .end local v3           #i:I
    .end local v4           #j:I
    :cond_4
    sub-int v7, v5, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellWidth:I

    mul-int/2addr v7, v8

    sub-int v8, v6, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellHeight:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    int-to-float v2, v7

    .line 470
    .local v2, distance:F
    cmpg-float v7, v2, v0

    if-gtz v7, :cond_1

    .line 471
    move v0, v2

    .line 472
    const/4 v7, 0x0

    aput v5, v1, v7

    .line 473
    const/4 v7, 0x1

    aput v6, v1, v7

    .line 475
    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    .line 447
    .end local v2           #distance:F
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 480
    .end local v5           #x:I
    :cond_6
    const v7, 0x7f7fffff

    cmpl-float v7, v0, v7

    if-nez v7, :cond_7

    .line 481
    const/4 v7, 0x0

    goto :goto_0

    .line 483
    :cond_7
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private isDeltaValid(II)Z
    .locals 1
    .parameter "xDim"
    .parameter "yDim"

    .prologue
    .line 428
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 429
    const/4 v0, 0x1

    .line 431
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V
    .locals 7
    .parameter "d"
    .parameter "mark"

    .prologue
    .line 414
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v3

    .line 415
    .local v3, x_:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v5

    .line 416
    .local v5, y_:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v0

    .line 417
    .local v0, spanX:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v1

    .line 418
    .local v1, spanY:I
    invoke-direct {p0, v3, v5}, Lcom/android/launcher2/CellPositionerWorkspace;->isDeltaValid(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 419
    move v2, v3

    .local v2, x:I
    :goto_0
    add-int v6, v3, v0

    if-ge v2, v6, :cond_1

    iget v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    if-ge v2, v6, :cond_1

    .line 420
    move v4, v5

    .local v4, y:I
    :goto_1
    add-int v6, v5, v1

    if-ge v4, v6, :cond_0

    iget v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    if-ge v4, v6, :cond_0

    .line 421
    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    aget-object v6, v6, v2

    aput-boolean p2, v6, v4

    .line 420
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 419
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    .end local v2           #x:I
    .end local v4           #y:I
    :cond_1
    return-void
.end method

.method private quickCheckEnoughSpace(I)Z
    .locals 4
    .parameter "checkSpace"

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, c:I
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    iget v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    if-ge v1, v3, :cond_2

    .line 494
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    iget v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    if-ge v2, v3, :cond_1

    .line 495
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    .line 496
    add-int/lit8 v0, v0, 0x1

    .line 497
    if-lt v0, p1, :cond_0

    .line 498
    const/4 v3, 0x1

    .line 502
    .end local v2           #y:I
    :goto_2
    return v3

    .line 494
    .restart local v2       #y:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 493
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v2           #y:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private resetDeltas()V
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 257
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltaProvider:Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;

    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;->getDeltas(Ljava/util/List;)V

    .line 259
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    if-eqz v1, :cond_0

    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PositionDelta;

    iget-object v1, v1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    iget-object v2, v2, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    if-ne v1, v2, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 268
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/launcher2/CellPositionerWorkspace;->calculateOccupiedCells(Ljava/util/List;)V

    .line 269
    return-void

    .line 260
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private shiftDeltas(Lcom/android/launcher2/PositionDelta;Z)Z
    .locals 21
    .parameter "dragDelta"
    .parameter "overlappingOnly"

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PositionDelta;

    .line 284
    .local v15, d:Lcom/android/launcher2/PositionDelta;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v4, v15}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/PositionDelta;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    .end local v15           #d:Lcom/android/launcher2/PositionDelta;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/launcher2/CellPositionerWorkspace;->findDeltas(Lcom/android/launcher2/PositionDelta;Ljava/util/List;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->calculateOccupiedCells(Ljava/util/List;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PositionDelta;

    .line 291
    .restart local v15       #d:Lcom/android/launcher2/PositionDelta;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto :goto_1

    .line 293
    .end local v15           #d:Lcom/android/launcher2/PositionDelta;
    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/launcher2/CellPositionerWorkspace;->toRect([ILjava/util/ArrayList;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v4, 0x0

    aget v4, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v5, 0x1

    aget v5, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v8, 0x2

    aget v6, v3, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v8, 0x3

    aget v7, v3, v8

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIIZ[I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int v16, v3, v4

    .line 302
    .local v16, dx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v17, v3, v4

    .line 303
    .local v17, dy:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PositionDelta;

    .line 304
    .restart local v15       #d:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v3

    add-int v3, v3, v16

    invoke-virtual {v15, v3}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 305
    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual {v15, v3}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 306
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto :goto_2

    .line 310
    .end local v15           #d:Lcom/android/launcher2/PositionDelta;
    .end local v16           #dx:I
    .end local v17           #dy:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PositionDelta;

    .line 311
    .restart local v15       #d:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v5

    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v6

    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIIZ[I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 313
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mShrinkingEnabled:Z

    if-eqz v3, :cond_3

    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->shrinkable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 314
    :cond_3
    const/4 v3, 0x0

    .line 353
    .end local v15           #d:Lcom/android/launcher2/PositionDelta;
    :goto_4
    return v3

    .line 315
    .restart local v15       #d:Lcom/android/launcher2/PositionDelta;
    :cond_4
    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v6

    .line 316
    .local v6, spanX:I
    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v7

    .line 317
    .local v7, spanY:I
    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getMinSpanX()I

    move-result v19

    .line 318
    .local v19, minSpanX:I
    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getMinSpanY()I

    move-result v20

    .line 321
    .local v20, minSpanY:I
    :cond_5
    if-le v6, v7, :cond_9

    move/from16 v0, v19

    if-le v6, v0, :cond_9

    .line 322
    add-int/lit8 v6, v6, -0x1

    .line 328
    :goto_5
    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v5

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIIZ[I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 333
    :goto_6
    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    if-ge v6, v3, :cond_6

    .line 334
    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v9

    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v10

    add-int/lit8 v11, v6, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v8, p0

    move v12, v7

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIIZ[I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 337
    :cond_6
    :goto_7
    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    if-ge v7, v3, :cond_7

    .line 338
    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v9

    invoke-virtual {v15}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v10

    add-int/lit8 v12, v7, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v8, p0

    move v11, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIIZ[I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 341
    :cond_7
    invoke-virtual {v15, v7}, Lcom/android/launcher2/PositionDelta;->setSpanY(I)V

    .line 342
    invoke-virtual {v15, v6}, Lcom/android/launcher2/PositionDelta;->setSpanX(I)V

    .line 344
    .end local v6           #spanX:I
    .end local v7           #spanY:I
    .end local v19           #minSpanX:I
    .end local v20           #minSpanY:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v15, v3}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v15, v3}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 346
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto/16 :goto_3

    .line 323
    .restart local v6       #spanX:I
    .restart local v7       #spanY:I
    .restart local v19       #minSpanX:I
    .restart local v20       #minSpanY:I
    :cond_9
    move/from16 v0, v20

    if-le v7, v0, :cond_a

    .line 324
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 326
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 333
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 337
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 351
    .end local v6           #spanX:I
    .end local v7           #spanY:I
    .end local v15           #d:Lcom/android/launcher2/PositionDelta;
    .end local v19           #minSpanX:I
    .end local v20           #minSpanY:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 353
    const/4 v3, 0x1

    goto/16 :goto_4
.end method

.method private toRect([ILjava/util/ArrayList;)V
    .locals 8
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, deltas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/PositionDelta;>;"
    const/16 v2, 0x64

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 358
    aput v2, p1, v4

    .line 359
    aput v2, p1, v5

    .line 360
    aput v4, p1, v6

    .line 361
    aput v4, p1, v7

    .line 363
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 364
    .local v0, d:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    aget v3, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, p1, v4

    .line 365
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v2

    aget v3, p1, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, p1, v5

    .line 366
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    add-int/2addr v2, v3

    aget v3, p1, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p1, v6

    .line 367
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    add-int/2addr v2, v3

    aget v3, p1, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p1, v7

    goto :goto_0

    .line 371
    .end local v0           #d:Lcom/android/launcher2/PositionDelta;
    :cond_0
    aget v2, p1, v6

    aget v3, p1, v4

    sub-int/2addr v2, v3

    aput v2, p1, v6

    .line 372
    aget v2, p1, v7

    aget v3, p1, v5

    sub-int/2addr v2, v3

    aput v2, p1, v7

    .line 373
    return-void
.end method

.method private tryRearrange(Z)Z
    .locals 14
    .parameter "allowDragDeltaReposition"

    .prologue
    const/4 v13, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 162
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v5

    .line 163
    .local v5, spanX:I
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v6

    .line 165
    .local v6, spanY:I
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    aget v3, v11, v10

    .line 166
    .local v3, ox:I
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    aget v4, v11, v9

    .line 169
    .local v4, oy:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    array-length v11, v11

    if-ge v2, v11, :cond_2

    .line 170
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    aget-object v11, v11, v2

    aget v11, v11, v10

    add-int v7, v3, v11

    .line 171
    .local v7, x:I
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    aget-object v11, v11, v2

    aget v11, v11, v9

    add-int v8, v4, v11

    .line 172
    .local v8, y:I
    if-ltz v7, :cond_1

    if-ltz v8, :cond_1

    add-int v11, v7, v5

    iget v12, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    if-gt v11, v12, :cond_1

    add-int v11, v8, v6

    iget v12, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    if-gt v11, v12, :cond_1

    .line 173
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v7}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 174
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v8}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 175
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {p0, v11, v9}, Lcom/android/launcher2/CellPositionerWorkspace;->shiftDeltas(Lcom/android/launcher2/PositionDelta;Z)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 215
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_0
    :goto_1
    return v9

    .line 179
    .restart local v7       #x:I
    .restart local v8       #y:I
    :cond_1
    if-nez p1, :cond_3

    .line 182
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_2
    mul-int v11, v5, v6

    invoke-direct {p0, v11}, Lcom/android/launcher2/CellPositionerWorkspace;->quickCheckEnoughSpace(I)Z

    move-result v11

    if-nez v11, :cond_4

    move v9, v10

    goto :goto_1

    .line 169
    .restart local v7       #x:I
    .restart local v8       #y:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    array-length v11, v11

    if-ge v2, v11, :cond_6

    .line 186
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    aget-object v11, v11, v2

    aget v11, v11, v10

    add-int v7, v3, v11

    .line 187
    .restart local v7       #x:I
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    aget-object v11, v11, v2

    aget v11, v11, v9

    add-int v8, v4, v11

    .line 188
    .restart local v8       #y:I
    if-ltz v7, :cond_5

    if-ltz v8, :cond_5

    add-int v11, v7, v5

    iget v12, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    if-gt v11, v12, :cond_5

    add-int v11, v8, v6

    iget v12, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    if-gt v11, v12, :cond_5

    .line 189
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v7}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 190
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v8}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 191
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {p0, v11, v10}, Lcom/android/launcher2/CellPositionerWorkspace;->shiftDeltas(Lcom/android/launcher2/PositionDelta;Z)Z

    move-result v11

    if-nez v11, :cond_0

    .line 195
    :cond_5
    if-nez p1, :cond_8

    .line 199
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_6
    if-eqz p1, :cond_b

    .line 200
    const/4 v7, 0x0

    .restart local v7       #x:I
    :goto_3
    iget v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    sub-int/2addr v11, v5

    add-int/lit8 v11, v11, 0x1

    if-ge v7, v11, :cond_b

    .line 201
    const/4 v8, 0x0

    .restart local v8       #y:I
    :goto_4
    iget v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    sub-int/2addr v11, v6

    add-int/lit8 v11, v11, 0x1

    if-ge v8, v11, :cond_a

    .line 202
    sub-int v11, v3, v7

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 203
    .local v0, dx:I
    sub-int v11, v4, v8

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 204
    .local v1, dy:I
    if-ge v0, v13, :cond_9

    if-ge v1, v13, :cond_9

    .line 201
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 185
    .end local v0           #dx:I
    .end local v1           #dy:I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 206
    .restart local v0       #dx:I
    .restart local v1       #dy:I
    :cond_9
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v7}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 207
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v8}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 208
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {p0, v11, v10}, Lcom/android/launcher2/CellPositionerWorkspace;->shiftDeltas(Lcom/android/launcher2/PositionDelta;Z)Z

    move-result v11

    if-eqz v11, :cond_7

    goto/16 :goto_1

    .line 200
    .end local v0           #dx:I
    .end local v1           #dy:I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .end local v7           #x:I
    .end local v8           #y:I
    :cond_b
    move v9, v10

    .line 215
    goto/16 :goto_1
.end method


# virtual methods
.method public addDelta(Lcom/android/launcher2/PositionDelta;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->calculateOccupiedCells(Ljava/util/List;)V

    .line 520
    return-void
.end method

.method public deltaAt(IIII)Lcom/android/launcher2/PositionDelta;
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "spanx"
    .parameter "spany"

    .prologue
    .line 235
    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 236
    .local v0, d:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v4

    .line 237
    .local v4, x_:I
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v5

    .line 238
    .local v5, y_:I
    if-ne p1, v4, :cond_1

    if-ne p2, v5, :cond_1

    .line 244
    .end local v0           #d:Lcom/android/launcher2/PositionDelta;
    .end local v4           #x_:I
    .end local v5           #y_:I
    :goto_0
    return-object v0

    .line 239
    .restart local v0       #d:Lcom/android/launcher2/PositionDelta;
    .restart local v4       #x_:I
    .restart local v5       #y_:I
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v2

    .line 240
    .local v2, spanx_:I
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    .line 241
    .local v3, spany_:I
    add-int v6, p1, p3

    add-int/lit8 v6, v6, -0x1

    if-lt v6, v4, :cond_0

    add-int v6, v4, v2

    if-ge p1, v6, :cond_0

    add-int v6, p2, p4

    add-int/lit8 v6, v6, -0x1

    if-lt v6, v5, :cond_0

    add-int v6, v5, v3

    if-ge p2, v6, :cond_0

    goto :goto_0

    .line 244
    .end local v0           #d:Lcom/android/launcher2/PositionDelta;
    .end local v2           #spanx_:I
    .end local v3           #spany_:I
    .end local v4           #x_:I
    .end local v5           #y_:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findNearestVacantArea(IIII[I)[I
    .locals 9
    .parameter "cell_x"
    .parameter "cell_y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 508
    invoke-virtual {p0, v8}, Lcom/android/launcher2/CellPositionerWorkspace;->reset(Z)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 509
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIIZ[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    aput v7, p5, v5

    .line 511
    aput v7, p5, v8

    .line 513
    :cond_0
    return-object p5
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
    .line 230
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDragDelta()Lcom/android/launcher2/PositionDelta;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher2/PositionDelta;

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {v0, v1}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/PositionDelta;)V

    goto :goto_0
.end method

.method public reset(Z)V
    .locals 1
    .parameter "resetDrag"

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/CellPositionerWorkspace;->resetDeltas()V

    .line 253
    return-void
.end method

.method public resetDragDelta()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    .line 226
    return-void
.end method

.method public updateDeltasForDrag(Lcom/android/launcher2/PositionDelta;IIZZZ)Z
    .locals 13
    .parameter "dragDelta"
    .parameter "minSpanX"
    .parameter "minSpanY"
    .parameter "shrinkingEnabled"
    .parameter "allowDragDeltaReposition"
    .parameter "ignoreOccupied"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    .line 81
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mShrinkingEnabled:Z

    .line 83
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 84
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    invoke-direct {p0}, Lcom/android/launcher2/CellPositionerWorkspace;->resetDeltas()V

    .line 87
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getCellWidth()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellWidth:I

    .line 88
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getCellHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellHeight:I

    .line 90
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v4

    .line 91
    .local v4, spanX:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v5

    .line 93
    .local v5, spanY:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    .line 94
    .local v2, cell_x:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    .line 96
    .local v3, cell_y:I
    const/4 v1, 0x1

    if-lt v4, v1, :cond_0

    const/4 v1, 0x1

    if-ge v5, v1, :cond_1

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "span must be at least 1! spanX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   spanY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_1
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIIZ[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v1, v6}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 103
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v1, v6}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 104
    iget-object v7, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object v1, p0

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIIZ[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v6, 0x1

    aget v1, v1, v6

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    if-ne v1, v6, :cond_2

    .line 107
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 108
    const/4 v1, 0x1

    .line 154
    :goto_0
    return v1

    .line 111
    :cond_2
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->tryRearrange(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->tryRearrange(Z)Z

    .line 116
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 117
    const/4 v1, 0x1

    goto :goto_0

    .line 121
    :cond_3
    move v9, v4

    .line 122
    .local v9, tryX:I
    move v10, v5

    .line 123
    .local v10, tryY:I
    :cond_4
    if-gt v9, p2, :cond_5

    move/from16 v0, p3

    if-le v10, v0, :cond_9

    .line 125
    :cond_5
    if-le v9, v10, :cond_6

    if-le v9, p2, :cond_6

    .line 126
    add-int/lit8 v9, v9, -0x1

    .line 134
    :goto_1
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    move-object v6, p0

    move v7, v2

    move v8, v3

    invoke-direct/range {v6 .. v12}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIIZ[I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v9}, Lcom/android/launcher2/PositionDelta;->setSpanX(I)V

    .line 136
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v10}, Lcom/android/launcher2/PositionDelta;->setSpanY(I)V

    .line 137
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->tryRearrange(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->tryRearrange(Z)Z

    .line 140
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 141
    const/4 v1, 0x1

    goto :goto_0

    .line 127
    :cond_6
    move/from16 v0, p3

    if-le v10, v0, :cond_7

    .line 128
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 129
    :cond_7
    if-le v9, p2, :cond_8

    .line 130
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 132
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 147
    :cond_9
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 148
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 149
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/PositionDelta;->setSpanX(I)V

    .line 150
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/PositionDelta;->setSpanY(I)V

    .line 151
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 154
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
