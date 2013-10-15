.class Lcom/android/launcher2/PanelDrawer$PanelDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PanelDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PanelDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelDrawable"
.end annotation


# instance fields
.field blockDraw:Z

.field private mAlpha:I

.field private mBackgroundDarken:F

.field private mBaseDarken:F

.field private mBlend:Z

.field private mBounds:Landroid/graphics/Rect;

.field private mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

.field private mPaint:Landroid/graphics/Paint;

.field private mPanelBMP:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/launcher2/PanelDrawer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PanelDrawer;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 443
    iput-object p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->this$0:Lcom/android/launcher2/PanelDrawer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 444
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    .line 445
    iput v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    .line 446
    iput v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    .line 447
    iput-boolean v2, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    .line 448
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    .line 450
    iput-boolean v2, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->blockDraw:Z

    .line 451
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mPaint:Landroid/graphics/Paint;

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mPanelBMP:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 456
    iget-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->blockDraw:Z

    if-eqz v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    if-eqz v0, :cond_0

    .line 461
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mPanelBMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mPanelBMP:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 468
    .local v2, width:I
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 469
    .local v3, height:I
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float v4, v0, v1

    .line 471
    .local v4, alpha:F
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    if-eqz v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V

    .line 474
    :cond_3
    new-instance v0, Lcom/android/launcher2/PanelDrawer$Functor;

    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v5, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    iget v6, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    iget-boolean v7, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/PanelDrawer$Functor;-><init>(Lcom/android/launcher2/PanelDrawer;IIFFFZ)V

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    .line 476
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    invoke-static {p1, v0}, Lcom/android/launcher2/DrawGLFunction;->call(Landroid/graphics/Canvas;Lcom/android/launcher2/DrawGLFunction$Callback;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 533
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 535
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V

    .line 538
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    return v0
.end method

.method public getBaseDarken()F
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 482
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .parameter "padding"

    .prologue
    const/16 v3, 0xc

    .line 543
    const/16 v0, 0x14

    .line 544
    .local v0, p:I
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    const/16 v1, 0x28

    const/16 v2, 0x14

    invoke-virtual {p1, v3, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 548
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 547
    :cond_0
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 3

    .prologue
    .line 553
    iget v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    if-eqz v1, :cond_1

    .line 554
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    iget v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 556
    .local v0, c:I
    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 557
    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 559
    .end local v0           #c:I
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 561
    :cond_1
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "bounds"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 528
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget-object v0, v0, Lcom/android/launcher2/PanelDrawer;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mPanelBMP:Landroid/graphics/Bitmap;

    .line 530
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 487
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 488
    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    .line 489
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 491
    :cond_0
    return-void
.end method

.method public setBackgroundDarken(F)V
    .locals 1
    .parameter "d"

    .prologue
    .line 498
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 499
    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    .line 500
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 502
    :cond_0
    return-void
.end method

.method public setBaseDarken(F)V
    .locals 1
    .parameter "d"

    .prologue
    .line 509
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 510
    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    .line 511
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 513
    :cond_0
    return-void
.end method

.method public setBlend(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    if-eq v0, p1, :cond_0

    .line 517
    iput-boolean p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    .line 518
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 520
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 523
    return-void
.end method
