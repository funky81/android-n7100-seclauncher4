.class public Lcom/android/launcher2/AnimationLayer;
.super Landroid/widget/FrameLayout;
.source "AnimationLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AnimationLayer$Anim;
    }
.end annotation


# static fields
.field static final sRootLocationOnScreen:[I


# instance fields
.field private final BLOCK_EVENTS_TIMEOUT:J

.field private mAnimPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockEvents:Z

.field final mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCurrentOrientation:I

.field private mDragLastX:I

.field private mDragLastY:I

.field private mDragLocalState:Ljava/lang/Object;

.field private mDragStateDropped:Z

.field private mFirstDrawAfterConfigChange:Z

.field private mLastBlockTime:J

.field private final mResources:Landroid/content/res/Resources;

.field private final mTmpFPos:[F

.field private final mTmpPos:[I

.field private mViewPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    .line 59
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 60
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 376
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    .line 378
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/launcher2/AnimationLayer;->BLOCK_EVENTS_TIMEOUT:J

    .line 424
    new-instance v0, Lcom/android/launcher2/AnimationLayer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$1;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    .line 582
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    .line 585
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    .line 651
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    .line 652
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    .line 67
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AnimationLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    .line 59
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 60
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 376
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    .line 378
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/launcher2/AnimationLayer;->BLOCK_EVENTS_TIMEOUT:J

    .line 424
    new-instance v0, Lcom/android/launcher2/AnimationLayer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$1;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    .line 582
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    .line 585
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    .line 651
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    .line 652
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    .line 77
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/AnimationLayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/AnimationLayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/android/launcher2/AnimationLayer;->mLastBlockTime:J

    return-wide p1
.end method

.method private cleanupFinishedAnimations()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 587
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v2, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AnimationLayer$Anim;>;"
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 589
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 590
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 593
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 594
    .restart local v0       #a:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 595
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 596
    .local v3, v:Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    .line 597
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 598
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 599
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 600
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->recycle()V

    .line 604
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 606
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v3           #v:Landroid/widget/ImageView;
    :cond_3
    return-void
.end method

.method public static createAnimatorSequentialSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 3
    .parameter "animator1"
    .parameter "animator2"

    .prologue
    .line 1127
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1128
    .local v0, set:Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1129
    return-object v0
.end method

.method public static createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 3
    .parameter "animator1"
    .parameter "animator2"

    .prologue
    .line 1121
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1122
    .local v0, set:Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1123
    return-object v0
.end method

.method private dispatchOrientationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 301
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    .line 304
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/android/launcher2/FolderIconHelper;->initFolderResources(Landroid/content/res/Resources;)V

    .line 305
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 306
    return-void
.end method

.method private getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    .line 617
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0
.end method

.method private getNewImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 609
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 610
    .local v0, v:Landroid/widget/ImageView;
    :goto_0
    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 611
    return-object v0

    .line 609
    .end local v0           #v:Landroid/widget/ImageView;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public animateDrop(ILjava/lang/Runnable;Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 11
    .parameter "group"
    .parameter "callback"
    .parameter "view"
    .parameter "shadow"

    .prologue
    const/4 v6, 0x0

    .line 631
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-object v6

    .line 635
    :cond_1
    instance-of v0, p3, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 637
    const/4 v4, 0x0

    .line 638
    .local v4, b:Landroid/graphics/Bitmap;
    instance-of v0, p3, Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_2

    move-object v0, p3

    .line 639
    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getDragIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 642
    :cond_2
    if-nez v4, :cond_3

    .line 643
    invoke-virtual {p4}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 646
    :cond_3
    invoke-virtual {p0, p4}, Lcom/android/launcher2/AnimationLayer;->getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0x140

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/AnimationLayer;->animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v10

    .local v10, a:Lcom/android/launcher2/AnimationLayer$Anim;
    move-object v6, v10

    .line 648
    goto :goto_0
.end method

.method public animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 8
    .parameter "group"
    .parameter "callback"
    .parameter "view"
    .parameter "b"
    .parameter "from"
    .parameter "to"
    .parameter "fadeMove"
    .parameter "duration"
    .parameter "fadeInShadow"

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 491
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 492
    .local v3, a:Landroid/widget/ImageView;
    invoke-virtual {v3, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 493
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;II)V

    .line 495
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    .line 496
    .local v0, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    iput p1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    .line 497
    if-eqz p2, :cond_0

    .line 498
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    .line 500
    :cond_0
    if-eqz p7, :cond_1

    move-object v1, p3

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    .line 501
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer$Anim;->setupMoveFadeAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[I)V

    .line 505
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 507
    return-object v0

    :cond_1
    move-object v1, p3

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    .line 503
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/AnimationLayer$Anim;->setupMoveAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[IIZ)V

    goto :goto_0
.end method

.method public areTouchEventsBlocked()Z
    .locals 4

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher2/AnimationLayer;->mLastBlockTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    .line 416
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    return v0
.end method

.method public buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 7
    .parameter "group"
    .parameter "callback"
    .parameter "view"
    .parameter "b"
    .parameter "index"

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 513
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    .line 515
    .local v0, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    if-nez p4, :cond_0

    .line 516
    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer$Anim;->setupBasicAnimation(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 528
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    return-object v0

    .line 518
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewImageView()Landroid/widget/ImageView;

    move-result-object v5

    .line 519
    .local v5, a:Landroid/widget/ImageView;
    invoke-virtual {v5, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 520
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    .line 523
    .local v6, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 524
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 525
    invoke-virtual {p0, v5, p5, v6}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 526
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer$Anim;->setupBasicAnimation(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public cancelAnimationFor(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 563
    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 564
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 565
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 569
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_1
    return-void
.end method

.method public cancelAnimations()V
    .locals 4

    .prologue
    .line 549
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 550
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 551
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 552
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 553
    .local v2, r:Ljava/lang/Runnable;
    if-eqz v2, :cond_0

    .line 554
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 559
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v2           #r:Ljava/lang/Runnable;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 560
    return-void
.end method

.method public cancelAnimationsByGroup(I)V
    .locals 4
    .parameter "group"

    .prologue
    .line 533
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 534
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iget v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    if-ne v3, p1, :cond_0

    .line 535
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 536
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 537
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 538
    .local v2, r:Ljava/lang/Runnable;
    if-eqz v2, :cond_0

    .line 539
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 545
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v2           #r:Ljava/lang/Runnable;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 546
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 246
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 327
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 328
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    .line 329
    .local v1, localState:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 331
    .local v2, rc:Z
    if-ne v0, v4, :cond_2

    .line 332
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    .line 333
    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 335
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 336
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    .line 337
    const/4 v2, 0x1

    .line 361
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 362
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    .line 364
    :cond_1
    return v2

    .line 339
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    if-eq v3, v1, :cond_4

    .line 340
    :cond_3
    iput-object v6, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    goto :goto_0

    .line 341
    :cond_4
    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    .line 343
    iput-object v6, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    .line 344
    const/4 v2, 0x1

    goto :goto_0

    .line 345
    :cond_5
    iget-boolean v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    if-nez v3, :cond_0

    .line 347
    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    if-ne v0, v5, :cond_7

    .line 350
    :cond_6
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 351
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 352
    if-ne v0, v5, :cond_7

    .line 355
    iput-boolean v4, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    .line 358
    :cond_7
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 255
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v1, v2, :cond_1

    .line 256
    invoke-direct {p0, v0}, Lcom/android/launcher2/AnimationLayer;->dispatchOrientationChanged(Landroid/content/res/Configuration;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->requestLayout()V

    .line 262
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 263
    return-void

    .line 258
    :cond_1
    iget-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    if-eqz v1, :cond_0

    .line 259
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    .line 260
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AnimationLayer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected dispatchGetDisplayList()V
    .locals 3

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 272
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v1, v2, :cond_1

    .line 273
    invoke-direct {p0, v0}, Lcom/android/launcher2/AnimationLayer;->dispatchOrientationChanged(Landroid/content/res/Configuration;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->requestLayout()V

    .line 279
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->dispatchGetDisplayList()V

    .line 280
    return-void

    .line 275
    :cond_1
    iget-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    if-eqz v1, :cond_0

    .line 276
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    .line 277
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AnimationLayer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->areTouchEventsBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 458
    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 471
    :goto_0
    return v1

    .line 461
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 462
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v1, :cond_2

    .line 463
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 464
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-boolean v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    if-eqz v1, :cond_2

    .line 465
    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 468
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 469
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 470
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 471
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public findExistingAnimation(Landroid/view/View;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 3
    .parameter "view"

    .prologue
    .line 448
    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 449
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 453
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimationForView(Landroid/view/View;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 4
    .parameter "v"

    .prologue
    .line 572
    const/4 v1, 0x0

    .line 573
    .local v1, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 574
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 575
    move-object v1, v0

    .line 579
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_1
    return-object v1
.end method

.method public getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I
    .locals 6
    .parameter "shadow"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 622
    invoke-virtual {p1}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v0

    .line 623
    .local v0, offset:[I
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    aget v3, v0, v4

    sub-int/2addr v2, v3

    aput v2, v1, v4

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    aget v3, v0, v5

    sub-int/2addr v2, v3

    aput v2, v1, v5

    return-object v1
.end method

.method public getLocationFromCellPos(IILcom/android/launcher2/CellLayout;Landroid/view/View;Landroid/graphics/Bitmap;)[I
    .locals 20
    .parameter "x"
    .parameter "y"
    .parameter "layout"
    .parameter "v"
    .parameter "b"

    .prologue
    .line 723
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v8, v0, [I

    .local v8, l1:[I
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v9, v0, [I

    .line 725
    .local v9, l2:[I
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 727
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v14

    .line 728
    .local v14, sx:F
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v15

    .line 729
    .local v15, sy:F
    const/high16 v16, 0x3f80

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 730
    const/high16 v16, 0x3f80

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 731
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayout;->getLocationOnScreen([I)V

    .line 732
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v12, v0

    .line 733
    .local v12, lw:F
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v10, v0

    .line 735
    .local v10, lh:F
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 736
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 739
    const/16 v16, 0x0

    aget v17, v9, v16

    mul-float v18, v12, v14

    sub-float v18, v12, v18

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    aput v17, v9, v16

    .line 740
    const/16 v16, 0x1

    aget v17, v9, v16

    sget-object v18, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    aput v17, v9, v16

    .line 741
    const/16 v16, 0x1

    aget v17, v9, v16

    mul-float v18, v10, v15

    sub-float v18, v10, v18

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    aput v17, v9, v16

    .line 743
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    .line 744
    .local v13, pos:[F
    const/16 v16, 0x0

    const/16 v17, 0x0

    aget v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v14

    const/16 v18, 0x0

    aget v18, v9, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    aput v17, v13, v16

    .line 745
    const/16 v16, 0x1

    const/16 v17, 0x1

    aget v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v15

    const/16 v18, 0x1

    aget v18, v9, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    aput v17, v13, v16

    .line 747
    if-eqz p5, :cond_2

    .line 748
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 750
    .local v11, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v5, v16, v17

    .line 751
    .local v5, dx:F
    const/4 v6, 0x0

    .line 752
    .local v6, dy:F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 753
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    move/from16 v0, v16

    int-to-float v6, v0

    .line 756
    :cond_0
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScaleX()F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 760
    :goto_0
    const/16 v16, 0x0

    aget v17, v13, v16

    mul-float v18, v5, v14

    add-float v17, v17, v18

    aput v17, v13, v16

    .line 761
    const/high16 v16, 0x3f80

    cmpl-float v16, v14, v16

    if-eqz v16, :cond_1

    .line 762
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v4, v0

    .line 763
    .local v4, bw:F
    const/16 v16, 0x0

    aget v17, v13, v16

    mul-float v18, v4, v14

    sub-float v18, v4, v18

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    sub-float v17, v17, v18

    aput v17, v13, v16

    .line 768
    .end local v4           #bw:F
    :cond_1
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScaleY()F
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .line 772
    :goto_1
    const/16 v16, 0x1

    aget v17, v13, v16

    mul-float v18, v6, v15

    add-float v17, v17, v18

    aput v17, v13, v16

    .line 774
    const/high16 v16, 0x3f80

    cmpl-float v16, v15, v16

    if-eqz v16, :cond_2

    .line 775
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v3, v0

    .line 776
    .local v3, bh:F
    const/16 v16, 0x1

    aget v17, v13, v16

    mul-float v18, v3, v15

    sub-float v18, v3, v18

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    sub-float v17, v17, v18

    aput v17, v13, v16

    .line 780
    .end local v3           #bh:F
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v11           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/16 v16, 0x0

    const/16 v17, 0x0

    aget v17, v13, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    aput v17, v9, v16

    .line 781
    const/16 v16, 0x1

    const/16 v17, 0x1

    aget v17, v13, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    aput v17, v9, v16

    .line 783
    return-object v9

    .line 757
    .restart local v5       #dx:F
    .restart local v6       #dy:F
    .restart local v11       #lp:Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v7

    .line 758
    .local v7, e:Ljava/lang/NullPointerException;
    const/high16 v14, 0x3f80

    goto :goto_0

    .line 769
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 770
    .restart local v7       #e:Ljava/lang/NullPointerException;
    const/high16 v15, 0x3f80

    goto :goto_1
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I
    .locals 1
    .parameter "v"
    .parameter "b"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I
    .locals 14
    .parameter "v"
    .parameter "b"
    .parameter "l"

    .prologue
    .line 661
    if-nez p3, :cond_0

    .line 662
    const/4 v10, 0x2

    new-array v0, v10, [I

    move-object/from16 p3, v0

    .line 664
    :cond_0
    if-nez p1, :cond_1

    .line 719
    :goto_0
    return-object p3

    .line 667
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 669
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v8

    .line 670
    .local v8, sx:F
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v9

    .line 671
    .local v9, sy:F
    const/high16 v10, 0x3f80

    invoke-virtual {p1, v10}, Landroid/view/View;->setScaleX(F)V

    .line 672
    const/high16 v10, 0x3f80

    invoke-virtual {p1, v10}, Landroid/view/View;->setScaleY(F)V

    .line 673
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 674
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 675
    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleY(F)V

    .line 677
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    .line 678
    .local v7, pos:[F
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, p3, v11

    int-to-float v11, v11

    aput v11, v7, v10

    .line 679
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, p3, v11

    int-to-float v11, v11

    aput v11, v7, v10

    .line 680
    const/4 v10, 0x1

    aget v11, v7, v10

    sget-object v12, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    int-to-float v12, v12

    sub-float/2addr v11, v12

    aput v11, v7, v10

    .line 682
    if-eqz p2, :cond_4

    .line 684
    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float v3, v10, v11

    .line 685
    .local v3, dx:F
    const/4 v4, 0x0

    .line 686
    .local v4, dy:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    if-eq v10, v11, :cond_2

    .line 687
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v4, v10

    .line 691
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 696
    :goto_1
    const/4 v10, 0x0

    aget v11, v7, v10

    mul-float v12, v3, v8

    add-float/2addr v11, v12

    aput v11, v7, v10

    .line 697
    const/high16 v10, 0x3f80

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_3

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v2, v10

    .line 699
    .local v2, bw:F
    const/4 v10, 0x0

    aget v11, v7, v10

    mul-float v12, v2, v8

    sub-float v12, v2, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, v7, v10

    .line 703
    .end local v2           #bw:F
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleY()F
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 708
    :goto_2
    const/4 v10, 0x1

    aget v11, v7, v10

    mul-float v12, v4, v9

    add-float/2addr v11, v12

    aput v11, v7, v10

    .line 710
    const/high16 v10, 0x3f80

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_4

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v1, v10

    .line 712
    .local v1, bh:F
    const/4 v10, 0x1

    aget v11, v7, v10

    mul-float v12, v1, v9

    sub-float v12, v1, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, v7, v10

    .line 716
    .end local v1           #bh:F
    .end local v3           #dx:F
    .end local v4           #dy:F
    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v7, v11

    float-to-int v11, v11

    aput v11, p3, v10

    .line 717
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v7, v11

    float-to-int v11, v11

    aput v11, p3, v10

    goto/16 :goto_0

    .line 692
    .restart local v3       #dx:F
    .restart local v4       #dy:F
    :catch_0
    move-exception v5

    .line 693
    .local v5, e:Ljava/lang/NullPointerException;
    const/high16 v8, 0x3f80

    goto :goto_1

    .line 704
    .end local v5           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    .line 705
    .restart local v5       #e:Ljava/lang/NullPointerException;
    const/high16 v9, 0x3f80

    goto :goto_2
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    .line 370
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 371
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 372
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 373
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 310
    sget-object v0, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AnimationLayer;->getLocationOnScreen([I)V

    .line 311
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 312
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 294
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v1, v2, :cond_0

    .line 295
    invoke-direct {p0, v0}, Lcom/android/launcher2/AnimationLayer;->dispatchOrientationChanged(Landroid/content/res/Configuration;)V

    .line 297
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 298
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->bindWidgetsAfterConfigChange()V

    .line 285
    return-void
.end method

.method public updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 3
    .parameter "view"
    .parameter "to"
    .parameter "duration"
    .parameter "clip"

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 438
    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 439
    .local v0, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/launcher2/AnimationLayer$Anim;->update([IIZ)V

    .line 444
    .end local v0           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
