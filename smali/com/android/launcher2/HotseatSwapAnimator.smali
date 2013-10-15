.class Lcom/android/launcher2/HotseatSwapAnimator;
.super Ljava/lang/Object;
.source "HotseatSwapAnimator.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HotseatSwapAnimator$7;,
        Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;
    }
.end annotation


# instance fields
.field final kFolderScaleDuration:I

.field final kIconFastFadeInDuration:I

.field final kIconFastFadeOutDuration:I

.field final kIconSlowFadeInDuration:I

.field final kIconSlowFadeOutDuration:I

.field private mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

.field private final mChildren:Lcom/android/launcher2/CellLayoutChildren;

.field private mDisabled:Z

.field private final mDragCell:[I

.field private mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

.field private mDropped:Z

.field private final mHotseat:Lcom/android/launcher2/Hotseat;

.field private mHotseatSwapIcon:Landroid/view/View;

.field private final mLauncher:Lcom/android/launcher2/Launcher;

.field private final mLayout:Lcom/android/launcher2/CellLayout;

.field mOnAnimationCancel:Ljava/lang/Runnable;

.field private mSwapFolder:Lcom/android/launcher2/Folder;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/CellLayout;)V
    .locals 3
    .parameter "hotseat"
    .parameter "layout"

    .prologue
    const/16 v2, 0x1f4

    const/16 v1, 0x64

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDropped:Z

    .line 53
    new-instance v0, Lcom/android/launcher2/HotseatSwapAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HotseatSwapAnimator$1;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;)V

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDisabled:Z

    .line 151
    iput v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kIconFastFadeInDuration:I

    .line 152
    iput v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kIconFastFadeOutDuration:I

    .line 153
    iput v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kIconSlowFadeInDuration:I

    .line 154
    iput v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kIconSlowFadeOutDuration:I

    .line 155
    iput v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kFolderScaleDuration:I

    .line 47
    iput-object p1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 48
    iput-object p2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    .line 49
    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 50
    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/CellLayoutChildren;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    return-object v0
.end method

.method private animateMoveFade(Lcom/android/launcher2/DragState;)V
    .locals 12
    .parameter "dragState"

    .prologue
    const/4 v7, 0x0

    .line 439
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/HotseatSwapAnimator;->getWorkspaceParent(Landroid/view/View;)Lcom/android/launcher2/Workspace;

    move-result-object v11

    .line 442
    .local v11, ws:Lcom/android/launcher2/Workspace;
    if-eqz v11, :cond_0

    .line 445
    invoke-direct {p0, p1}, Lcom/android/launcher2/HotseatSwapAnimator;->animateOverlayIconBack(Lcom/android/launcher2/DragState;)V

    .line 448
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/FolderIconView;

    if-nez v1, :cond_0

    .line 453
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 454
    .local v0, overlay:Lcom/android/launcher2/AnimationLayer;
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getDragIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 455
    .local v4, b:Landroid/graphics/Bitmap;
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v7}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v5

    .line 456
    .local v5, from:[I
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v7}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v6

    .line 457
    .local v6, to:[I
    sget v10, Lcom/android/launcher2/Workspace;->kPageZoomScaleLimit:F

    .line 458
    .local v10, pageScale:F
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v1, :cond_3

    .line 462
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "We already have an mAnimInfo!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppIconView;

    .line 465
    .local v3, icon:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v7, 0x1

    const/16 v8, 0x140

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/AnimationLayer;->animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 466
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 467
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0
.end method

.method private animateOverlayIconBack(Lcom/android/launcher2/DragState;)V
    .locals 19
    .parameter "dragState"

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v3, :cond_1

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v3

    if-nez v3, :cond_2

    .line 345
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 384
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    const/16 v14, 0x78

    .line 349
    .local v14, kFadeOutDuration:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 350
    .local v11, fadeAnim:Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;[I[I)V

    .line 352
    .local v2, overlayFadeAdapter:Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;
    const-wide/16 v3, 0x78

    invoke-virtual {v11, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 353
    invoke-virtual {v11, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 354
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_3

    const/4 v12, 0x1

    .line 357
    .local v12, isOverFolder:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v12, :cond_4

    .line 358
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->start()V

    .line 382
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0

    .line 354
    .end local v12           #isOverFolder:Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 361
    .restart local v12       #isOverFolder:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v4}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v3, v4

    int-to-float v9, v3

    .line 362
    .local v9, dx:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v4}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    int-to-float v10, v3

    .line 363
    .local v10, dy:F
    mul-float v3, v9, v9

    mul-float v4, v10, v10

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v13, v3

    .line 364
    .local v13, kDistance:F
    const v16, 0x3dcccccd

    .line 365
    .local v16, kFadeOutStartFactor:F
    const v3, 0x3dcccccd

    const/high16 v4, 0x428c

    div-float/2addr v4, v13

    add-float v15, v3, v4

    .line 366
    .local v15, kFadeOutEndFactor:F
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const v5, 0x3dcccccd

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v15, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v18

    .line 367
    .local v18, moveAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x78

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 368
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    move-object/from16 v17, v0

    .line 371
    .local v17, l:Lcom/android/launcher2/AnimationLayer$Anim;
    move-object/from16 v0, v18

    invoke-static {v11, v0}, Lcom/android/launcher2/AnimationLayer;->createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v8

    .line 372
    .local v8, animator:Landroid/animation/Animator;
    new-instance v3, Lcom/android/launcher2/HotseatSwapAnimator$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/android/launcher2/HotseatSwapAnimator$3;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)V

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 380
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 349
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static create(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/HotseatSwapAnimator;
    .locals 1
    .parameter "hotseat"
    .parameter "layout"

    .prologue
    .line 42
    new-instance v0, Lcom/android/launcher2/HotseatSwapAnimator;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/HotseatSwapAnimator;-><init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/CellLayout;)V

    .line 43
    .local v0, inst:Lcom/android/launcher2/HotseatSwapAnimator;
    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 44
    return-object v0
.end method

.method private displaySwapItemOverFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)V
    .locals 6
    .parameter "dragState"
    .parameter "underView"

    .prologue
    .line 472
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 473
    .local v2, item:Lcom/android/launcher2/BaseItem;
    invoke-direct {p0}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay()V

    .line 475
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 479
    .local v0, folder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 483
    .local v1, folderIconView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 484
    iget-object v4, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_2

    .line 485
    const/high16 v4, 0x3f80

    invoke-direct {p0, v1, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 488
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 489
    .local v3, rect:Landroid/graphics/Rect;
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    invoke-virtual {v0, v2}, Lcom/android/launcher2/Folder;->beginHotseatSwapAnimation(Lcom/android/launcher2/BaseItem;)V

    .line 493
    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mSwapFolder:Lcom/android/launcher2/Folder;

    goto :goto_0
.end method

.method static fadeAnimate(Landroid/view/View;FI)V
    .locals 3
    .parameter "v"
    .parameter "endAlpha"
    .parameter "duration"

    .prologue
    .line 325
    if-eqz p0, :cond_0

    .line 326
    const/4 v0, 0x2

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/HotseatSwapAnimator$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HotseatSwapAnimator$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 335
    :cond_0
    return-void
.end method

.method private fadeOutAndRemoveOverlayIcon(Lcom/android/launcher2/DragState;)V
    .locals 3
    .parameter "dragState"

    .prologue
    const/high16 v1, 0x3f80

    .line 387
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/HotseatSwapAnimator$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HotseatSwapAnimator$4;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 404
    :cond_0
    return-void
.end method

.method private getCellLayoutParent(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 598
    if-nez p1, :cond_0

    move-object v0, v1

    .line 606
    :goto_0
    return-object v0

    .line 600
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 601
    .local v0, p:Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 602
    instance-of v2, v0, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_1

    .line 603
    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 604
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 606
    goto :goto_0
.end method

.method private getWorkspaceParent(Landroid/view/View;)Lcom/android/launcher2/Workspace;
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 584
    if-nez p1, :cond_0

    move-object v0, v1

    .line 592
    :goto_0
    return-object v0

    .line 586
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 587
    .local v0, p:Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 588
    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_1

    .line 589
    check-cast v0, Lcom/android/launcher2/Workspace;

    goto :goto_0

    .line 590
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 592
    goto :goto_0
.end method

.method private handleDragOverViewDrop(Lcom/android/launcher2/DragState;)Z
    .locals 7
    .parameter "dragState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 250
    iput-boolean v5, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDropped:Z

    .line 251
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 252
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-direct {p0, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay(Lcom/android/launcher2/BaseItem;)V

    .line 256
    :cond_0
    iget-object v2, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    const/high16 v3, 0x3f80

    const/16 v4, 0xc8

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 258
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 261
    .local v0, overlay:Lcom/android/launcher2/AnimationLayer;
    if-eqz v0, :cond_2

    .line 262
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v2}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 263
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v2}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 265
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 267
    return v6
.end method

.method private handleDragOverViewEnded(Lcom/android/launcher2/DragState;)V
    .locals 7
    .parameter "dragState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 271
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    .line 274
    .local v1, overlay:Lcom/android/launcher2/AnimationLayer;
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-boolean v2, v2, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDropped:Z

    if-nez v2, :cond_3

    .line 276
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 279
    :cond_0
    iget-object v2, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 280
    iget-object v2, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 281
    iget-object v2, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 285
    :cond_1
    if-eqz v1, :cond_2

    .line 286
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v2}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v2}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 291
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 292
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 293
    iput-object v6, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    .line 298
    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 299
    .local v0, folder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_4

    .line 300
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 305
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_5

    .line 306
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v5, v2, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    .line 307
    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    const/16 v3, 0xc8

    invoke-static {v2, v4, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 308
    iput-object v6, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    .line 312
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay()V

    .line 314
    iput-boolean v5, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDropped:Z

    .line 315
    return-void
.end method

.method private handleDragOverViewExit(Lcom/android/launcher2/DragState;)V
    .locals 4
    .parameter "dragState"

    .prologue
    const/high16 v3, 0x3f80

    .line 236
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    const/16 v2, 0x1f4

    invoke-static {v1, v3, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 239
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    .line 240
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 241
    .local v0, folder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay()V

    .line 246
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 247
    return-void
.end method

.method private handleDragOverViewMove(Lcom/android/launcher2/DragState;)V
    .locals 12
    .parameter "dragState"

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    const/16 v10, 0x1f4

    const/high16 v9, 0x3f80

    const/4 v4, 0x1

    .line 158
    iget-object v6, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v7, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v7, v7, v5

    iget-object v8, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v8, v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 159
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 160
    :cond_0
    const/4 v3, 0x0

    .line 163
    :cond_1
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v6, v7, :cond_7

    instance-of v6, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_7

    move v2, v4

    .line 167
    .local v2, ignoreFolder:Z
    :goto_0
    if-eqz v2, :cond_3

    move-object v0, v3

    .line 168
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .line 169
    .local v0, fiv:Lcom/android/launcher2/FolderIconView;
    iput-boolean v4, v0, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    .line 170
    iget-object v6, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    if-eq v0, v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_2

    .line 171
    iget-object v6, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v5, v6, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    .line 173
    :cond_2
    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    .line 174
    invoke-direct {p0, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 178
    .end local v0           #fiv:Lcom/android/launcher2/FolderIconView;
    :cond_3
    if-nez v3, :cond_8

    .line 179
    iget-object v5, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 181
    iget-object v5, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-static {v5, v9, v10}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 182
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 183
    .local v1, folder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_4

    .line 184
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v9}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 188
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay()V

    .line 190
    .end local v1           #folder:Lcom/android/launcher2/Folder;
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 232
    :cond_6
    :goto_1
    iput-object v3, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    .line 233
    return-void

    .end local v2           #ignoreFolder:Z
    :cond_7
    move v2, v5

    .line 163
    goto :goto_0

    .line 195
    .restart local v2       #ignoreFolder:Z
    :cond_8
    iget-object v5, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v5, :cond_a

    .line 197
    invoke-direct {p0, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v2, :cond_9

    .line 198
    invoke-static {v3, v11, v10}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 199
    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->showHotseatSwapIcon(Lcom/android/launcher2/DragState;Landroid/view/View;)V

    .line 201
    :cond_9
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 202
    .restart local v1       #folder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_6

    .line 203
    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->displaySwapItemOverFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)V

    goto :goto_1

    .line 207
    .end local v1           #folder:Lcom/android/launcher2/Folder;
    :cond_a
    iget-object v5, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eq v5, v3, :cond_6

    .line 208
    invoke-direct {p0, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-nez v2, :cond_d

    .line 210
    invoke-static {v3, v11, v10}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 211
    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->showHotseatSwapIcon(Lcom/android/launcher2/DragState;Landroid/view/View;)V

    .line 218
    :cond_b
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 228
    :cond_c
    :goto_3
    iget-object v4, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-static {v4, v9, v10}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 229
    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->displaySwapItemOverFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)V

    goto :goto_1

    .line 213
    :cond_d
    invoke-direct {p0, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_e

    instance-of v5, v3, Landroid/widget/ImageView;

    if-nez v5, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_b

    .line 214
    :cond_e
    invoke-direct {p0, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    goto :goto_2

    .line 221
    :cond_f
    invoke-direct {p0, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 222
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 223
    .restart local v1       #folder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_c

    .line 224
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v9}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    goto :goto_3
.end method

.method private hideHotseatSwapIcon(Z)V
    .locals 4
    .parameter "animate"

    .prologue
    .line 559
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    if-nez v1, :cond_0

    .line 575
    :goto_0
    return-void

    .line 561
    :cond_0
    if-eqz p1, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    .line 563
    .local v0, v:Landroid/view/View;
    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 564
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/HotseatSwapAnimator$6;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator$6;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 574
    .end local v0           #v:Landroid/view/View;
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    goto :goto_0

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private isAppIcon(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 338
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFolderOverlay()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mSwapFolder:Lcom/android/launcher2/Folder;

    if-nez v0, :cond_0

    .line 506
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mSwapFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->cancelHotseatSwapAnimation()V

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mSwapFolder:Lcom/android/launcher2/Folder;

    goto :goto_0
.end method

.method private removeFolderOverlay(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mSwapFolder:Lcom/android/launcher2/Folder;

    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mSwapFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Folder;->finishHotseatSwapAnimation(Lcom/android/launcher2/BaseItem;)V

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mSwapFolder:Lcom/android/launcher2/Folder;

    goto :goto_0
.end method

.method private scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;
    .locals 3
    .parameter "v"
    .parameter "endScale"

    .prologue
    .line 318
    if-eqz p1, :cond_0

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showHotseatSwapIcon(Lcom/android/launcher2/DragState;Landroid/view/View;)V
    .locals 9
    .parameter "dragState"
    .parameter "underView"

    .prologue
    const/4 v3, 0x0

    .line 516
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 556
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 518
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/BaseItem;

    .line 520
    .local v7, item:Lcom/android/launcher2/BaseItem;
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    if-eq v0, v7, :cond_0

    .line 524
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator;->hasHotSeatAncestor(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeItem;

    .line 528
    .local v6, homeItem:Lcom/android/launcher2/HomeItem;
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 530
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    .end local v7           #item:Lcom/android/launcher2/BaseItem;
    const v2, 0x7f03002c

    invoke-virtual {v0, v7, v2}, Lcom/android/launcher2/HomeView;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 535
    .local v1, imageView:Lcom/android/launcher2/AppIconView;
    check-cast p2, Lcom/android/launcher2/AppIconView;

    .end local p2
    invoke-virtual {p2}, Lcom/android/launcher2/AppIconView;->getTextVisible()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    .line 540
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppIconView;->setTag(Ljava/lang/Object;)V

    .line 542
    new-instance v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v0, v6, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v2, v6, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v5, v6, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v8, v6, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-direct {v4, v0, v2, v5, v8}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 543
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    .line 545
    iput-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    .line 547
    const/4 v0, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/AppIconView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 548
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    .line 549
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/launcher2/HotseatSwapAnimator$5;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher2/HotseatSwapAnimator$5;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0
.end method


# virtual methods
.method hasHotSeatAncestor(Lcom/android/launcher2/BaseItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 578
    instance-of v2, p1, Lcom/android/launcher2/HomeItem;

    if-nez v2, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 579
    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 580
    .local v0, h:Lcom/android/launcher2/HomeItem;
    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 64
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDisabled:Z

    .line 67
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDisabled:Z

    if-eqz v0, :cond_3

    .line 146
    :cond_1
    :goto_1
    :pswitch_0
    return v11

    :cond_2
    move v0, v11

    .line 65
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/DragState;

    if-eqz v0, :cond_1

    .line 71
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_4
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/DragState;

    .line 77
    .local v7, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    .line 78
    .local v6, dragItem:Lcom/android/launcher2/BaseItem;
    iget-object v0, v6, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v0, :cond_1

    iget-object v0, v7, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_1

    instance-of v0, v6, Lcom/android/launcher2/HomePendingItem;

    if-nez v0, :cond_1

    .line 81
    sget-object v0, Lcom/android/launcher2/HotseatSwapAnimator$7;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, v6, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v9, v0, v11

    .line 94
    .local v9, lastCellX:I
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v10, v0, v4

    .line 95
    .local v10, lastCellY:I
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 97
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v8

    .line 98
    .local v8, folder:Lcom/android/launcher2/Folder;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 108
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->handleDragOverViewMove(Lcom/android/launcher2/DragState;)V

    .line 109
    iget-object v0, v7, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    iget-object v0, v7, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    if-nez v0, :cond_6

    .line 112
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 122
    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v0, v0, v11

    if-ne v9, v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v0, v0, v4

    if-ne v10, v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v0, :cond_1

    .line 123
    :cond_5
    iget-object v0, v7, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 124
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->animateOverlayIconBack(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_1

    .line 102
    :pswitch_3
    if-eqz v8, :cond_1

    .line 103
    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->ignoreShrinkingFolder()V

    .line 104
    invoke-virtual {v8, v11, v4}, Lcom/android/launcher2/Folder;->close(ZZ)V

    goto/16 :goto_1

    .line 114
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, v7, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Hotseat;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    goto :goto_2

    .line 119
    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    goto :goto_2

    .line 127
    :cond_8
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->animateMoveFade(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_1

    .line 133
    :pswitch_4
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->handleDragOverViewExit(Lcom/android/launcher2/DragState;)V

    .line 134
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->animateOverlayIconBack(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_1

    .line 137
    :pswitch_5
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeOutAndRemoveOverlayIcon(Lcom/android/launcher2/DragState;)V

    .line 138
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->handleDragOverViewDrop(Lcom/android/launcher2/DragState;)Z

    move-result v11

    goto/16 :goto_1

    .line 140
    :pswitch_6
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->handleDragOverViewEnded(Lcom/android/launcher2/DragState;)V

    .line 141
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->animateOverlayIconBack(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_1

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 98
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
