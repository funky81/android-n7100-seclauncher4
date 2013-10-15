.class public Lcom/android/launcher2/NewPageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NewPageDrawable.java"


# static fields
.field public static final OPEN_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/NewPageDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mBack:Landroid/graphics/drawable/Drawable;

.field private mFront:Landroid/graphics/drawable/Drawable;

.field private mOpenFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/android/launcher2/NewPageDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "openFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/NewPageDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/NewPageDrawable;->OPEN_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "d"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    .line 48
    iput-object p1, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    .line 49
    iput-object p1, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, 0xcccccc

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 52
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const v3, 0x3d4ccccd

    const v2, -0x42b33333

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 57
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 63
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 67
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, -0x3

    return v0
.end method

.method public getOpenFactor()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 129
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 130
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 5
    .parameter "level"

    .prologue
    const/4 v4, 0x1

    .line 76
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 77
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 79
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 82
    :cond_0
    sget-object v1, Lcom/android/launcher2/NewPageDrawable;->OPEN_FACTOR:Landroid/util/Property;

    new-array v2, v4, [F

    const/4 v3, 0x0

    if-ne p1, v4, :cond_1

    const/high16 v0, 0x3f80

    :goto_0
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    .line 83
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 84
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 86
    return v4

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 8
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 91
    iget-object v5, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 92
    iget-object v5, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 94
    iget-object v5, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 95
    iget-object v5, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 97
    :cond_0
    const/4 v2, 0x0

    .line 98
    .local v2, selected:Z
    const/4 v0, 0x0

    .line 99
    .local v0, enabled:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 100
    aget v5, p1, v1

    const v6, 0x10100a1

    if-ne v5, v6, :cond_1

    .line 101
    const/4 v2, 0x1

    .line 102
    :cond_1
    aget v5, p1, v1

    const v6, 0x101009e

    if-ne v5, v6, :cond_2

    .line 103
    const/4 v0, 0x1

    .line 99
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    move v2, v3

    .line 107
    :goto_1
    sget-object v6, Lcom/android/launcher2/NewPageDrawable;->OPEN_FACTOR:Landroid/util/Property;

    new-array v7, v3, [F

    if-eqz v2, :cond_5

    const/high16 v5, 0x3f80

    :goto_2
    aput v5, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    .line 108
    iget-object v4, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 109
    iget-object v4, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    iget-object v4, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 112
    return v3

    :cond_4
    move v2, v4

    .line 105
    goto :goto_1

    .line 107
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 116
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 119
    return-void
.end method

.method public setOpenFactor(F)V
    .locals 0
    .parameter "factor"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    .line 39
    invoke-virtual {p0}, Lcom/android/launcher2/NewPageDrawable;->invalidateSelf()V

    .line 40
    return-void
.end method
