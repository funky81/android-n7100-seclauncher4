.class public Lcom/android/launcher2/PagedViewGridLayout;
.super Landroid/widget/GridLayout;
.source "PagedViewGridLayout.java"

# interfaces
.implements Lcom/android/launcher2/Page;


# instance fields
.field private mBitmapLoaderRunnable:Ljava/lang/Runnable;

.field private mCellCountX:I

.field private mCellCountY:I

.field private mPageType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "cellCountX"
    .parameter "cellCountY"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v0, p0, Lcom/android/launcher2/PagedViewGridLayout;->mPageType:I

    .line 37
    iput p2, p0, Lcom/android/launcher2/PagedViewGridLayout;->mCellCountX:I

    .line 38
    iput p3, p0, Lcom/android/launcher2/PagedViewGridLayout;->mCellCountY:I

    .line 39
    iput-object v1, p0, Lcom/android/launcher2/PagedViewGridLayout;->mBitmapLoaderRunnable:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    .end local v1           #v:Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    instance-of v2, v1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 72
    check-cast v1, Lcom/android/launcher2/PagedViewWidget;

    .end local v1           #v:Landroid/view/View;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/PagedViewWidget;->drawShadow(Landroid/graphics/Canvas;)V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 76
    :cond_2
    return-void
.end method


# virtual methods
.method public disableHardwareLayers()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 104
    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedViewGridLayout;->drawShadows(Landroid/graphics/Canvas;)V

    .line 62
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 63
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->getLayerType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 94
    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/PagedViewGridLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 97
    :cond_0
    return-void
.end method

.method public getBitmapLoaderRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher2/PagedViewGridLayout;->mBitmapLoaderRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method getCellCountX()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/launcher2/PagedViewGridLayout;->mCellCountX:I

    return v0
.end method

.method getCellCountY()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/launcher2/PagedViewGridLayout;->mCellCountY:I

    return v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "i"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageItemCount()I
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageType()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/launcher2/PagedViewGridLayout;->mPageType:I

    return v0
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewGridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 81
    .local v3, result:Z
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->getPageItemCount()I

    move-result v2

    .line 82
    .local v2, count:I
    if-lez v2, :cond_1

    .line 84
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewGridLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 86
    .local v0, bottom:I
    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 88
    .end local v0           #bottom:I
    .end local v1           #child:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 86
    .restart local v0       #bottom:I
    .restart local v1       #child:Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeAllViewsOnPage()V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->removeAllViews()V

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewGridLayout;->disableHardwareLayers()V

    .line 110
    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewGridLayout;->removeViewAt(I)V

    .line 115
    return-void
.end method

.method public setBitmapLoaderRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "runnable"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/launcher2/PagedViewGridLayout;->mBitmapLoaderRunnable:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method public setPageType(I)V
    .locals 0
    .parameter "pageType"

    .prologue
    .line 134
    iput p1, p0, Lcom/android/launcher2/PagedViewGridLayout;->mPageType:I

    .line 135
    return-void
.end method
