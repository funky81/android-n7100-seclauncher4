.class Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;
.super Ljava/lang/Object;
.source "WorkspaceSpanCalculator.java"

# interfaces
.implements Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WorkspaceSpanCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpanCountCalculatorRoundDown"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/WorkspaceSpanCalculator$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanCount(III)I
    .locals 4
    .parameter "targetSize"
    .parameter "cellSize"
    .parameter "cellGap"

    .prologue
    .line 147
    add-int v1, p1, p3

    .line 148
    .local v1, numerator:I
    add-int v0, p2, p3

    .line 149
    .local v0, denominator:I
    div-int v2, v1, v0

    .line 150
    .local v2, spanCount:I
    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method
