.class public Lcom/android/launcher2/DeleteDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DeleteDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
    }
.end annotation


# instance fields
.field private final kLidUpHeight:I

.field private mAngleDirection:F

.field private mBounds:Landroid/graphics/Rect;

.field private mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

.field private mBulgeFrameNumber:I

.field private mBulgeFrames:[Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mIsAnimatingBulge:Z

.field private mIsAnimatingShake:Z

.field private mLidAngle:F

.field private mLidOffsetY:I

.field private mPreviousLidShakeValue:F

.field private mShakeAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTrashBinOnly:Landroid/graphics/drawable/Drawable;

.field private mTrashCan:Landroid/graphics/drawable/Drawable;

.field private mTrashLidOnly:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V
    .locals 7
    .parameter "context"
    .parameter "trashcan"
    .parameter "binOnly"
    .parameter "lidOnly"
    .parameter "isDelete"
    .parameter "bulgeListener"

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    .line 46
    iput v3, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    .line 47
    iput v2, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    .line 48
    iput-boolean v3, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    .line 49
    iput-boolean v3, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    .line 51
    iput v3, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    .line 302
    iput v5, p0, Lcom/android/launcher2/DeleteDrawable;->kLidUpHeight:I

    .line 328
    iput v2, p0, Lcom/android/launcher2/DeleteDrawable;->mPreviousLidShakeValue:F

    .line 329
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    .line 58
    iput-object p1, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object p3, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    .line 61
    iput-object p4, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    .line 64
    const/4 v1, 0x6

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    .line 68
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v6

    .line 69
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const v3, 0x7f0200ec

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 70
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 71
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200ee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    .line 72
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    const v3, 0x7f0200ef

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 82
    :goto_0
    iput-object p6, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    .line 83
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->initAnimations()V

    .line 84
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200fd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    .line 75
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v6

    .line 76
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const v3, 0x7f0200ff

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 77
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020100

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 78
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020101

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    .line 79
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    const v3, 0x7f020102

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/DeleteDrawable;)Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    return-object v0
.end method

.method private drawShakeAnimation(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const v11, 0x3f99999a

    .line 121
    const v5, 0x3f99999a

    .line 122
    .local v5, scale:F
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getIntrinsicWidth()I

    move-result v8

    .line 123
    .local v8, width:I
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getIntrinsicHeight()I

    move-result v2

    .line 124
    .local v2, height:I
    int-to-float v9, v8

    mul-float/2addr v9, v11

    float-to-int v7, v9

    .line 125
    .local v7, scaledW:I
    int-to-float v9, v2

    mul-float/2addr v9, v11

    float-to-int v6, v9

    .line 126
    .local v6, scaledH:I
    sub-int v0, v7, v8

    .line 127
    .local v0, deltaX:I
    sub-int v1, v6, v2

    .line 128
    .local v1, deltaY:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 129
    neg-int v9, v0

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    neg-int v10, v1

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    invoke-virtual {p1, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 132
    iget-object v9, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v3, v9, 0x2

    .line 135
    .local v3, lidCenterX:I
    iget-object v9, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v4, v9, 0x5

    .line 137
    .local v4, lidCenterY:I
    iget v9, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    int-to-float v10, v3

    iget v11, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    sub-int v11, v4, v11

    int-to-float v11, v11

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 138
    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    iget-object v9, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 142
    return-void
.end method

.method private initAnimations()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x3c

    .line 88
    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v4, 0x7f05001a

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 89
    .local v2, upAnimator:Landroid/animation/Animator;
    invoke-virtual {v2, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 92
    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v4, 0x7f050019

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 93
    .local v1, shakeAnimator:Landroid/animation/Animator;
    invoke-virtual {v1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v1, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 96
    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v4, 0x7f050018

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 97
    .local v0, downAnimator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 100
    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method private startAnimator(IJ)V
    .locals 2
    .parameter "animatorId"
    .parameter "startDelay"

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 238
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 240
    const v1, 0x7f050017

    if-ne p1, v1, :cond_1

    .line 241
    new-instance v1, Lcom/android/launcher2/DeleteDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/DeleteDrawable$1;-><init>(Lcom/android/launcher2/DeleteDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 261
    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 262
    iput-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    .line 263
    return-void
.end method

.method private startBulgeAnimation()V
    .locals 3

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->stopCurrentAnimation()V

    .line 268
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-nez v0, :cond_1

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    .line 270
    const v0, 0x7f050017

    const-wide/16 v1, 0x3c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/DeleteDrawable;->startAnimator(IJ)V

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    .line 273
    :cond_1
    return-void
.end method

.method private startShakeAnimation()V
    .locals 2

    .prologue
    .line 275
    iget-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-eqz v1, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->stopCurrentAnimation()V

    .line 277
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-nez v1, :cond_1

    .line 278
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    .line 279
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    .line 280
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 281
    .local v0, set:Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 282
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    .line 283
    iput-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    .line 284
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 286
    .end local v0           #set:Landroid/animation/AnimatorSet;
    :cond_1
    return-void
.end method

.method private stopCurrentAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    .line 293
    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    .line 294
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    .line 297
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 108
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 118
    return-void

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v0, :cond_1

    .line 112
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDrawable;->drawShakeAnimation(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "bounds"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 210
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 211
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 212
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 213
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 214
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 8
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 158
    iget-object v6, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 160
    const/4 v3, 0x0

    .line 161
    .local v3, selected:Z
    const/4 v1, 0x0

    .line 162
    .local v1, enabled:Z
    const/4 v0, 0x0

    .line 163
    .local v0, activated:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_3

    .line 164
    aget v6, p1, v2

    const v7, 0x10100a1

    if-ne v6, v7, :cond_0

    .line 165
    const/4 v3, 0x1

    .line 166
    :cond_0
    aget v6, p1, v2

    const v7, 0x101009e

    if-ne v6, v7, :cond_1

    .line 167
    const/4 v1, 0x1

    .line 168
    :cond_1
    aget v6, p1, v2

    const v7, 0x10102fe

    if-ne v6, v7, :cond_2

    .line 169
    const/4 v0, 0x1

    .line 163
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_3
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    move v3, v4

    .line 172
    :goto_1
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    move v0, v4

    .line 174
    :goto_2
    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    .line 175
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->startBulgeAnimation()V

    .line 182
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    .line 184
    return v4

    :cond_5
    move v3, v5

    .line 171
    goto :goto_1

    :cond_6
    move v0, v5

    .line 172
    goto :goto_2

    .line 176
    :cond_7
    if-eqz v3, :cond_8

    .line 177
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->startShakeAnimation()V

    goto :goto_3

    .line 178
    :cond_8
    if-nez v0, :cond_4

    .line 179
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->stopCurrentAnimation()V

    goto :goto_3
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 197
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 200
    return-void
.end method

.method public setTrashCanFill(F)V
    .locals 4
    .parameter "value"

    .prologue
    const/high16 v3, 0x3f80

    .line 188
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float v0, v3, v1

    .line 189
    .local v0, kValuePerFrame:F
    div-float v1, p1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    .line 190
    cmpl-float v1, p1, v3

    if-ltz v1, :cond_0

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    .line 194
    return-void
.end method

.method public setTrashCanLidDown(F)V
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v2, 0x3f80

    .line 313
    const/high16 v0, 0x4080

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    .line 315
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    .line 318
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    .line 320
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->startShakeAnimation()V

    .line 322
    :cond_0
    return-void
.end method

.method public setTrashCanLidShake(F)V
    .locals 8
    .parameter "value"

    .prologue
    const/high16 v7, -0x3ec0

    const/high16 v6, -0x4080

    const/high16 v5, 0x4140

    .line 332
    const/high16 v2, 0x4100

    .line 333
    .local v2, kHalfCycles:F
    const/high16 v4, 0x4100

    mul-float/2addr p1, v4

    .line 334
    const/high16 v3, 0x4140

    .line 335
    .local v3, kShakeMaxAngle:F
    iget v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    .line 336
    .local v0, angle:F
    iget v4, p0, Lcom/android/launcher2/DeleteDrawable;->mPreviousLidShakeValue:F

    sub-float v1, p1, v4

    .line 337
    .local v1, dv:F
    iput p1, p0, Lcom/android/launcher2/DeleteDrawable;->mPreviousLidShakeValue:F

    .line 338
    iget v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 339
    cmpl-float v4, v0, v5

    if-lez v4, :cond_1

    .line 340
    sub-float v4, v0, v5

    sub-float v0, v5, v4

    .line 341
    iget v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    .line 346
    :cond_0
    :goto_0
    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    .line 347
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    .line 348
    return-void

    .line 342
    :cond_1
    cmpg-float v4, v0, v7

    if-gez v4, :cond_0

    .line 343
    add-float v4, v0, v5

    sub-float v0, v7, v4

    .line 344
    iget v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    goto :goto_0
.end method

.method public setTrashCanLidUp(F)V
    .locals 2
    .parameter "value"

    .prologue
    const/high16 v1, 0x3f80

    .line 304
    const/high16 v0, 0x4080

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    .line 305
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    .line 306
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mPreviousLidShakeValue:F

    .line 308
    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    .line 310
    :cond_0
    return-void
.end method
