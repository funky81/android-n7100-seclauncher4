.class final Lcom/android/launcher2/QuickViewWorkspace$ShadowDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "QuickViewWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShadowDrawable"
.end annotation


# instance fields
.field private mMaxAlpha:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 1598
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1599
    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 4

    .prologue
    const/16 v1, 0xff

    .line 1623
    invoke-super {p0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/QuickViewWorkspace$ShadowDrawable;->mMaxAlpha:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 1625
    .local v0, convertedAlpha:I
    if-gtz v0, :cond_1

    const/4 v0, 0x0

    .end local v0           #convertedAlpha:I
    :cond_0
    :goto_0
    return v0

    .restart local v0       #convertedAlpha:I
    :cond_1
    if-lt v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 4
    .parameter "alpha"

    .prologue
    const/4 v3, 0x0

    .line 1607
    if-gtz p1, :cond_0

    .line 1608
    invoke-super {p0, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1620
    :goto_0
    return-void

    .line 1610
    :cond_0
    int-to-float v1, p1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace$ShadowDrawable;->mMaxAlpha:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1612
    .local v0, convertedAlpha:I
    if-gtz v0, :cond_1

    .line 1613
    invoke-super {p0, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    goto :goto_0

    .line 1614
    :cond_1
    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace$ShadowDrawable;->mMaxAlpha:I

    if-lt v0, v1, :cond_2

    .line 1615
    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace$ShadowDrawable;->mMaxAlpha:I

    invoke-super {p0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    goto :goto_0

    .line 1617
    :cond_2
    invoke-super {p0, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 1602
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1603
    invoke-super {p0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ShadowDrawable;->mMaxAlpha:I

    .line 1604
    return-void
.end method
