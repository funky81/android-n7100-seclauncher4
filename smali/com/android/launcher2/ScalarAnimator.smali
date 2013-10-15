.class public Lcom/android/launcher2/ScalarAnimator;
.super Ljava/lang/Object;
.source "ScalarAnimator.java"


# instance fields
.field private mCurrent:F

.field private mDefaultDuration:J

.field private mDelay:J

.field private mDelta:F

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mInverseDuration:F

.field private mIsRunning:Z

.field private mStart:F

.field private mStartTime:J

.field private mStop:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 32
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 33
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 34
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 36
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 37
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 38
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 39
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 52
    return-void
.end method

.method public constructor <init>(J)V
    .locals 4
    .parameter "defaultDuration"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 32
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 33
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 34
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 36
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 37
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 38
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 39
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 62
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 63
    return-void
.end method

.method public constructor <init>(JF)V
    .locals 4
    .parameter "defaultDuration"
    .parameter "initialStart"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 32
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 33
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 34
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 36
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 37
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 38
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 39
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 87
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 88
    iput p3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    iput p3, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 89
    return-void
.end method

.method public constructor <init>(JFLandroid/view/animation/Interpolator;)V
    .locals 4
    .parameter "defaultDuration"
    .parameter "initialStart"
    .parameter "interpolator"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 32
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 33
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 34
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 36
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 37
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 38
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 39
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 124
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 125
    iput p3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    iput p3, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 126
    iput-object p4, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 127
    return-void
.end method

.method public constructor <init>(JLandroid/view/animation/Interpolator;)V
    .locals 4
    .parameter "defaultDuration"
    .parameter "interpolator"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 32
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 33
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 34
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 36
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 37
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 38
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 39
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 103
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 104
    iput-object p3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 4
    .parameter "interpolator"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 32
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 33
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 34
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 36
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 37
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 38
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 39
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 73
    iput-object p1, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    move-result v0

    return v0
.end method

.method public abort(F)Z
    .locals 3
    .parameter "stop"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    .line 154
    .local v0, aborted:Z
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 155
    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 157
    return v0
.end method

.method public extend(FJ)V
    .locals 4
    .parameter "stop"
    .parameter "extendDuration"

    .prologue
    const-wide/16 v2, 0x0

    .line 177
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    if-nez v0, :cond_2

    .line 179
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/launcher2/ScalarAnimator;->start(FFJ)V

    .line 190
    :cond_1
    :goto_0
    return-void

    .line 181
    :cond_2
    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 182
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 183
    iget-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 184
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 185
    :cond_3
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    goto :goto_0

    .line 187
    :cond_4
    const/high16 v0, 0x3f80

    iget-wide v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScalarAnimator;->mInverseDuration:F

    goto :goto_0
.end method

.method public get()F
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/ScalarAnimator;->get(J)F

    move-result v0

    return v0
.end method

.method public get(J)F
    .locals 9
    .parameter "currentTime"

    .prologue
    const-wide/16 v7, 0x0

    .line 219
    iget-boolean v3, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    if-eqz v3, :cond_1

    .line 222
    iget-wide v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStartTime:J

    sub-long v3, p1, v3

    iget-wide v5, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    sub-long v0, v3, v5

    .line 223
    .local v0, elapsedTime:J
    cmp-long v3, v0, v7

    if-gtz v3, :cond_0

    .line 225
    const-wide/16 v0, 0x0

    .line 226
    iget v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    iput v3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 230
    :cond_0
    iget-wide v3, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    .line 231
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 232
    iget v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iput v3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 246
    .end local v0           #elapsedTime:J
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    return v3

    .line 234
    .restart local v0       #elapsedTime:J
    :cond_2
    cmp-long v3, v0, v7

    if-lez v3, :cond_1

    .line 236
    long-to-float v3, v0

    iget v4, p0, Lcom/android/launcher2/ScalarAnimator;->mInverseDuration:F

    mul-float v2, v3, v4

    .line 239
    .local v2, factor:F
    iget-object v3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_3

    .line 240
    iget-object v3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 241
    :cond_3
    iget v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    iget v4, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    goto :goto_0
.end method

.method public getFactor(J)F
    .locals 7
    .parameter "currentTime"

    .prologue
    .line 264
    const/4 v2, 0x0

    .line 265
    .local v2, factor:F
    iget-wide v3, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-wide v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStartTime:J

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 266
    iget-wide v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStartTime:J

    sub-long v0, p1, v3

    .line 267
    .local v0, elapsedTime:J
    iget-wide v3, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    .line 268
    const/high16 v2, 0x3f80

    .line 274
    .end local v0           #elapsedTime:J
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_1

    .line 275
    iget-object v3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 276
    :cond_1
    return v2

    .line 270
    .restart local v0       #elapsedTime:J
    :cond_2
    long-to-float v3, v0

    iget v4, p0, Lcom/android/launcher2/ScalarAnimator;->mInverseDuration:F

    mul-float v2, v3, v4

    goto :goto_0
.end method

.method public getRemaining()F
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    return v0
.end method

.method public setDefaultDuration(J)V
    .locals 0
    .parameter "defaultDuration"

    .prologue
    .line 385
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 386
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 397
    return-void
.end method

.method public start(FF)V
    .locals 2
    .parameter "start"
    .parameter "stop"

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher2/ScalarAnimator;->start(FFJ)V

    .line 313
    return-void
.end method

.method public start(FFJ)V
    .locals 7
    .parameter "start"
    .parameter "stop"
    .parameter "duration"

    .prologue
    .line 334
    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/ScalarAnimator;->start(FFJJ)V

    .line 335
    return-void
.end method

.method public start(FFJJ)V
    .locals 4
    .parameter "start"
    .parameter "stop"
    .parameter "duration"
    .parameter "delay"

    .prologue
    const-wide/16 v2, 0x0

    .line 360
    iput-wide p5, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 361
    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 362
    iput p2, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 363
    iput-wide p3, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 364
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 365
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 366
    :cond_0
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 371
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 372
    return-void

    .line 368
    :cond_1
    const/high16 v0, 0x3f80

    iget-wide v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScalarAnimator;->mInverseDuration:F

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStartTime:J

    goto :goto_0
.end method

.method public to(F)V
    .locals 2
    .parameter "stop"

    .prologue
    .line 410
    iget-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(FJ)V

    .line 411
    return-void
.end method

.method public to(FJ)V
    .locals 6
    .parameter "stop"
    .parameter "duration"

    .prologue
    .line 429
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/ScalarAnimator;->to(FJJ)V

    .line 430
    return-void
.end method

.method public to(FJJ)V
    .locals 7
    .parameter "stop"
    .parameter "duration"
    .parameter "delay"

    .prologue
    .line 451
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 452
    iget v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/ScalarAnimator;->start(FFJJ)V

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    goto :goto_0
.end method
