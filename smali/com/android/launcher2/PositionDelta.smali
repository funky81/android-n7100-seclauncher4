.class public Lcom/android/launcher2/PositionDelta;
.super Ljava/lang/Object;
.source "PositionDelta.java"


# instance fields
.field final item:Lcom/android/launcher2/BaseItem;

.field private mChanged:Z

.field private final minSpanX:I

.field private final minSpanY:I

.field private final ospanX:I

.field private final ospanY:I

.field private final ox:I

.field private final oy:I

.field private spanX:I

.field private spanY:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    .line 52
    iput v2, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    iput v2, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    .line 53
    iput v1, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iput v1, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    .line 54
    iput v1, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    iput v1, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    .line 55
    iput v1, p0, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    iput v1, p0, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    .line 56
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .parameter "con_x"
    .parameter "con_y"
    .parameter "con_spanX"
    .parameter "con_spanY"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    .line 75
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iput p1, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    .line 76
    iput p2, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iput p2, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    .line 77
    iput p3, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iput p3, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    iput p3, p0, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    .line 78
    iput p4, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iput p4, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    iput p4, p0, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/BaseItem;)V
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v4, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 28
    iput-object p1, p0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    .line 29
    instance-of v3, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 30
    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v3, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iput v3, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    move-object v3, p1

    .line 31
    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v3, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iput v3, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    .line 36
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iput v3, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    .line 37
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iput v3, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    .line 38
    instance-of v3, p1, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/android/launcher2/HomeWidgetItem;

    iget v3, v3, Lcom/android/launcher2/HomeWidgetItem;->resizeMode:I

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 39
    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    .line 40
    .local v0, hItem:Lcom/android/launcher2/HomeWidgetItem;
    iget v1, v0, Lcom/android/launcher2/HomeWidgetItem;->resizeMode:I

    .line 41
    .local v1, resizeMode:I
    invoke-virtual {v0}, Lcom/android/launcher2/HomeWidgetItem;->getResizeSpans()[I

    move-result-object v2

    .line 42
    .local v2, resizeSpan:[I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    aget v3, v2, v4

    :goto_1
    iput v3, p0, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    .line 43
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    aget v3, v2, v3

    :goto_2
    iput v3, p0, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    .line 48
    .end local v0           #hItem:Lcom/android/launcher2/HomeWidgetItem;
    .end local v1           #resizeMode:I
    .end local v2           #resizeSpan:[I
    :goto_3
    return-void

    .line 33
    :cond_0
    iput v4, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iput v4, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    .line 34
    iput v4, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iput v4, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    goto :goto_0

    .line 42
    .restart local v0       #hItem:Lcom/android/launcher2/HomeWidgetItem;
    .restart local v1       #resizeMode:I
    .restart local v2       #resizeSpan:[I
    :cond_1
    iget v3, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    goto :goto_1

    .line 43
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    goto :goto_2

    .line 45
    .end local v0           #hItem:Lcom/android/launcher2/HomeWidgetItem;
    .end local v1           #resizeMode:I
    .end local v2           #resizeSpan:[I
    :cond_3
    iget v3, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iput v3, p0, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    .line 46
    iget v3, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iput v3, p0, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    goto :goto_3
.end method

.method public constructor <init>(Lcom/android/launcher2/PositionDelta;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 59
    iget-object v0, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    iput-object v0, p0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    .line 60
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->x:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->x:I

    .line 61
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->y:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->y:I

    .line 62
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->ox:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    .line 63
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->oy:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    .line 64
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->spanX:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    .line 65
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->spanY:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    .line 66
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->ospanX:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    .line 67
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->ospanY:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    .line 68
    iget-boolean v0, p1, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    iput-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 69
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    .line 70
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    .line 71
    return-void
.end method

.method private updateChanged()V
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 95
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changed()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    return v0
.end method

.method public differentFrom(Lcom/android/launcher2/PositionDelta;)Z
    .locals 2
    .parameter "od"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iget v1, p1, Lcom/android/launcher2/PositionDelta;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iget v1, p1, Lcom/android/launcher2/PositionDelta;->y:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iget v1, p1, Lcom/android/launcher2/PositionDelta;->spanX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iget v1, p1, Lcom/android/launcher2/PositionDelta;->spanY:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMinSpanX()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    return v0
.end method

.method getMinSpanY()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    return v0
.end method

.method getSpanX()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    return v0
.end method

.method getSpanY()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    return v0
.end method

.method getX()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->x:I

    return v0
.end method

.method getY()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->y:I

    return v0
.end method

.method overlaps(Lcom/android/launcher2/PositionDelta;)Z
    .locals 6
    .parameter "otherDelta"

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    .line 83
    .local v2, x_:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    .line 84
    .local v3, y_:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v0

    .line 85
    .local v0, spanX_:I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v1

    .line 87
    .local v1, spanY_:I
    iget v4, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iget v5, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    if-lt v4, v2, :cond_0

    iget v4, p0, Lcom/android/launcher2/PositionDelta;->x:I

    add-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_0

    iget v4, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iget v5, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    if-lt v4, v3, :cond_0

    iget v4, p0, Lcom/android/launcher2/PositionDelta;->y:I

    add-int v5, v3, v1

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_1

    .line 88
    :cond_0
    const/4 v4, 0x0

    .line 90
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method setSpanX(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    invoke-direct {p0}, Lcom/android/launcher2/PositionDelta;->updateChanged()V

    return-void
.end method

.method setSpanY(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 108
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    invoke-direct {p0}, Lcom/android/launcher2/PositionDelta;->updateChanged()V

    return-void
.end method

.method setX(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->x:I

    invoke-direct {p0}, Lcom/android/launcher2/PositionDelta;->updateChanged()V

    return-void
.end method

.method setY(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->y:I

    invoke-direct {p0}, Lcom/android/launcher2/PositionDelta;->updateChanged()V

    return-void
.end method

.method public shrinkable()Z
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public spanChanged()Z
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PositionDelta(changed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ospanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ospanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
