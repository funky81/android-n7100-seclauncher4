.class public Lcom/android/launcher2/AnimationLayer$Anim;
.super Ljava/lang/Object;
.source "AnimationLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AnimationLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Anim"
.end annotation


# static fields
.field static final DEFAULT:I = 0x0

.field static final SCROLLABLE:I = 0x1


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field mAnimGroup:I

.field mAnimIcon:Landroid/widget/ImageView;

.field private mAnimation:Landroid/animation/Animator;

.field mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mClipRect:Landroid/graphics/Rect;

.field mClippingEnabled:Z

.field public mDarken:F

.field mFrom:[I

.field private mIsCompleted:Z

.field public mLinkedItem:Lcom/android/launcher2/BaseItem;

.field private mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public mPaint:Landroid/graphics/Paint;

.field private mShadowFadeStarted:Z

.field mTo:[I

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher2/AnimationLayer;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AnimationLayer;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 808
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 798
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    .line 799
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    .line 806
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    .line 897
    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim$4;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

    .line 916
    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim$5;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1086
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    .line 809
    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer$Anim;->updateView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/AnimationLayer$Anim;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/AnimationLayer$Anim;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 786
    iput-boolean p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    return p1
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->onDrop()V

    .line 914
    :cond_1
    return-void
.end method


# virtual methods
.method public addAlphaAnimator(FFZ)V
    .locals 3
    .parameter "from"
    .parameter "to"
    .parameter "markCompleteOnEnd"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 873
    .local v0, a:Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/launcher2/AnimationLayer$Anim$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher2/AnimationLayer$Anim$2;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;FF)V

    .line 882
    .local v2, ul:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    new-instance v1, Lcom/android/launcher2/AnimationLayer$Anim$3;

    invoke-direct {v1, p0, v0, v2, p3}, Lcom/android/launcher2/AnimationLayer$Anim$3;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 893
    .local v1, l:Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 894
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 895
    return-void
.end method

.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V
    .locals 2
    .parameter "ul"
    .parameter "markCompleteOnEnd"

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 855
    .local v0, a:Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/launcher2/AnimationLayer$Anim$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/launcher2/AnimationLayer$Anim$1;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 866
    .local v1, l:Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 867
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 868
    return-void
.end method

.method cancel()V
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1052
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer$Anim;->markCompleted()V

    .line 1053
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1104
    :cond_0
    return-void
.end method

.method public enableClipping()V
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    .line 837
    return-void
.end method

.method public getAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFrom()[I
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    return-object v0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTo()[I
    .locals 3

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 1071
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCompleted()Z
    .locals 1

    .prologue
    .line 1097
    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    return v0
.end method

.method public markCompleted()V
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 1091
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    .line 1092
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 812
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 813
    iput v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    .line 814
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    .line 815
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    .line 816
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 817
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    .line 818
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 819
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    .line 820
    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    .line 821
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 823
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    instance-of v0, v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 825
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 828
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    .line 829
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 830
    return-void
.end method

.method public setFrom([I)V
    .locals 0
    .parameter "f"

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    .line 1057
    return-void
.end method

.method public setTo([I)V
    .locals 0
    .parameter "t"

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 1061
    return-void
.end method

.method setupBasicAnimation(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "group"
    .parameter "callback"
    .parameter "view"
    .parameter "b"
    .parameter "animIcon"

    .prologue
    .line 840
    iput p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    .line 841
    if-eqz p2, :cond_0

    .line 842
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    .line 844
    :cond_0
    iput-object p3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    .line 845
    iput-object p5, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 846
    iput-object p4, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    .line 848
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    .line 849
    return-void

    .line 848
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method setupMoveAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[IIZ)V
    .locals 3
    .parameter "view"
    .parameter "b"
    .parameter "animIcon"
    .parameter "from"
    .parameter "to"
    .parameter "duration"
    .parameter "fadeInShadow"

    .prologue
    .line 950
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 951
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    .line 952
    iput-object p3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 953
    iput-object p2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    .line 954
    iput-object p4, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    .line 955
    iput-object p5, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 956
    if-nez p7, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    .line 958
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    .line 959
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 960
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 961
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    int-to-long v1, p6

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 962
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 963
    return-void

    .line 956
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 958
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method setupMoveFadeAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[I)V
    .locals 24
    .parameter "view"
    .parameter "b"
    .parameter "animIcon"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 967
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 968
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    .line 969
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 970
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    .line 971
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 972
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    .line 975
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v8

    .line 976
    .local v8, _to:[I
    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x0

    aget v3, p4, v3

    sub-int/2addr v2, v3

    int-to-float v6, v2

    .line 977
    .local v6, dx:F
    const/4 v2, 0x1

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, p4, v3

    sub-int/2addr v2, v3

    int-to-float v7, v2

    .line 979
    .local v7, dy:F
    mul-float v2, v6, v6

    mul-float v3, v7, v7

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v13, v2

    .line 980
    .local v13, kDistance:F
    const/16 v19, 0x5a

    .line 981
    .local v19, kFadeOutDuration:I
    const/16 v15, 0x5a

    .line 982
    .local v15, kFadeInDuration:I
    const v2, 0x3da3d70a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v18, v2, v3

    .line 983
    .local v18, kFadeOutDistance:F
    const v2, 0x3df5c28f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v14, v2, v3

    .line 984
    .local v14, kFadeInDistance:F
    const v21, 0x3dcccccd

    .line 985
    .local v21, kFadeOutStartFactor:F
    const v2, 0x3dcccccd

    div-float v3, v18, v13

    add-float v20, v2, v3

    .line 987
    .local v20, kFadeOutEndFactor:F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const v4, 0x3dcccccd

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v20, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v22

    .line 988
    .local v22, moveAnim1:Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x5a

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 989
    new-instance v2, Lcom/android/launcher2/AnimationLayer$Anim$6;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/AnimationLayer$Anim$6;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/widget/ImageView;[IFF)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1001
    const/high16 v16, 0x3f80

    .line 1002
    .local v16, kFadeInEndFactor:F
    const/high16 v2, 0x3f80

    div-float v3, v14, v13

    sub-float v17, v2, v3

    .line 1004
    .local v17, kFadeInStartFactor:F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v17, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v23

    .line 1005
    .local v23, moveAnim2:Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x5a

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1006
    new-instance v2, Lcom/android/launcher2/AnimationLayer$Anim$7;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/AnimationLayer$Anim$7;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/widget/ImageView;[IFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1018
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1019
    .local v11, fadeOutAnim:Landroid/animation/ValueAnimator;
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1022
    .local v9, fadeInAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x5a

    invoke-virtual {v11, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1023
    const-wide/16 v2, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1024
    const-wide/16 v2, 0x5a

    invoke-virtual {v9, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1026
    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lcom/android/launcher2/AnimationLayer;->createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v12

    .line 1027
    .local v12, fadeOutSet:Landroid/animation/AnimatorSet;
    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/android/launcher2/AnimationLayer;->createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v10

    .line 1030
    .local v10, fadeInSet:Landroid/animation/AnimatorSet;
    invoke-static {v12, v10}, Lcom/android/launcher2/AnimationLayer;->createAnimatorSequentialSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 1032
    return-void

    .line 1018
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3et
    .end array-data

    .line 1019
    :array_1
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method update([IIZ)V
    .locals 4
    .parameter "to"
    .parameter "duration"
    .parameter "clip"

    .prologue
    .line 1035
    iput-boolean p3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    .line 1036
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 1037
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 1038
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 1039
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    instance-of v1, v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1041
    .local v0, a:Landroid/animation/ValueAnimator;
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1042
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 1044
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1047
    .end local v0           #a:Landroid/animation/ValueAnimator;
    :cond_0
    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "b_"

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    .line 1112
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1113
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1114
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1115
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1116
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 1117
    return-void
.end method
