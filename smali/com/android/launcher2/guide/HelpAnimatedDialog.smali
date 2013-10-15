.class public Lcom/android/launcher2/guide/HelpAnimatedDialog;
.super Ljava/lang/Object;
.source "HelpAnimatedDialog.java"


# static fields
.field private static mGoalAnimationView:Landroid/view/View;


# instance fields
.field private flashCount:I

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mImageTouch:Landroid/view/View$OnTouchListener;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->flashCount:I

    .line 61
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/guide/HelpAnimatedDialog$1;-><init>(Lcom/android/launcher2/guide/HelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 77
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/guide/HelpAnimatedDialog$2;-><init>(Lcom/android/launcher2/guide/HelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 97
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/guide/HelpAnimatedDialog$3;-><init>(Lcom/android/launcher2/guide/HelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 114
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/guide/HelpAnimatedDialog$4;-><init>(Lcom/android/launcher2/guide/HelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mImageTouch:Landroid/view/View$OnTouchListener;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "v"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->flashCount:I

    .line 61
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/guide/HelpAnimatedDialog$1;-><init>(Lcom/android/launcher2/guide/HelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 77
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/guide/HelpAnimatedDialog$2;-><init>(Lcom/android/launcher2/guide/HelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 97
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/guide/HelpAnimatedDialog$3;-><init>(Lcom/android/launcher2/guide/HelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 114
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/guide/HelpAnimatedDialog$4;-><init>(Lcom/android/launcher2/guide/HelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mImageTouch:Landroid/view/View$OnTouchListener;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->init(Landroid/content/Context;Landroid/view/View;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/guide/HelpAnimatedDialog;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100()Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mGoalAnimationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/guide/HelpAnimatedDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->flashCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/launcher2/guide/HelpAnimatedDialog;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->flashCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->flashCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/guide/HelpAnimatedDialog;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "v"

    .prologue
    .line 48
    sput-object p2, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mGoalAnimationView:Landroid/view/View;

    .line 49
    sget-object v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mGoalAnimationView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mImageTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50
    const v0, 0x7f04000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mShowAnimation:Landroid/view/animation/Animation;

    .line 52
    iget-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 53
    const v0, 0x7f04000b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mFadingAnimation:Landroid/view/animation/Animation;

    .line 55
    iget-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 56
    const v0, 0x7f04000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mFlashingAnimation:Landroid/view/animation/Animation;

    .line 58
    iget-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 59
    return-void
.end method

.method public static setAlpha()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 151
    sget-object v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mGoalAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mGoalAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mGoalAnimationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mGoalAnimationView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 136
    iget-object v0, p0, Lcom/android/launcher2/guide/HelpAnimatedDialog;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 137
    return-void
.end method

.method public startZoom(FFLandroid/view/View;)V
    .locals 9
    .parameter "pivotX"
    .parameter "pivotY"
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 140
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, p1

    move v7, v5

    move v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 143
    .local v0, animation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 144
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 145
    invoke-virtual {p3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->start()V

    .line 148
    return-void
.end method
