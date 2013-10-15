.class public Lcom/android/launcher2/QuickViewDragBar;
.super Landroid/widget/FrameLayout;
.source "QuickViewDragBar.java"

# interfaces
.implements Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;


# static fields
.field private static sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickViewDragBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickViewDragBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private setStates(ZZZ)V
    .locals 1
    .parameter "enabled"
    .parameter "selected"
    .parameter "activated"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewDragBar;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 95
    invoke-virtual {p0, p2}, Lcom/android/launcher2/QuickViewDragBar;->setSelected(Z)V

    .line 96
    invoke-virtual {p0, p3}, Lcom/android/launcher2/QuickViewDragBar;->setActivated(Z)V

    .line 97
    return-void
.end method


# virtual methods
.method public checkOver(II)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 75
    sget-object v2, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    sget-object v2, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-direct {p0, v0, v0, v1}, Lcom/android/launcher2/QuickViewDragBar;->setStates(ZZZ)V

    .line 82
    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->resetTrashCan()V

    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public onBulgeAnimationEnded()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->resetTrashCan()V

    .line 102
    return-void
.end method

.method public onDrop()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-direct {p0, v0, v0, v0}, Lcom/android/launcher2/QuickViewDragBar;->setStates(ZZZ)V

    .line 89
    return-void
.end method

.method public onFinishInflate()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewDragBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 57
    .local v3, bin:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 58
    .local v4, lid:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move v7, v5

    .line 60
    .local v7, isLandscape:Z
    :goto_0
    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTextRight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 65
    .end local v3           #bin:Landroid/graphics/drawable/Drawable;
    .end local v4           #lid:Landroid/graphics/drawable/Drawable;
    .end local v7           #isLandscape:Z
    :cond_0
    :goto_1
    return-void

    .line 59
    .restart local v3       #bin:Landroid/graphics/drawable/Drawable;
    .restart local v4       #lid:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 63
    .restart local v7       #isLandscape:Z
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public resetTrashCan()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/android/launcher2/QuickViewDragBar;->setStates(ZZZ)V

    .line 109
    return-void
.end method

.method public setTextDisplayPositionRight(Z)V
    .locals 3
    .parameter "isHorizontal"

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 68
    if-eqz p1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
