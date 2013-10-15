.class Lcom/android/launcher2/FolderAnimator;
.super Ljava/lang/Object;
.source "FolderAnimator.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FolderAnimator"


# instance fields
.field private mAnimatingOpen:Z

.field private final mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

.field private mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

.field private final mCloseAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private final mContent:Lcom/android/launcher2/CellLayoutNoGap;

.field private final mFolder:Lcom/android/launcher2/Folder;

.field private final mFolderHoverAnim:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderHoveringEndTime:J

.field private mFolderOpenOri:I

.field private mIcon:Lcom/android/launcher2/FolderIconView;

.field private mIndexOfFirstItem:I

.field private mNumCloseAnimsRunning:I

.field mOnAnimationCancel:Ljava/lang/Runnable;

.field private final mOpenAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPostDrawPlate:Ljava/lang/Runnable;

.field private mRenderIconOnPlate:Z

.field private mTempIconPos:[I

.field private mTmpCanvas:Landroid/graphics/Canvas;

.field private mTmpPaint:Landroid/graphics/Paint;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderIconView;)V
    .locals 3
    .parameter "folder"
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoveringEndTime:J

    .line 52
    iput v2, p0, Lcom/android/launcher2/FolderAnimator;->mFolderOpenOri:I

    .line 65
    new-instance v0, Lcom/android/launcher2/FolderAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderAnimator$1;-><init>(Lcom/android/launcher2/FolderAnimator;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    .line 344
    iput-boolean v2, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    .line 470
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    .line 609
    iput v2, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    .line 1042
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    .line 1043
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    .line 1085
    new-instance v0, Lcom/android/launcher2/FolderAnimator$10;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderAnimator$10;-><init>(Lcom/android/launcher2/FolderAnimator;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mPostDrawPlate:Ljava/lang/Runnable;

    .line 55
    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 56
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    :goto_0
    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    .line 57
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    .line 58
    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    .line 59
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    return-object v0
.end method

.method static synthetic access$1020(Lcom/android/launcher2/FolderAnimator;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/FolderAnimator;IZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/FolderAnimator;->animHoverGroup(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/FolderAnimator;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mPostDrawPlate:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/FolderAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->drawPlate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/FolderAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AppIconView;Z)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/FolderAnimator;->getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/FolderAnimator;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/launcher2/FolderAnimator;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/launcher2/FolderAnimator;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/launcher2/FolderAnimator;->mFolderOpenOri:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/FolderAnimator;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/FolderAnimator;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getNewImageView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method private animHoverGroup(IZ)I
    .locals 3
    .parameter "pos"
    .parameter "isForward"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x3

    .line 310
    const/4 v0, 0x1

    .line 312
    .local v0, group:I
    if-eqz p2, :cond_3

    .line 314
    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    .line 315
    :cond_0
    const/4 v0, 0x2

    .line 331
    :goto_0
    return v0

    .line 316
    :cond_1
    if-le p1, v1, :cond_2

    .line 317
    const/4 v0, 0x3

    goto :goto_0

    .line 319
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 323
    :cond_3
    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    if-ne p1, v2, :cond_5

    .line 324
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 325
    :cond_5
    if-le p1, v2, :cond_6

    .line 326
    const/4 v0, 0x3

    goto :goto_0

    .line 328
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private animationNeeded(Landroid/view/View;I)Z
    .locals 13
    .parameter "view"
    .parameter "pos"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v6, 0x3f80

    const/4 v10, 0x0

    .line 472
    iget-object v11, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    .line 474
    .local v7, visible:Z
    iget-object v11, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 475
    .local v4, tmpHeight:I
    iget-object v11, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 476
    .local v5, tmpWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 477
    .local v0, actualHeight:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 479
    .local v1, actualWidth:I
    if-ne v4, v0, :cond_2

    if-ne v5, v1, :cond_2

    move v3, v9

    .line 481
    .local v3, isWholeItemVisible:Z
    :goto_0
    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    move v2, v6

    .line 482
    .local v2, fromAlpha:F
    :goto_1
    const/4 v11, 0x4

    if-ge p2, v11, :cond_4

    .line 483
    .local v6, toAlpha:F
    :goto_2
    cmpl-float v11, v2, v10

    if-gtz v11, :cond_0

    cmpl-float v10, v6, v10

    if-lez v10, :cond_1

    :cond_0
    move v8, v9

    :cond_1
    return v8

    .end local v2           #fromAlpha:F
    .end local v3           #isWholeItemVisible:Z
    .end local v6           #toAlpha:F
    :cond_2
    move v3, v8

    .line 479
    goto :goto_0

    .restart local v3       #isWholeItemVisible:Z
    :cond_3
    move v2, v10

    .line 481
    goto :goto_1

    .restart local v2       #fromAlpha:F
    :cond_4
    move v6, v10

    .line 482
    goto :goto_2
.end method

.method private buildAnimForItem(Lcom/android/launcher2/BaseItem;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    .line 164
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragReceivable;

    invoke-interface {v0}, Lcom/android/launcher2/DragReceivable;->getContainerType()J

    move-result-wide v2

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move v1, v8

    .line 166
    .local v1, group:I
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v6

    .line 167
    .local v6, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    iput-object p1, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    .line 168
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 169
    .local v7, paint:Landroid/graphics/Paint;
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 170
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    iget-object v0, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8, v7}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 172
    iput-object v7, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 174
    return-object v6

    .line 164
    .end local v1           #group:I
    .end local v6           #anim:Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v7           #paint:Landroid/graphics/Paint;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private buildAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 6
    .parameter "from_"
    .parameter "anim"
    .parameter "pos"
    .parameter "offset"

    .prologue
    .line 572
    move-object v3, p1

    .line 574
    .local v3, from:[I
    new-instance v0, Lcom/android/launcher2/FolderAnimator$5;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderAnimator$5;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;[I[II)V

    return-object v0
.end method

.method private buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 17
    .parameter "from_"
    .parameter "anim"
    .parameter "pos"
    .parameter "offset"
    .parameter "fromPlate"
    .parameter "isHover"

    .prologue
    .line 498
    if-eqz p1, :cond_1

    const/4 v7, 0x1

    .line 499
    .local v7, animateScale:Z
    :goto_0
    if-nez p1, :cond_0

    .line 500
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v15

    .line 501
    .local v15, loc:[I
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 p1, v0

    .end local p1
    const/4 v1, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    aget v3, v15, v3

    sub-int/2addr v2, v3

    aput v2, p1, v1

    const/4 v1, 0x1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v15, v3

    sub-int/2addr v2, v3

    aput v2, p1, v1

    .line 504
    .end local v15           #loc:[I
    .restart local p1
    :cond_0
    move-object/from16 v5, p1

    .line 505
    .local v5, from:[I
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v8

    .line 507
    .local v8, scale:F
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    .line 508
    .local v13, fromDarken:F
    const/4 v14, 0x0

    .line 509
    .local v14, alphaLimit:I
    if-eqz p6, :cond_2

    .line 510
    const/4 v14, 0x7

    .line 513
    :goto_1
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v16

    .line 514
    .local v16, visible:Z
    :goto_2
    if-eqz v16, :cond_4

    const/high16 v9, 0x3f80

    .line 515
    .local v9, fromAlpha:F
    :goto_3
    move/from16 v0, p3

    if-ge v0, v14, :cond_5

    const/high16 v10, 0x3f80

    .line 517
    .local v10, toAlpha:F
    :goto_4
    new-instance v1, Lcom/android/launcher2/FolderAnimator$4;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-object/from16 v6, p4

    move/from16 v11, p3

    move/from16 v12, p6

    invoke-direct/range {v1 .. v13}, Lcom/android/launcher2/FolderAnimator$4;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;Z[I[IZFFFIZF)V

    return-object v1

    .line 498
    .end local v5           #from:[I
    .end local v7           #animateScale:Z
    .end local v8           #scale:F
    .end local v9           #fromAlpha:F
    .end local v10           #toAlpha:F
    .end local v13           #fromDarken:F
    .end local v14           #alphaLimit:I
    .end local v16           #visible:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 512
    .restart local v5       #from:[I
    .restart local v7       #animateScale:Z
    .restart local v8       #scale:F
    .restart local v13       #fromDarken:F
    .restart local v14       #alphaLimit:I
    :cond_2
    const/4 v14, 0x4

    goto :goto_1

    .line 513
    :cond_3
    const/16 v16, 0x1

    goto :goto_2

    .line 514
    .restart local v16       #visible:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 515
    .restart local v9       #fromAlpha:F
    :cond_5
    const/4 v10, 0x0

    goto :goto_4
.end method

.method private drawPlate()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1045
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1048
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderAnimator;->destroyPlate()V

    .line 1083
    :goto_0
    return-void

    .line 1051
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1054
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1055
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1056
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3}, Lcom/android/launcher2/FolderAnimator;->drawPlate_(Landroid/graphics/Canvas;)V

    .line 1057
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1058
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1062
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v2

    .line 1063
    .local v2, xy:[I
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v4, v2, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1064
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v4, v2, v6

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getPlateOffsetY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1066
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v1

    .line 1068
    .local v1, s:F
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1069
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1071
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 1072
    .local v0, baseAlpha:F
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1073
    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_4

    .line 1074
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1075
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1076
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1079
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 1080
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 1082
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mPostDrawPlate:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/FolderIconView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private drawPlate_(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 1102
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderIconView;->drawPlate(Landroid/graphics/Canvas;)V

    .line 1104
    iget-boolean v0, p0, Lcom/android/launcher2/FolderAnimator;->mRenderIconOnPlate:Z

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1107
    :cond_0
    return-void
.end method

.method private getAppIconOffset(IIZ)[I
    .locals 11
    .parameter "i"
    .parameter "count"
    .parameter "isHover"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    .local v6, scale:F
    const/16 v2, 0x8

    .line 81
    .local v2, gapX:I
    const/16 v3, 0xa

    .line 82
    .local v3, gapY:I
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v7}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 83
    .local v5, res:Landroid/content/res/Resources;
    if-eqz v5, :cond_0

    .line 84
    const v7, 0x7f0a002c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 85
    const v7, 0x7f0a002d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 88
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v7}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 93
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/android/launcher2/FolderIconHelper;->getAppIconXYCord(IIZ)[F

    move-result-object v0

    .line 94
    .local v0, appIconCord:[F
    const/4 v7, 0x2

    new-array v4, v7, [I

    aget v7, v0, v9

    float-to-int v7, v7

    aput v7, v4, v9

    aget v7, v0, v10

    float-to-int v7, v7

    aput v7, v4, v10

    .line 100
    .local v4, loc:[I
    aget v7, v4, v9

    int-to-float v7, v7

    int-to-float v8, v2

    mul-float/2addr v8, v6

    sub-float/2addr v7, v8

    float-to-int v7, v7

    aput v7, v4, v9

    .line 101
    aget v7, v4, v10

    int-to-float v7, v7

    int-to-float v8, v3

    mul-float/2addr v8, v6

    sub-float/2addr v7, v8

    float-to-int v7, v7

    aput v7, v4, v10

    .line 103
    return-object v4

    .line 89
    .end local v0           #appIconCord:[F
    .end local v4           #loc:[I
    :catch_0
    move-exception v1

    .line 90
    .local v1, ex:Ljava/lang/NullPointerException;
    const/high16 v6, 0x3f80

    goto :goto_0
.end method

.method private getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I
    .locals 8
    .parameter "iconView"
    .parameter "closing"

    .prologue
    const/4 v7, 0x1

    .line 145
    if-eqz p2, :cond_0

    .line 146
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v5, v7}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v5

    .line 159
    :goto_0
    return-object v5

    .line 148
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v0

    .line 149
    .local v0, lp:Lcom/android/launcher2/HomeView$LayoutParams;
    iget v3, v0, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    .local v3, x:I
    iget v4, v0, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    .line 150
    .local v4, y:I
    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v1, v5, v7

    .line 151
    .local v1, topDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 152
    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 153
    move-object v2, p1

    .line 154
    .local v2, view:Landroid/view/View;
    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eq v2, v5, :cond_1

    .line 155
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v3, v5

    .line 156
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 157
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #view:Landroid/view/View;
    goto :goto_1

    .line 159
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    aput v4, v5, v7

    goto :goto_0
.end method

.method private final getLocationOfFolderIcon()[I
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/high16 v13, 0x4000

    const/4 v12, 0x1

    .line 108
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 109
    .local v9, view:Landroid/view/View;
    iget-object v10, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/FolderIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 112
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v10, 0x2

    new-array v6, v10, [I

    .line 114
    .local v6, loc:[I
    invoke-virtual {v9, v6}, Lcom/android/launcher2/FolderIconView;->getLocationOnScreen([I)V

    .line 115
    aget v10, v6, v12

    sget-object v11, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    aget v11, v11, v12

    sub-int/2addr v10, v11

    aput v10, v6, v12

    .line 118
    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float v3, v10, v13

    .line 119
    .local v3, dx:F
    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getPaddingTop()I

    move-result v10

    int-to-float v4, v10

    .line 121
    .local v4, dy:F
    const/4 v8, 0x0

    .line 123
    .local v8, scale:F
    :try_start_0
    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 127
    :goto_0
    aget v10, v6, v14

    int-to-float v10, v10

    mul-float v11, v3, v8

    add-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v6, v14

    .line 128
    aget v10, v6, v12

    int-to-float v10, v10

    mul-float v11, v4, v8

    add-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v6, v12

    .line 130
    const/high16 v10, 0x3f80

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v2, v10

    .line 132
    .local v2, bw:F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v1, v10

    .line 133
    .local v1, bh:F
    aget v10, v6, v14

    int-to-float v10, v10

    mul-float v11, v2, v8

    sub-float v11, v2, v11

    div-float/2addr v11, v13

    sub-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v6, v14

    .line 134
    aget v10, v6, v12

    int-to-float v10, v10

    mul-float v11, v1, v8

    sub-float v11, v1, v11

    div-float/2addr v11, v13

    sub-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v6, v12

    .line 138
    .end local v1           #bh:F
    .end local v2           #bw:F
    :cond_0
    aget v10, v6, v12

    add-int/lit8 v10, v10, 0x1

    aput v10, v6, v12

    .line 140
    return-object v6

    .line 124
    :catch_0
    move-exception v5

    .line 125
    .local v5, ex:Ljava/lang/NullPointerException;
    const/high16 v8, 0x3f80

    goto :goto_0
.end method

.method private getNewImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 486
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 487
    .local v0, v:Landroid/widget/ImageView;
    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 488
    return-object v0
.end method

.method private startHoveringLocation(I)Lcom/android/launcher2/FolderIconHelper$LocFolder;
    .locals 7
    .parameter "count"

    .prologue
    .line 279
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->NOMAL:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    .line 281
    .local v2, location:Lcom/android/launcher2/FolderIconHelper$LocFolder;
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 282
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 283
    .local v4, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 284
    .local v1, item:Lcom/android/launcher2/BaseItem;
    const v5, 0x7f09000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 285
    .local v0, changeFolderHoveringLocation:Z
    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    .line 286
    sget-object v5, Lcom/android/launcher2/FolderIconHelper$LocFolder;->NOMAL:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    .line 306
    :goto_0
    return-object v5

    .line 288
    :cond_0
    if-eqz v0, :cond_1

    .line 290
    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_2

    .line 292
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->LEFT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    :cond_1
    :goto_1
    move-object v5, v2

    .line 306
    goto :goto_0

    .line 294
    :cond_2
    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    const v6, 0x7f0a0023

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_3

    iget-object v5, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_3

    .line 297
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->RIGHT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    goto :goto_1

    .line 299
    :cond_3
    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_1

    .line 301
    const/4 v5, 0x4

    if-le p1, v5, :cond_1

    .line 302
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->TOP_FOLDER_INHOME:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    goto :goto_1
.end method


# virtual methods
.method FadeInHoverIcon(I)V
    .locals 23
    .parameter "refresh_cnt"

    .prologue
    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v18

    .line 778
    .local v18, item:Lcom/android/launcher2/FolderItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v14

    .line 779
    .local v14, count:I
    const/16 v21, 0x0

    .line 780
    .local v21, remainder_cnt:I
    const/16 v16, 0x0

    .line 781
    .local v16, for_cnt:I
    const/4 v15, 0x7

    .line 782
    .local v15, folderHoverIconCnt:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/FolderAnimator;->setFolderHoveringEndTime(J)V

    .line 784
    const/16 v2, 0x8

    if-ge v14, v2, :cond_1

    .line 861
    :cond_0
    return-void

    .line 787
    :cond_1
    div-int v2, v14, v15

    move/from16 v0, p1

    if-ne v2, v0, :cond_2

    .line 788
    mul-int v2, v15, p1

    rem-int v21, v14, v2

    .line 790
    :cond_2
    if-nez v21, :cond_3

    .line 791
    add-int/lit8 v16, v15, -0x1

    .line 795
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims(Z)V

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->clearFolderHoverAnims()V

    .line 798
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v19

    .line 799
    .local v19, loc:[I
    move/from16 v17, v16

    .local v17, i:I
    :goto_1
    if-ltz v17, :cond_0

    .line 800
    mul-int v2, p1, v15

    add-int v2, v2, v17

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iget-object v6, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 802
    .local v6, b:Landroid/graphics/Bitmap;
    if-nez v6, :cond_4

    .line 799
    :goto_2
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    .line 793
    .end local v6           #b:Landroid/graphics/Bitmap;
    .end local v17           #i:I
    .end local v19           #loc:[I
    :cond_3
    add-int/lit8 v16, v21, -0x1

    goto :goto_0

    .line 803
    .restart local v6       #b:Landroid/graphics/Bitmap;
    .restart local v17       #i:I
    .restart local v19       #loc:[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getAnimGroup()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v5, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v9

    .line 805
    .local v9, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 806
    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 807
    mul-int v2, p1, v15

    add-int v2, v2, v17

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iput-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 813
    .local v20, paint:Landroid/graphics/Paint;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 814
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 815
    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 816
    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v22

    .line 819
    .local v22, scale:F
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getAppIconScaleFactor()F

    move-result v2

    mul-float v22, v22, v2

    .line 820
    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 821
    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 823
    add-int/lit8 v2, v16, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(IIZ)[I

    move-result-object v10

    .line 824
    .local v10, from:[I
    const/4 v2, 0x0

    aget v3, v10, v2

    const/4 v4, 0x0

    aget v4, v19, v4

    add-int/2addr v3, v4

    aput v3, v10, v2

    .line 825
    const/4 v2, 0x1

    aget v3, v10, v2

    const/4 v4, 0x1

    aget v4, v19, v4

    add-int/2addr v3, v4

    aput v3, v10, v2

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    add-int/lit8 v3, v16, 0x1

    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/FolderAnimator;->startHoveringLocation(I)Lcom/android/launcher2/FolderIconHelper$LocFolder;

    move-result-object v4

    move/from16 v0, v17

    invoke-static {v2, v0, v3, v4}, Lcom/android/launcher2/FolderIconHelper;->getHoverOffset(Landroid/content/res/Resources;IILcom/android/launcher2/FolderIconHelper$LocFolder;)[I

    move-result-object v11

    .line 829
    .local v11, to:[I
    move/from16 v12, v17

    .line 830
    .local v12, pos:I
    move/from16 v13, v16

    .line 831
    .local v13, pos_equal:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v9, v1, v11}, Lcom/android/launcher2/FolderAnimator;->buildAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher2/AnimationLayer$Anim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 832
    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    new-instance v7, Lcom/android/launcher2/FolderAnimator$8;

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/FolderAnimator$8;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;[I[III)V

    invoke-virtual {v2, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 858
    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/FolderAnimator;->animHoverGroup(IZ)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 859
    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto/16 :goto_2
.end method

.method animateClose(Lcom/android/launcher2/DragState;)V
    .locals 22
    .parameter "dragState"

    .prologue
    .line 611
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    .line 612
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AnimationLayer;->getAnimationForView(Landroid/view/View;)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v14

    .line 613
    .local v14, currentAnimation:Lcom/android/launcher2/AnimationLayer$Anim;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->isContentDragging()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v14, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->removeOpenAnimations()V

    .line 617
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v13

    .line 618
    .local v13, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v13, :cond_2

    .line 619
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AnimationLayer;->cancelAnimationFor(Landroid/view/View;)V

    .line 618
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 622
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    iget v1, v1, Lcom/android/launcher2/Folder;->mExpandDuration:I

    add-int/lit8 v16, v1, 0x64

    .line 623
    .local v16, duration:I
    if-lez v13, :cond_4

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-le v13, v1, :cond_4

    .line 624
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v2, 0x0

    move/from16 v0, v16

    int-to-long v10, v0

    invoke-virtual {v1, v2, v10, v11}, Lcom/android/launcher2/ScalarAnimator;->to(FJ)V

    .line 627
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->drawAsEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 628
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 631
    :cond_5
    const/16 v17, 0x1

    .line 633
    .local v17, initIconForAnim:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 634
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims(Z)V

    .line 636
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v13

    .line 638
    const/4 v15, 0x0

    .line 639
    .local v15, draggingOut:Z
    const/16 v20, 0x0

    .line 640
    .local v20, shiftIconIndex:Z
    const/16 v18, 0x0

    .line 641
    .local v18, origin:I
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_7

    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    if-eq v1, v2, :cond_9

    const/16 v20, 0x1

    .line 643
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    move/from16 v18, v0

    .line 644
    const/4 v15, 0x1

    .line 646
    :cond_7
    add-int/lit8 v9, v13, -0x1

    :goto_3
    if-ltz v9, :cond_11

    .line 647
    move/from16 v21, v9

    .line 648
    .local v21, viewIndex:I
    if-eqz v15, :cond_b

    .line 649
    move/from16 v0, v18

    if-ne v9, v0, :cond_a

    .line 646
    :cond_8
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 642
    .end local v21           #viewIndex:I
    :cond_9
    const/16 v20, 0x0

    goto :goto_2

    .line 651
    .restart local v21       #viewIndex:I
    :cond_a
    if-eqz v20, :cond_b

    move/from16 v0, v18

    if-le v9, v0, :cond_b

    .line 652
    add-int/lit8 v21, v21, -0x1

    .line 655
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    move/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v4

    .line 656
    .local v4, view:Landroid/view/View;
    instance-of v1, v4, Lcom/android/launcher2/AppIconView;

    if-eqz v1, :cond_8

    .line 657
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/android/launcher2/FolderAnimator;->animationNeeded(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 659
    if-eqz v17, :cond_c

    .line 661
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 662
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 663
    const/16 v17, 0x0

    :cond_c
    move-object v1, v4

    .line 666
    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 667
    .local v5, b:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_8

    .line 668
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getAnimGroup()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v8

    .line 669
    .local v8, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    iput-object v1, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    .line 670
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 672
    .local v19, paint:Landroid/graphics/Paint;
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 673
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 674
    iget-object v1, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 675
    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 676
    const/4 v1, 0x0

    iput v1, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    .line 678
    if-nez v9, :cond_d

    .line 679
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v2, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AnimationLayer;->indexOfChild(Landroid/view/View;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/FolderAnimator;->mIndexOfFirstItem:I

    .line 681
    :cond_d
    const/4 v7, 0x0

    .line 682
    .local v7, from:[I
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 683
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderAnimator;->getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I

    move-result-object v7

    .line 688
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    aget v1, v7, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    aget v1, v7, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-eq v1, v2, :cond_f

    .line 690
    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x0

    aget v3, v7, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v7, v1

    .line 691
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x1

    aget v3, v7, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v7, v1

    .line 693
    :cond_f
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v1}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(IIZ)[I

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lcom/android/launcher2/AnimationLayer$Anim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 694
    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/FolderAnimator$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher2/FolderAnimator$6;-><init>(Lcom/android/launcher2/FolderAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 703
    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    move/from16 v0, v16

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 704
    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 705
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    goto/16 :goto_4

    .line 685
    :cond_10
    iget-object v1, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/AppIconView;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderAnimator;->getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I

    move-result-object v7

    goto/16 :goto_5

    .line 708
    .end local v4           #view:Landroid/view/View;
    .end local v5           #b:Landroid/graphics/Bitmap;
    .end local v7           #from:[I
    .end local v8           #anim:Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v19           #paint:Landroid/graphics/Paint;
    .end local v21           #viewIndex:I
    :cond_11
    if-eqz p1, :cond_12

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto/16 :goto_0

    :cond_12
    const/4 v1, 0x0

    goto :goto_6
.end method

.method animateCloseAnimsEnd(Lcom/android/launcher2/DragState;ZZ)V
    .locals 17
    .parameter "dragState"
    .parameter "forceDropAnim"
    .parameter "isHover"

    .prologue
    .line 865
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 870
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims(Z)V

    goto :goto_0

    .line 873
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 876
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->cancelBouncingItem()V

    .line 877
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v13

    .line 879
    .local v13, count:I
    const/4 v12, 0x0

    .line 880
    .local v12, animateDrop:Z
    if-eqz p1, :cond_5

    .line 881
    if-nez p2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->foundValidDrop()Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_a

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-ne v1, v2, :cond_a

    :cond_4
    const/4 v12, 0x1

    .line 883
    :goto_1
    if-nez p2, :cond_5

    if-eqz v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_5

    .line 884
    const/4 v12, 0x0

    .line 887
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getAnimGroup()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v4, 0x0

    if-eqz v12, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :goto_2
    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v3

    .line 889
    .local v3, dropAnim:Lcom/android/launcher2/AnimationLayer$Anim;
    if-eqz p1, :cond_6

    .line 890
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iput-object v1, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    .line 892
    :cond_6
    if-eqz v12, :cond_c

    .line 894
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    .line 895
    .local v4, pos_:I
    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AnimationLayer;->getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I

    move-result-object v2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v1}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(IIZ)[I

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 898
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 899
    .local v16, paint:Landroid/graphics/Paint;
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 900
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 901
    iget-object v1, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 902
    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 904
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_7

    .line 905
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v2, 0x0

    const-wide/16 v5, 0xf0

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/launcher2/ScalarAnimator;->to(FJ)V

    .line 906
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 915
    .end local v4           #pos_:I
    .end local v16           #paint:Landroid/graphics/Paint;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 916
    .local v7, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->cancelAnimation()V

    .line 917
    iget-object v15, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    .line 918
    .local v15, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v15}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v8

    .line 919
    .local v8, pos:I
    iget-object v1, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    .line 923
    if-eqz p3, :cond_d

    .line 925
    const/4 v1, 0x7

    if-le v13, v1, :cond_9

    .line 926
    const/4 v13, 0x7

    .line 927
    :cond_9
    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v2}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(IIZ)[I

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_3

    .line 881
    .end local v3           #dropAnim:Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v7           #anim:Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v8           #pos:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #item:Lcom/android/launcher2/BaseItem;
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 887
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 908
    .restart local v3       #dropAnim:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 909
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto/16 :goto_0

    .line 932
    .restart local v7       #anim:Lcom/android/launcher2/AnimationLayer$Anim;
    .restart local v8       #pos:I
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #item:Lcom/android/launcher2/BaseItem;
    :cond_d
    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v2}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(IIZ)[I

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_3

    .line 938
    .end local v7           #anim:Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v8           #pos:I
    .end local v15           #item:Lcom/android/launcher2/BaseItem;
    :cond_e
    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/FolderAnimator$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/launcher2/FolderAnimator$9;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 949
    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    sget v2, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 950
    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 952
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto/16 :goto_0
.end method

.method animateHoverExpand()V
    .locals 18

    .prologue
    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->removeOpenAnimations()V

    .line 722
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->drawAsEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    :cond_0
    return-void

    .line 724
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 725
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims(Z)V

    .line 727
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v14

    .line 728
    .local v14, item:Lcom/android/launcher2/FolderItem;
    invoke-interface {v14}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 730
    .local v13, count:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 731
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v15

    .line 735
    .local v15, loc:[I
    add-int/lit8 v9, v13, -0x1

    .local v9, i:I
    :goto_0
    if-ltz v9, :cond_0

    .line 736
    invoke-interface {v14, v9}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-object v5, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 737
    .local v5, b:Landroid/graphics/Bitmap;
    if-nez v5, :cond_3

    .line 735
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 738
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getAnimGroup()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v8

    .line 739
    .local v8, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-interface {v14, v9}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iput-object v1, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    .line 740
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 744
    .local v16, paint:Landroid/graphics/Paint;
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 745
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 746
    iget-object v1, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 747
    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 749
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v17

    .line 750
    .local v17, scale:F
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getAppIconScaleFactor()F

    move-result v1

    mul-float v17, v17, v1

    .line 751
    iget-object v1, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 752
    iget-object v1, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 754
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v1}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(IIZ)[I

    move-result-object v7

    .line 755
    .local v7, from:[I
    const/4 v1, 0x0

    aget v2, v7, v1

    const/4 v3, 0x0

    aget v3, v15, v3

    add-int/2addr v2, v3

    aput v2, v7, v1

    .line 756
    const/4 v1, 0x1

    aget v2, v7, v1

    const/4 v3, 0x1

    aget v3, v15, v3

    add-int/2addr v2, v3

    aput v2, v7, v1

    .line 758
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher2/FolderAnimator;->startHoveringLocation(I)Lcom/android/launcher2/FolderIconHelper$LocFolder;

    move-result-object v2

    invoke-static {v1, v9, v13, v2}, Lcom/android/launcher2/FolderIconHelper;->getHoverOffset(Landroid/content/res/Resources;IILcom/android/launcher2/FolderIconHelper$LocFolder;)[I

    move-result-object v10

    .line 760
    .local v10, to:[I
    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lcom/android/launcher2/AnimationLayer$Anim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 761
    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/FolderAnimator$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher2/FolderAnimator$7;-><init>(Lcom/android/launcher2/FolderAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 769
    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 770
    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 771
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    goto/16 :goto_1
.end method

.method animateOpen()V
    .locals 18

    .prologue
    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v14

    .line 350
    .local v14, loc:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v2, v2, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(FJ)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v2, v2, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 354
    const/4 v13, 0x1

    .line 356
    .local v13, initIconForAnim:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v8

    .line 357
    .local v8, count:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getVisibleItems()I

    move-result v6

    .line 358
    .local v6, visibleItems:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getNormalVisibleItems()I

    move-result v7

    .line 359
    .local v7, normalVisibleItems:I
    add-int/lit8 v11, v8, -0x1

    .local v11, i:I
    :goto_0
    if-ltz v11, :cond_3

    .line 361
    if-lt v11, v6, :cond_1

    .line 359
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 363
    :cond_1
    if-eqz v13, :cond_2

    .line 365
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    .line 366
    const/4 v13, 0x0

    .line 369
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v15

    .line 370
    .local v15, view:Landroid/view/View;
    instance-of v2, v15, Lcom/android/launcher2/AppIconView;

    if-eqz v2, :cond_0

    move-object v2, v15

    .line 371
    check-cast v2, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 372
    .local v10, b:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_0

    .line 373
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 374
    .local v4, imgView:Landroid/widget/ImageView;
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 376
    .local v9, paint:Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 377
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 378
    const/4 v2, 0x1

    invoke-virtual {v4, v2, v9}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v4, v3, v0}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;II)V

    .line 380
    const/4 v2, 0x4

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v2}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(IIZ)[I

    move-result-object v12

    .line 385
    .local v12, iconOffset:[I
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getAppIconScaleFactor()F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 386
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getAppIconScaleFactor()F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 388
    const/4 v2, 0x0

    aget v2, v14, v2

    const/4 v3, 0x0

    aget v3, v12, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 389
    const/4 v2, 0x1

    aget v2, v14, v2

    const/4 v3, 0x1

    aget v3, v12, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 390
    move v5, v11

    .line 391
    .local v5, pos:I
    new-instance v2, Lcom/android/launcher2/FolderAnimator$3;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/FolderAnimator$3;-><init>(Lcom/android/launcher2/FolderAnimator;Landroid/widget/ImageView;IIIILandroid/graphics/Paint;)V

    invoke-virtual {v15, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto/16 :goto_1

    .line 465
    .end local v4           #imgView:Landroid/widget/ImageView;
    .end local v5           #pos:I
    .end local v9           #paint:Landroid/graphics/Paint;
    .end local v10           #b:Landroid/graphics/Bitmap;
    .end local v12           #iconOffset:[I
    .end local v15           #view:Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 467
    return-void
.end method

.method animatePlate(Z)Z
    .locals 9
    .parameter "isDragging"

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 993
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return v0

    .line 998
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v0, v1, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 999
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v0, v1, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 1000
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v0, v1, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    .line 1001
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 1002
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v1, :cond_0

    .line 1004
    iget-boolean v1, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    .line 1005
    :cond_2
    iput-boolean v0, p0, Lcom/android/launcher2/FolderAnimator;->mRenderIconOnPlate:Z

    .line 1011
    :goto_1
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderHighlightBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1012
    .local v6, b:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    .line 1013
    const/4 v5, -0x1

    .line 1014
    .local v5, index:I
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_3

    .line 1015
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 1018
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getAnimGroup()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 1021
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->drawPlate()V

    move v0, v7

    .line 1022
    goto :goto_0

    .line 1008
    .end local v5           #index:I
    .end local v6           #b:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    move v0, v7

    :cond_5
    iput-boolean v0, p0, Lcom/android/launcher2/FolderAnimator;->mRenderIconOnPlate:Z

    goto :goto_1
.end method

.method bounceItemInIconAt(Lcom/android/launcher2/BaseItem;I)V
    .locals 13
    .parameter "item"
    .parameter "pos"

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 179
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderAnimator;->buildAnimForItem(Lcom/android/launcher2/BaseItem;)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    .line 180
    .local v0, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 181
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v8

    new-instance v9, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v9}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 184
    if-eqz p2, :cond_1

    .line 185
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 186
    iget v8, p0, Lcom/android/launcher2/FolderAnimator;->mIndexOfFirstItem:I

    sub-int/2addr v8, p2

    add-int/lit8 v3, v8, 0x1

    .line 187
    .local v3, i:I
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer;->getChildCount()I

    move-result v8

    if-lt v3, v8, :cond_0

    const/4 v3, -0x1

    .line 188
    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9, v3}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;I)V

    .line 191
    .end local v3           #i:I
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v8}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderItem;

    .line 192
    .local v2, folderItem:Lcom/android/launcher2/FolderItem;
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v4

    .line 193
    .local v4, loc:[I
    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v8

    invoke-direct {p0, p2, v8, v11}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(IIZ)[I

    move-result-object v5

    .line 195
    .local v5, offset:[I
    new-array v1, v10, [I

    aget v8, v4, v11

    aget v9, v5, v11

    add-int/2addr v8, v9

    aput v8, v1, v11

    aget v8, v4, v12

    aget v9, v5, v12

    add-int/2addr v8, v9

    aput v8, v1, v12

    .line 200
    .local v1, dest:[I
    new-array v7, v10, [I

    aget v8, v4, v11

    aget v9, v5, v11

    add-int/2addr v8, v9

    aput v8, v7, v11

    aget v8, v4, v12

    aget v9, v5, v12

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4040

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v8, v8

    aput v8, v7, v12

    .line 205
    .local v7, up:[I
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v8}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v6

    .line 206
    .local v6, scale:F
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getAppIconScaleFactor()F

    move-result v8

    mul-float/2addr v6, v8

    .line 207
    iget-object v8, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 208
    iget-object v8, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 210
    int-to-float v8, p2

    const v9, 0x3dcccccd

    mul-float/2addr v8, v9

    iput v8, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    .line 211
    iget v8, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    iget-object v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Lcom/android/launcher2/FolderIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    .line 212
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 214
    new-instance v8, Lcom/android/launcher2/FolderAnimator$2;

    invoke-direct {v8, p0, v0, v1, v7}, Lcom/android/launcher2/FolderAnimator$2;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;[I[I)V

    invoke-virtual {v0, v8, v11}, Lcom/android/launcher2/AnimationLayer$Anim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 233
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v8

    const-wide/16 v9, 0x4b0

    invoke-virtual {v8, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 234
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    .line 235
    return-void
.end method

.method cancel()V
    .locals 1

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/android/launcher2/FolderAnimator;->destroyPlate()V

    .line 988
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 989
    return-void
.end method

.method cancelBouncingItem()V
    .locals 4

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 250
    .local v0, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 253
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 254
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 255
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 258
    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/AnimationLayer$Anim;->addAlphaAnimator(FFZ)V

    .line 261
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method cleanupCloseAnims(Z)V
    .locals 4
    .parameter "isRefreshHover"

    .prologue
    .line 956
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 957
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 958
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 959
    if-nez p1, :cond_0

    .line 960
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 965
    .local v0, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    goto :goto_1

    .line 968
    .end local v0           #anim:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 969
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    .line 971
    if-nez p1, :cond_0

    .line 974
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    goto :goto_0
.end method

.method clearFolderHoverAnims()V
    .locals 3

    .prologue
    .line 979
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 984
    :goto_0
    return-void

    .line 980
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 981
    .local v0, anim:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    goto :goto_1

    .line 983
    .end local v0           #anim:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method destroyPlate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1026
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->resetShadow()V

    .line 1027
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 1028
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 1030
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v2, v0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    .line 1034
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v2, v0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 1036
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1037
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v2, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 1040
    :cond_2
    return-void
.end method

.method finishBouncingItem(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "swapWith"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 241
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 242
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0
.end method

.method public getFolderHoveringEndTime()J
    .locals 2

    .prologue
    .line 716
    iget-wide v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoveringEndTime:J

    return-wide v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCloseAnimating()Z
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-boolean v1, v1, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    if-nez v1, :cond_1

    .line 274
    :cond_0
    const/4 v0, 0x1

    .line 276
    :cond_1
    return v0
.end method

.method public isHoverAnimating()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method open()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 339
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 340
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 341
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 342
    return-void
.end method

.method public removeOpenAnimations()V
    .locals 4

    .prologue
    .line 601
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 602
    .local v1, img:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 603
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 605
    .end local v1           #img:Landroid/widget/ImageView;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 606
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    .line 607
    return-void
.end method

.method public setFolderHoveringEndTime(J)V
    .locals 0
    .parameter "endtime"

    .prologue
    .line 712
    iput-wide p1, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoveringEndTime:J

    .line 713
    return-void
.end method

.method public updateTempIconPosition()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1110
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1111
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 1112
    .local v1, mitem:Lcom/android/launcher2/BaseItem;
    if-eqz v2, :cond_0

    .line 1113
    check-cast v2, Lcom/android/launcher2/AppIconView;

    .end local v2           #v:Landroid/view/View;
    invoke-direct {p0, v2, v4}, Lcom/android/launcher2/FolderAnimator;->getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I

    .line 1114
    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    .line 1115
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 1116
    .local v0, item:Lcom/android/launcher2/HomeItem;
    iget-wide v3, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/FolderAnimator;->mFolderOpenOri:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_0

    .line 1119
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I

    .line 1123
    .end local v0           #item:Lcom/android/launcher2/HomeItem;
    :cond_0
    return-void
.end method

.method updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 63
    return-void
.end method
