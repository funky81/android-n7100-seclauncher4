.class public Lcom/android/launcher2/HomeView$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 4334
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView$LayoutParams;->customPosition:Z

    .line 4335
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 4350
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 4342
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 4358
    iget v0, p0, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 4366
    iget v0, p0, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 4346
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4347
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 4338
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4339
    return-void
.end method

.method public setX(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 4354
    iput p1, p0, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    .line 4355
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 4362
    iput p1, p0, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    .line 4363
    return-void
.end method
