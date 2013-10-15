.class public Lcom/android/launcher2/MenuTitleBarManager;
.super Ljava/lang/Object;
.source "MenuTitleBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuTitleBarManager$3;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuTitleBarManager"

.field private static final TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder; = null

.field private static final TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder; = null

.field private static final TITLE_BAR_SCALE_IN:F = 1.0f

.field private static final TITLE_BAR_SCALE_OUT:F = 0.9f

.field private static final TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;


# instance fields
.field private mCurrentTitleBar:Landroid/view/View;

.field private mDownloadedTitleBar:Landroid/view/ViewGroup;

.field private mDownloadedTitleBarStub:Landroid/view/ViewStub;

.field private mEditTitleBar:Landroid/view/ViewGroup;

.field private mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

.field private mNormalTitleBar:Landroid/view/ViewGroup;

.field private mSearchTitleBar:Landroid/view/ViewGroup;

.field private mSelectedTitleBar:Landroid/view/ViewGroup;

.field private mSelectedTitleBarStub:Landroid/view/ViewStub;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mTitleBarHeight:I

.field private mUninstallTitleBar:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 38
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuTitleBarManager;->DEBUGGABLE:Z

    .line 62
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

    .line 63
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

    .line 64
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;

    .line 65
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

    .line 66
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    .line 67
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_5

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    return-void

    .line 62
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 63
    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 64
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 65
    :array_3
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 66
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 67
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 413
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuTitleBarManager;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V
    .locals 7
    .parameter
    .parameter "titleBar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v6, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 155
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 156
    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 157
    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    invoke-static {p2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 160
    .local v0, a:Landroid/animation/Animator;
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 161
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method private getSlideUpAnimation(Ljava/util/List;Landroid/view/View;)V
    .locals 7
    .parameter
    .parameter "titleBar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 187
    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 188
    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v6, [F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    invoke-static {p2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 192
    .local v0, a:Landroid/animation/Animator;
    new-instance v1, Lcom/android/launcher2/MenuTitleBarManager$1;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher2/MenuTitleBarManager$1;-><init>(Lcom/android/launcher2/MenuTitleBarManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method


# virtual methods
.method public animateInTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 5
    .parameter
    .parameter "titleBar"
    .parameter "immediately"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    .line 209
    if-eqz p3, :cond_2

    .line 210
    if-eqz p2, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v0, :cond_0

    .line 212
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 213
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 215
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 217
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 232
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 225
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v3, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_3
    if-eqz p2, :cond_1

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V

    goto :goto_0
.end method

.method public animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 11
    .parameter
    .parameter "titleBar"
    .parameter "immediately"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p3, :cond_2

    .line 240
    if-eqz p2, :cond_0

    .line 241
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v7, :cond_1

    .line 242
    const v7, 0x3f666666

    invoke-virtual {p2, v7}, Landroid/view/View;->setScaleX(F)V

    .line 243
    const v7, 0x3f666666

    invoke-virtual {p2, v7}, Landroid/view/View;->setScaleY(F)V

    .line 247
    :goto_0
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_0
    :goto_1
    return-void

    .line 245
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 253
    .local v2, launcher:Lcom/android/launcher2/Launcher;
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v7, :cond_5

    .line 254
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    sget-object v10, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 259
    .local v0, a:Landroid/animation/Animator;
    new-instance v7, Lcom/android/launcher2/MenuTitleBarManager$2;

    invoke-direct {v7, p0, p2}, Lcom/android/launcher2/MenuTitleBarManager$2;-><init>(Lcom/android/launcher2/MenuTitleBarManager;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 267
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 268
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    .line 275
    .local v1, appsGrid:Lcom/android/launcher2/MenuAppsGrid;
    if-eqz v1, :cond_4

    .line 276
    sget-boolean v7, Lcom/android/launcher2/MenuTitleBarManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_3

    const-string v7, "Launcher.MenuTitleBarManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current page is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 278
    .local v4, page:Landroid/view/View;
    if-eqz v4, :cond_4

    .line 279
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 280
    .local v3, location:[I
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 281
    const/4 v7, 0x1

    aget v5, v3, v7

    .line 282
    .local v5, pageY:I
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 283
    const/4 v7, 0x1

    aget v6, v3, v7

    .line 284
    .local v6, titleBarY:I
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    sub-int v8, v5, v6

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 285
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 288
    .end local v3           #location:[I
    .end local v4           #page:Landroid/view/View;
    .end local v5           #pageY:I
    .end local v6           #titleBarY:I
    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v8, 0x2

    sget-object v9, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 289
    .end local v0           #a:Landroid/animation/Animator;
    .end local v1           #appsGrid:Lcom/android/launcher2/MenuAppsGrid;
    :cond_5
    if-eqz p2, :cond_0

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideUpAnimation(Ljava/util/List;Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter "titleBar"
    .parameter "immediately"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/launcher2/MenuTitleBarManager;->animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 128
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/MenuTitleBarManager;->animateInTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 129
    iput-object p2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    goto :goto_0
.end method

.method public changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V
    .locals 1
    .parameter
    .parameter "state"
    .parameter "immediately"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 122
    .local v0, titleBar:Landroid/view/View;
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 123
    return-void
.end method

.method public changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuWidgets$WidgetState;Z)V
    .locals 1
    .parameter
    .parameter "state"
    .parameter "immediately"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 112
    .local v0, titleBar:Landroid/view/View;
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 113
    return-void
.end method

.method public getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;
    .locals 4
    .parameter "state"

    .prologue
    const v3, 0x7f07008a

    const/4 v1, 0x0

    .line 361
    sget-object v0, Lcom/android/launcher2/MenuTitleBarManager$3;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual {p1}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 412
    const-string v0, "Launcher.MenuTitleBarManager"

    const-string v2, "unknown state when asking for title bar"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 413
    :goto_0
    return-object v0

    .line 371
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    .line 373
    iput-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 382
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 384
    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->getInflatedId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    .line 393
    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 406
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    .line 390
    iput-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    goto :goto_1

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f07008b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 410
    :pswitch_4
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mUninstallTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;
    .locals 3
    .parameter "state"

    .prologue
    .line 418
    sget-object v1, Lcom/android/launcher2/MenuTitleBarManager$3;->$SwitchMap$com$android$launcher2$MenuWidgets$WidgetState:[I

    invoke-virtual {p1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 432
    const-string v1, "Launcher.MenuTitleBarManager"

    const-string v2, "unknown widget state when asking for title bar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 420
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 422
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mUninstallTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 424
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    const v2, 0x7f0700a6

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchTitleBar:Landroid/view/ViewGroup;

    .line 425
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchTitleBar:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    const v2, 0x7f0700a5

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 427
    .local v0, vb:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchTitleBar:Landroid/view/ViewGroup;

    .line 429
    .end local v0           #vb:Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEditTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMenuEditBar()Lcom/android/launcher2/MenuEditBar;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    return-object v0
.end method

.method public getTitleBarHeight()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarHeight:I

    return v0
.end method

.method public hideEditBar(Landroid/animation/Animator;Lcom/android/launcher2/MenuStateAnimatorSet;)V
    .locals 3
    .parameter "a"
    .parameter "stateAnimator"

    .prologue
    .line 343
    invoke-virtual {p2}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v0, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->animateInTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 347
    invoke-virtual {p2, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    .line 348
    return-void
.end method

.method public init(Lcom/android/launcher2/MenuView;)V
    .locals 4
    .parameter "tabHost"

    .prologue
    .line 70
    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 102
    :goto_0
    return-void

    .line 71
    :cond_0
    const v2, 0x7f07009a

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    .line 72
    const v2, 0x7f0700a1

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    .line 73
    const v2, 0x7f07008c

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuEditBar;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    .line 74
    const v2, 0x7f0700a2

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mUninstallTitleBar:Landroid/view/ViewGroup;

    .line 77
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 79
    .local v0, editTitleBar:Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 80
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/FocusHelper;->TITLEBAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    .end local v0           #editTitleBar:Landroid/view/ViewGroup;
    .end local v1           #i:I
    :cond_1
    const v2, 0x7f0700a8

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    .line 87
    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 88
    const v2, 0x7f0700a7

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    .line 91
    :cond_2
    const v2, 0x7f0700a4

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    .line 92
    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    .line 93
    const v2, 0x7f0700a3

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    .line 96
    :cond_3
    iput-object p1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    .line 97
    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    .line 100
    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarHeight:I

    goto/16 :goto_0
.end method

.method public resetTitleBar(Landroid/view/View;)V
    .locals 1
    .parameter "titleBar"

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Landroid/view/View;I)V

    .line 313
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 314
    return-void
.end method

.method public resetTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 308
    .local v0, titleBar:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuTitleBarManager;->resetTitleBar(Landroid/view/View;)V

    .line 309
    return-void
.end method

.method public setEditBarClickListener(Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 317
    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    const v3, 0x7f07005d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    const v3, 0x7f070095

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    const v3, 0x7f07008f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 320
    .local v0, back:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    const v3, 0x7f070090

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 324
    .local v1, edit:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 325
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :cond_1
    return-void
.end method

.method public setTitleBarVisibility(Landroid/view/View;I)V
    .locals 1
    .parameter "titleBar"
    .parameter "visibility"

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 304
    :cond_0
    return-void
.end method

.method public setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V
    .locals 1
    .parameter "state"
    .parameter "visibility"

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 296
    .local v0, titleBar:Landroid/view/View;
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Landroid/view/View;I)V

    .line 297
    return-void
.end method

.method public showEditBar(ZZZZLcom/android/launcher2/MenuStateAnimatorSet;Z)V
    .locals 8
    .parameter "show_folder"
    .parameter "isSystemApp"
    .parameter "isNewPageAllowed"
    .parameter "isFolder"
    .parameter "stateAnimator"
    .parameter "canBeDisable"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p5}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    .line 333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v2, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 336
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/MenuEditBar;->show(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;ZZZZZ)V

    .line 338
    invoke-virtual {p5, v2}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    .line 340
    .end local v2           #animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    :cond_0
    return-void
.end method

.method public slideDownTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuStateAnimatorSet;)V
    .locals 2
    .parameter "state"
    .parameter "stateAnimator"

    .prologue
    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 150
    .local v1, titleBar:Landroid/view/View;
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V

    .line 151
    invoke-virtual {p2, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    .line 152
    return-void
.end method

.method public slideDownTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V
    .locals 1
    .parameter "state"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 139
    .local v0, titleBar:Landroid/view/View;
    invoke-direct {p0, p2, v0}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V

    .line 140
    return-void
.end method

.method public slideUpTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuStateAnimatorSet;)V
    .locals 2
    .parameter "state"
    .parameter "stateAnimator"

    .prologue
    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 182
    .local v1, titleBar:Landroid/view/View;
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideUpAnimation(Ljava/util/List;Landroid/view/View;)V

    .line 183
    invoke-virtual {p2, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    .line 184
    return-void
.end method

.method public slideUpTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V
    .locals 1
    .parameter "state"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p2, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 171
    .local v0, titleBar:Landroid/view/View;
    invoke-direct {p0, p2, v0}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideUpAnimation(Ljava/util/List;Landroid/view/View;)V

    .line 172
    return-void
.end method
