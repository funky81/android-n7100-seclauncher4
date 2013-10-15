.class public Lcom/android/launcher2/QuickViewWorkspace;
.super Lcom/android/launcher2/QuickView;
.source "QuickViewWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickViewWorkspace$ShadowDrawable;,
        Lcom/android/launcher2/QuickViewWorkspace$SecretButton;,
        Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;,
        Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;
    }
.end annotation


# static fields
.field private static final ADD_BTN_TAG:Ljava/lang/Object; = null

.field private static final RED_COLOR_FILTER:Landroid/graphics/ColorFilter; = null

.field private static final ROW_BY_COL_LAYOUT:[[I = null

.field private static final TAG:Ljava/lang/String; = "QuickViewWorkspace"

.field private static final TOUCH_DRAG_DELETE:I = 0x1

.field private static final TOUCH_DRAG_NORMAL:I

.field private static sHitRect:Landroid/graphics/Rect;


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

.field private mConfigurationChangeIsInProgress:Z

.field private mDeleteIndex:I

.field private mDeleteView:Landroid/view/View;

.field private mDragState:I

.field private mDropCheck:Z

.field private mEnterAnimator:Landroid/animation/Animator;

.field private mExitAnimator:Landroid/animation/Animator;

.field private mHandler:Landroid/os/Handler;

.field private mHeightMeasureSpec:I

.field private final mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mPageLP:Landroid/widget/FrameLayout$LayoutParams;

.field private final mSetHomeListener:Landroid/view/View$OnClickListener;

.field private final mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mTempRects:[Landroid/graphics/Rect;

.field private mUseVariableSizedPanel:Z

.field private mWidthMeasureSpec:I

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 67
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v2, [I

    aput v4, v1, v5

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    .line 85
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/high16 v1, -0x68

    const/high16 v2, -0xe0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 199
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->sHitRect:Landroid/graphics/Rect;

    return-void

    .line 67
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance v2, Lcom/android/launcher2/QuickViewWorkspace$ShadowDrawable;

    const/high16 v3, 0x1a00

    invoke-direct {v2, v3}, Lcom/android/launcher2/QuickViewWorkspace$ShadowDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v2

    new-array v2, v2, [Lcom/android/launcher2/QuickView$Animate;

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    .line 95
    iput v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 115
    iput-boolean v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDropCheck:Z

    .line 120
    iput-boolean v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mUseVariableSizedPanel:Z

    .line 121
    iput-boolean v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 681
    new-instance v2, Lcom/android/launcher2/QuickViewWorkspace$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/QuickViewWorkspace$1;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mSetHomeListener:Landroid/view/View$OnClickListener;

    .line 1503
    iput-boolean v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z

    .line 1504
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    .line 135
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v1

    .line 136
    .local v1, maxScreenCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v3, Lcom/android/launcher2/QuickView$Animate;

    invoke-direct {v3, p0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v3, v2, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    const v2, 0x7f050011

    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    .line 141
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 143
    const v2, 0x7f050012

    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    .line 144
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    const-wide/16 v3, 0x168

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mUseVariableSizedPanel:Z

    .line 149
    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher2/QuickViewWorkspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z

    return p1
.end method

.method private addScreen()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 894
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 895
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    .line 896
    .local v2, index:I
    if-gez v2, :cond_0

    .line 897
    const/4 v2, 0x0

    .line 899
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 901
    .local v0, add:Landroid/view/View;
    const/4 v3, 0x0

    .line 905
    .local v3, maxScreenCount:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v3

    .line 907
    if-lt v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v5, v6, :cond_1

    .line 925
    :goto_0
    return-void

    .line 909
    :cond_1
    if-ne v1, v3, :cond_2

    .line 910
    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 913
    :cond_2
    invoke-direct {p0, v2, v7}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;

    move-result-object v4

    .line 914
    .local v4, screen:Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 919
    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->addPage()V

    .line 920
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    .line 921
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 922
    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    .line 924
    sget-object v5, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0e00c6

    invoke-virtual {v5, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto :goto_0
.end method

.method private enableWorkspaceScreensCache()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 588
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v1

    .line 590
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 591
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 592
    .local v0, celllayout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 593
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 590
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    .end local v0           #celllayout:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method private getViewLayout(III)V
    .locals 23
    .parameter "count"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 1091
    if-lez p1, :cond_0

    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 1152
    :cond_0
    return-void

    .line 1097
    :cond_1
    move/from16 v0, p1

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    .line 1098
    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    array-length v13, v0

    .line 1099
    .local v13, rows:I
    const/4 v8, 0x0

    .line 1100
    .local v8, maxCols:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v13, :cond_3

    .line 1101
    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    aget v6, v19, v7

    .line 1102
    .local v6, colsOnThisRow:I
    if-le v6, v8, :cond_2

    move v8, v6

    .line 1100
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1110
    .end local v6           #colsOnThisRow:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingLeft()I

    move-result v20

    sub-int v10, v19, v20

    .line 1111
    .local v10, ourWidth:I
    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v18, v10, v19

    .line 1113
    .local v18, usableWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getMeasuredHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingBottom()I

    move-result v20

    sub-int v9, v19, v20

    .line 1114
    .local v9, ourHeight:I
    add-int/lit8 v19, v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v17, v9, v19

    .line 1116
    .local v17, usableHeight:I
    mul-int v15, p3, v13

    .line 1117
    .local v15, totChildHeight:I
    mul-int v16, p2, v8

    .line 1118
    .local v16, totChildWidth:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 1120
    .local v14, scale:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mUseVariableSizedPanel:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1121
    const/high16 v19, 0x3f80

    cmpl-float v19, v14, v19

    if-lez v19, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    .line 1122
    const/high16 v14, 0x3f80

    .line 1128
    :cond_4
    :goto_1
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p2, v0

    .line 1129
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p3, v0

    .line 1132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    move/from16 v19, v0

    add-int v19, v19, p3

    mul-int v19, v19, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    move/from16 v20, v0

    sub-int v15, v19, v20

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingTop()I

    move-result v19

    sub-int v20, v9, v15

    div-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    .line 1134
    .local v12, rowTop:I
    const/4 v3, 0x0

    .line 1135
    .local v3, childCount:I
    const/4 v11, 0x0

    .local v11, row:I
    :goto_2
    if-ge v11, v13, :cond_0

    .line 1136
    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    aget v5, v19, v11

    .line 1137
    .local v5, cols:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v19, v0

    add-int v19, v19, p2

    mul-int v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v20, v0

    sub-int v16, v19, v20

    .line 1138
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingLeft()I

    move-result v19

    sub-int v20, v10, v16

    div-int/lit8 v20, v20, 0x2

    add-int v4, v19, v20

    .line 1139
    .local v4, colLeft:I
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_8

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    if-nez v19, :cond_7

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/Rect;

    add-int v21, v4, p2

    add-int v22, v12, p3

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v4, v12, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v20, v19, v3

    .line 1147
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 1148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v19, v0

    add-int v19, v19, p2

    add-int v4, v4, v19

    .line 1139
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1123
    .end local v3           #childCount:I
    .end local v4           #colLeft:I
    .end local v5           #cols:I
    .end local v11           #row:I
    .end local v12           #rowTop:I
    :cond_5
    const/high16 v19, 0x3fc0

    cmpl-float v19, v14, v19

    if-lez v19, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    .line 1124
    const/high16 v14, 0x3fc0

    goto/16 :goto_1

    .line 1126
    :cond_6
    const/high16 v19, 0x3f80

    cmpl-float v19, v14, v19

    if-lez v19, :cond_4

    const/high16 v14, 0x3f80

    goto/16 :goto_1

    .line 1144
    .restart local v3       #childCount:I
    .restart local v4       #colLeft:I
    .restart local v5       #cols:I
    .restart local v11       #row:I
    .restart local v12       #rowTop:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    add-int v20, v4, p2

    add-int v21, v12, p3

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    .line 1150
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    move/from16 v19, v0

    add-int v19, v19, p3

    add-int v12, v12, v19

    .line 1135
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2
.end method

.method private isDeleteDropTarget(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 861
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    .line 862
    .local v0, dragBar:Lcom/android/launcher2/QuickViewDragBar;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/QuickViewDragBar;->checkOver(II)Z

    move-result v1

    return v1
.end method

.method private static isHome(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 1451
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 1452
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1453
    .local v1, parentHome:Landroid/view/ViewGroup;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1454
    .local v0, home:Landroid/view/View;
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 1455
    check-cast v0, Landroid/widget/Checkable;

    .end local v0           #home:Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    .line 1458
    :cond_0
    return v2
.end method

.method private makeAddBtn()Landroid/view/View;
    .locals 4

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;

    move-result-object v0

    .line 804
    .local v0, v:Landroid/view/View;
    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0024

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0025

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 808
    return-object v0
.end method

.method private makeScreen(IZ)Landroid/view/View;
    .locals 13
    .parameter "index"
    .parameter "isAddBtn"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 729
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 730
    .local v4, context:Landroid/content/Context;
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 731
    .local v7, v:Landroid/widget/FrameLayout;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 732
    .local v6, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 733
    .local v2, buttonParentPaddingRight:I
    const/4 v3, 0x0

    .line 736
    .local v3, buttonParentPaddingTop:I
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 737
    .local v1, buttonParent:Landroid/widget/FrameLayout;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v11, -0x2

    const/16 v12, 0x31

    invoke-direct {v5, v8, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 738
    .local v5, lparams:Landroid/widget/FrameLayout$LayoutParams;
    const v8, 0x7f020167

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 739
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    new-instance v0, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;

    invoke-direct {v0, v4}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;-><init>(Landroid/content/Context;)V

    .line 761
    .local v0, b:Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;
    invoke-virtual {v0, v10, v10, v10, v10}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setPadding(IIII)V

    .line 762
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v8

    if-ne p1, v8, :cond_1

    move v8, v9

    :goto_0
    invoke-virtual {v0, v8}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setChecked(Z)V

    .line 763
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0e0018

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 764
    if-nez p2, :cond_0

    .line 765
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 767
    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mSetHomeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 771
    const v8, 0x7f0a0018

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 772
    const v8, 0x7f0a0019

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 773
    invoke-virtual {v1, v10, v3, v2, v10}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 774
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPageLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v7, p1, v8}, Lcom/android/launcher2/QuickViewWorkspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 775
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v10, v11, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 789
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 791
    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 792
    invoke-virtual {v7, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 793
    invoke-virtual {v7, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    return-object v7

    :cond_1
    move v8, v10

    .line 762
    goto :goto_0
.end method


# virtual methods
.method cancelDeleteView()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 623
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 624
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 626
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    goto :goto_0
.end method

.method public cancelDrag()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 614
    invoke-direct {p0, v0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    .line 615
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->cancelDrag()V

    .line 616
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 617
    return-void
.end method

.method public close()V
    .locals 5

    .prologue
    .line 568
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->close()V

    .line 569
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    .line 570
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 572
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    .line 573
    .local v0, vDeleteDropLayout:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 574
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 577
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->enableWorkspaceScreensCache()V

    .line 579
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setDarkenViewAlpha(F)V

    .line 583
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v2, 0x7f0e005d

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getCurrentPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v4}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    .line 585
    return-void
.end method

.method disableWorkspaceScreensCache()V
    .locals 4

    .prologue
    .line 598
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v1

    .line 600
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 601
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 603
    .local v0, celllayout:Lcom/android/launcher2/CellLayout;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 600
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    .end local v0           #celllayout:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 1156
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/QuickView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v16

    .line 1158
    .local v16, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v8

    .line 1159
    .local v8, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getWidth()I

    move-result v15

    .line 1160
    .local v15, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getHeight()I

    move-result v11

    .line 1162
    .local v11, height:I
    if-eqz v15, :cond_0

    if-nez v11, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    const/high16 v13, 0x3f80

    .line 1166
    .local v13, progress:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v8, :cond_5

    :cond_2
    if-lez v8, :cond_5

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 1168
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1169
    .local v4, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v7

    .line 1170
    .local v7, chilecount:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1171
    .local v6, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1172
    .local v5, childHeight:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v7, v0, :cond_0

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v8, :cond_4

    .line 1175
    :cond_3
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    .line 1177
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v5}, Lcom/android/launcher2/QuickViewWorkspace;->getViewLayout(III)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    .line 1184
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childHeight:I
    .end local v6           #childWidth:I
    .end local v7           #chilecount:I
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1185
    const/4 v13, 0x0

    .line 1186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    .line 1187
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    .line 1192
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setOpenStartRect(I)V

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    .line 1195
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    .line 1196
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1197
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v8, :cond_b

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v17, v12

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1201
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v17, v12

    .line 1197
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1180
    .end local v12           #i:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 1203
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    .line 1205
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 1206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    .line 1212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setCloseEndRect(I)V

    .line 1214
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    .line 1215
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1216
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_3
    if-ge v12, v8, :cond_a

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v17, v12

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1220
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v17, v12

    .line 1216
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1222
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->onQuickViewCloseAnimationStarted()V

    .line 1225
    .end local v12           #i:I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 1226
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_4
    if-ge v12, v8, :cond_d

    .line 1227
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1228
    .restart local v4       #child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v4, v0, :cond_c

    .line 1229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v12}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 1226
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1232
    .end local v4           #child:Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 1233
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->postInvalidate()V

    .line 1291
    .end local v12           #i:I
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 1292
    const/4 v13, 0x0

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 1297
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v14

    .line 1299
    .local v14, vDeleteDropLayout:Landroid/view/View;
    if-eqz v14, :cond_10

    .line 1300
    invoke-virtual {v14, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1303
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v17, v0

    const v18, 0x3e99999a

    mul-float v18, v18, v13

    invoke-interface/range {v17 .. v18}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setDarkenViewAlpha(F)V

    goto/16 :goto_0

    .line 1235
    .end local v14           #vDeleteDropLayout:Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 1237
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    .line 1242
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    move-wide/from16 v19, v0

    sub-long v9, v17, v19

    .line 1244
    .local v9, current:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v17, v9, v17

    if-ltz v17, :cond_19

    .line 1246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->onQuickViewCloseAnimationCompleted()V

    .line 1248
    const/16 v17, 0x8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 1253
    :goto_6
    const/high16 v13, 0x3f80

    .line 1258
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v8, :cond_15

    .line 1259
    :cond_14
    if-lez v8, :cond_15

    .line 1260
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1263
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v13}, Lcom/android/launcher2/AnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-nez v17, :cond_1a

    .line 1265
    const-string v17, "QuickViewWorkspace"

    const-string v18, "Failed to get current rectangles from animation engine"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 1280
    const/high16 v17, 0x3f80

    sub-float v13, v17, v13

    .line 1283
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->postInvalidate()V

    goto/16 :goto_5

    .line 1250
    :cond_18
    const/16 v17, 0x7

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mAnimationState:I

    goto :goto_6

    .line 1255
    :cond_19
    long-to-float v0, v9

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v13, v17, v18

    goto/16 :goto_7

    .line 1268
    :cond_1a
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_8
    if-ge v12, v8, :cond_16

    .line 1270
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1271
    .restart local v4       #child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 1274
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v12}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 1268
    :cond_1b
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 1286
    .end local v4           #child:Landroid/view/View;
    .end local v9           #current:J
    .end local v12           #i:I
    :cond_1c
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_9
    if-ge v12, v8, :cond_e

    .line 1287
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 1286
    add-int/lit8 v12, v12, 0x1

    goto :goto_9
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V
    .locals 32
    .parameter "canvas"
    .parameter "view"
    .parameter "i"

    .prologue
    .line 1310
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v24

    .local v24, viewWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v23

    .line 1311
    .local v23, viewHeight:I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v10, v28, v29

    .local v10, halfViewWidth:F
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v9, v28, v29

    .line 1314
    .local v9, halfViewHeight:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v25, v28, v10

    .line 1315
    .local v25, viewXCenter:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v26, v28, v9

    .line 1318
    .local v26, viewYCenter:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1321
    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/QuickViewWorkspace;->isHome(Landroid/view/View;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 1322
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1327
    .local v7, bgDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_5

    .line 1328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 1329
    sget-object v28, Lcom/android/launcher2/QuickViewWorkspace;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1330
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 1334
    :goto_1
    const v18, 0x3f933333

    .line 1340
    .local v18, scaleFactor:F
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1341
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1342
    neg-float v0, v10

    move/from16 v28, v0

    neg-float v0, v9

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1345
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-int v8, v0

    .line 1346
    .local v8, current:I
    int-to-float v0, v8

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v16, v28, v29

    .line 1347
    .local v16, progress:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    move/from16 v5, v16

    .line 1350
    .local v5, bgAlpha:F
    :goto_3
    const/16 v28, 0x0

    const/high16 v29, 0x3f80

    move/from16 v0, v29

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v29

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1353
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    .line 1356
    const/high16 v5, 0x3f80

    .line 1358
    :cond_0
    const/high16 v28, 0x437f

    mul-float v28, v28, v5

    move/from16 v0, v28

    float-to-int v6, v0

    .line 1361
    .local v6, bgAndShadowAlpha:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getVisibility()I

    move-result v28

    if-nez v28, :cond_1

    .line 1362
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1363
    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1364
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1369
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    .line 1370
    .local v22, tag:Ljava/lang/Object;
    sget-object v28, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_b

    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 1372
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v28, v0

    check-cast v22, Ljava/lang/Integer;

    .end local v22           #tag:Ljava/lang/Object;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-interface/range {v28 .. v29}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v13

    .line 1375
    .local v13, page:Lcom/android/launcher2/CellLayout;
    if-nez v13, :cond_7

    .line 1448
    .end local v13           #page:Lcom/android/launcher2/CellLayout;
    :cond_2
    :goto_4
    return-void

    .line 1324
    .end local v5           #bgAlpha:F
    .end local v6           #bgAndShadowAlpha:I
    .end local v7           #bgDrawable:Landroid/graphics/drawable/Drawable;
    .end local v8           #current:I
    .end local v16           #progress:F
    .end local v18           #scaleFactor:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v7       #bgDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 1332
    :cond_4
    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_1

    .line 1336
    :cond_5
    const/high16 v18, 0x3f80

    .line 1337
    .restart local v18       #scaleFactor:F
    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .line 1347
    .restart local v8       #current:I
    .restart local v16       #progress:F
    :cond_6
    const/high16 v28, 0x3f80

    sub-float v5, v28, v16

    goto/16 :goto_3

    .line 1378
    .restart local v5       #bgAlpha:F
    .restart local v6       #bgAndShadowAlpha:I
    .restart local v13       #page:Lcom/android/launcher2/CellLayout;
    :cond_7
    const/high16 v28, 0x3f80

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 1379
    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FF)V

    .line 1381
    invoke-virtual {v13}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v15

    .local v15, pageWidth:I
    invoke-virtual {v13}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v14

    .local v14, pageHeight:I
    move-object/from16 v28, p2

    .line 1383
    check-cast v28, Landroid/view/ViewGroup;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v12, v28, v5

    .line 1385
    .local v12, p:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v28, v24, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v15

    move/from16 v29, v0

    div-float v19, v28, v29

    .line 1386
    .local v19, scaleH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v28, v23, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v29, v29, v12

    sub-float v28, v28, v29

    int-to-float v0, v14

    move/from16 v29, v0

    div-float v20, v28, v29

    .line 1387
    .local v20, scaleV:F
    cmpl-float v28, v20, v19

    if-lez v28, :cond_9

    move/from16 v17, v19

    .line 1388
    .local v17, scale:F
    :goto_5
    mul-float v17, v17, v18

    .line 1391
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    add-float v28, v28, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v29, v29, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v29, v29, v30

    const/high16 v30, 0x4000

    div-float v29, v29, v30

    add-float v29, v29, v26

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1397
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1398
    neg-int v0, v15

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    neg-int v0, v14

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x4000

    div-float v29, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1400
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/launcher2/CellLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1402
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v28, v0

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    const/16 v21, 0x1

    .line 1411
    .local v21, shouldDrawHome:Z
    :goto_6
    if-eqz v21, :cond_8

    .line 1414
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1418
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1419
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1420
    neg-float v0, v10

    move/from16 v28, v0

    neg-float v0, v9

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1422
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1424
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1435
    .end local v12           #p:F
    .end local v13           #page:Lcom/android/launcher2/CellLayout;
    .end local v14           #pageHeight:I
    .end local v15           #pageWidth:I
    .end local v17           #scale:F
    .end local v19           #scaleH:F
    .end local v20           #scaleV:F
    .end local v21           #shouldDrawHome:Z
    :cond_8
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getVisibility()I

    move-result v28

    if-nez v28, :cond_2

    .line 1436
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1438
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1439
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1440
    neg-float v0, v10

    move/from16 v28, v0

    neg-float v0, v9

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v24

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1446
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    .restart local v12       #p:F
    .restart local v13       #page:Lcom/android/launcher2/CellLayout;
    .restart local v14       #pageHeight:I
    .restart local v15       #pageWidth:I
    .restart local v19       #scaleH:F
    .restart local v20       #scaleV:F
    :cond_9
    move/from16 v17, v20

    .line 1387
    goto/16 :goto_5

    .line 1405
    .restart local v17       #scale:F
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 1427
    .end local v12           #p:F
    .end local v13           #page:Lcom/android/launcher2/CellLayout;
    .end local v14           #pageHeight:I
    .end local v15           #pageWidth:I
    .end local v17           #scale:F
    .end local v19           #scaleH:F
    .end local v20           #scaleV:F
    .restart local v22       #tag:Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v27

    .line 1428
    .local v27, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 1429
    .local v11, height:I
    div-int/lit8 v28, v27, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v10, v28

    div-int/lit8 v29, v11, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v29, v9, v29

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1431
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7
.end method

.method public drawCloseAnimation()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 540
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->drawCloseAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 542
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 543
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 545
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDrag()V

    .line 546
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    .line 547
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->wallpaperHack()V

    .line 548
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 551
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawOpenAnimation()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 535
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 536
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->drawOpenAnimation()V

    .line 537
    return-void
.end method

.method protected drop(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    .line 819
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    if-ne v1, v3, :cond_2

    .line 820
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 821
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 823
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewDragBar;->onDrop()V

    .line 825
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 826
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 827
    iget v1, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->swapScreen(I)V

    .line 829
    iget v1, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 830
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 832
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 836
    .local v0, deleteIndex:I
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1, v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isIncludeItem(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 837
    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDropCheck:Z

    .line 838
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->showDeleteWorkScreen()V

    .line 842
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    .line 843
    const/16 v1, 0x6457

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/QuickViewWorkspace;->performHapticFeedback(II)Z

    .line 848
    .end local v0           #deleteIndex:I
    :cond_0
    :goto_1
    return-void

    .line 840
    .restart local v0       #deleteIndex:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->removeScreen()V

    goto :goto_0

    .line 846
    .end local v0           #deleteIndex:I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/QuickView;->drop(II)V

    goto :goto_1
.end method

.method protected endDrag()V
    .locals 1

    .prologue
    .line 813
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->endDrag()V

    .line 814
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 815
    return-void
.end method

.method public getCheckedIndex()I
    .locals 5

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v2

    .line 456
    .local v2, numPages:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 457
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 458
    .local v3, page:Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 459
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #page:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 460
    .local v0, homeButton:Landroid/view/View;
    instance-of v4, v0, Landroid/widget/CompoundButton;

    if-eqz v4, :cond_0

    .line 461
    check-cast v0, Landroid/widget/CompoundButton;

    .end local v0           #homeButton:Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    .end local v1           #i:I
    :goto_1
    return v1

    .line 456
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    return v0
.end method

.method public getDeletePageIndex()I
    .locals 1

    .prologue
    .line 852
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    return v0
.end method

.method public initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V
    .locals 9
    .parameter "provider"

    .prologue
    const/4 v8, 0x0

    .line 642
    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->init(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPageLP:Landroid/widget/FrameLayout$LayoutParams;

    move-object v4, p1

    .line 644
    check-cast v4, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iput-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    .line 646
    invoke-interface {p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v2

    .line 657
    .local v2, screenCount:I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 659
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f020066

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 660
    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 664
    invoke-static {}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->access$000()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    invoke-virtual {v4, v8, v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 666
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 667
    invoke-direct {p0, v0, v8}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;

    move-result-object v3

    .line 669
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e005d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    .end local v3           #v:Landroid/view/View;
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 679
    :cond_1
    return-void
.end method

.method protected isValidTag(Ljava/lang/Object;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 501
    sget-object v0, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadLayoutParameters()V
    .locals 10

    .prologue
    .line 1573
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1574
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1575
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1577
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    .line 1578
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    .line 1579
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    .line 1581
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->reloadLayoutParameters()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    .line 1582
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 1583
    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1584
    .local v0, child:Landroid/view/View;
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1590
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1582
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1592
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected measureChildViews()V
    .locals 12

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 176
    iget v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWidthMeasureSpec:I

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 177
    .local v7, width:I
    iget v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHeightMeasureSpec:I

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 178
    .local v4, height:I
    invoke-virtual {p0, v7, v4}, Lcom/android/launcher2/QuickViewWorkspace;->setMeasuredDimension(II)V

    .line 180
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 181
    .local v1, childCount:I
    if-nez v1, :cond_1

    .line 197
    :cond_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    .line 184
    .local v6, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v1, v8, v9}, Lcom/android/launcher2/QuickViewWorkspace;->getViewLayout(III)V

    .line 187
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 188
    .local v3, childMeasureWidthSpec:I
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 191
    .local v2, childMeasureHeightSpec:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 192
    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    .line 194
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 191
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimStateOkayForClickEvents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isDeleteWorkScreenPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 525
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    goto :goto_0

    .line 527
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->addScreen()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfig"

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1507
    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1508
    iput-boolean v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z

    .line 1512
    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDropCheck:Z

    if-nez v5, :cond_1

    .line 1513
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1514
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDrag()V

    .line 1516
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchState()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1517
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    .line 1522
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1570
    :goto_1
    return-void

    .line 1519
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->refreshView()V

    goto :goto_0

    .line 1526
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1527
    .local v3, res:Landroid/content/res/Resources;
    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_7

    move v1, v6

    .line 1528
    .local v1, isLandscape:Z
    :goto_2
    const v5, 0x7f0c0068

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1532
    .local v0, barHeight:I
    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTop()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1533
    invoke-virtual {p0, v7, v7, v0, v7}, Lcom/android/launcher2/QuickViewWorkspace;->setPadding(IIII)V

    .line 1539
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v4

    .line 1541
    .local v4, vDeleteDropLayout:Landroid/widget/FrameLayout;
    if-eqz v4, :cond_5

    .line 1542
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1543
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTop()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1544
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1545
    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1546
    const/16 v5, 0x15

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1552
    :goto_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTop()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTextRight()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1553
    if-eqz v1, :cond_a

    move-object v5, v4

    .line 1554
    check-cast v5, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/QuickViewDragBar;->setTextDisplayPositionRight(Z)V

    .line 1558
    :cond_4
    :goto_5
    const v5, 0x7f0200c6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1560
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    if-nez v5, :cond_6

    .line 1561
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    .line 1563
    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/launcher2/QuickViewWorkspace$3;

    invoke-direct {v6, p0}, Lcom/android/launcher2/QuickViewWorkspace$3;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .end local v0           #barHeight:I
    .end local v1           #isLandscape:Z
    .end local v4           #vDeleteDropLayout:Landroid/widget/FrameLayout;
    :cond_7
    move v1, v7

    .line 1527
    goto :goto_2

    .line 1535
    .restart local v0       #barHeight:I
    .restart local v1       #isLandscape:Z
    :cond_8
    invoke-virtual {p0, v7, v0, v7, v7}, Lcom/android/launcher2/QuickViewWorkspace;->setPadding(IIII)V

    goto :goto_3

    .line 1548
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4       #vDeleteDropLayout:Landroid/widget/FrameLayout;
    :cond_9
    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1549
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1550
    const/16 v5, 0x31

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_4

    :cond_a
    move-object v5, v4

    .line 1556
    check-cast v5, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/QuickViewDragBar;->setTextDisplayPositionRight(Z)V

    goto :goto_5
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimating()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 347
    :goto_0
    return v9

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    iput v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 282
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 284
    .local v6, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 347
    :cond_1
    :goto_1
    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-eqz v10, :cond_2

    move v8, v9

    :cond_2
    move v9, v8

    goto :goto_0

    .line 286
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    if-le v10, v9, :cond_3

    .line 287
    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    if-eqz v10, :cond_1

    .line 288
    iput v8, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 290
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float v10, v6, v10

    float-to-int v2, v10

    .line 291
    .local v2, dy:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float v10, v4, v10

    float-to-int v1, v10

    .line 293
    .local v1, dx:I
    mul-int v10, v2, v2

    mul-int v11, v1, v1

    add-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v10, v10

    iget v11, p0, Lcom/android/launcher2/QuickView;->mTouchPointDistance:I

    sub-int v3, v10, v11

    .line 295
    .local v3, pinchDelta:I
    const/16 v10, 0x1e

    if-le v3, v10, :cond_1

    .line 296
    iget v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    invoke-virtual {p0, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, childOnPinch:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v10, v11, :cond_1

    .line 299
    iput-boolean v8, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 300
    iput-boolean v8, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    .line 301
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    goto :goto_0

    .line 309
    .end local v0           #childOnPinch:Landroid/view/View;
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #pinchDelta:I
    :cond_3
    iput-boolean v8, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 310
    iput-boolean v8, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    goto :goto_1

    .line 314
    :sswitch_1
    iput v4, p0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    .line 315
    iput v6, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    goto :goto_1

    .line 319
    :sswitch_2
    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-eqz v10, :cond_4

    .line 320
    iput-boolean v8, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 321
    iput-boolean v8, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    goto :goto_1

    .line 323
    :cond_4
    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->endDrag()V

    goto :goto_1

    .line 329
    :sswitch_3
    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-nez v10, :cond_1

    .line 330
    iput-boolean v9, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 332
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v10, v10

    int-to-float v7, v10

    .line 333
    .local v7, y1:F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    int-to-float v5, v10

    .line 335
    .local v5, x1:F
    float-to-int v10, v4

    float-to-int v11, v6

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v10

    float-to-int v11, v5

    float-to-int v12, v7

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 336
    sub-float v10, v6, v7

    float-to-int v2, v10

    .line 337
    .restart local v2       #dy:I
    sub-float v10, v4, v5

    float-to-int v1, v10

    .line 338
    .restart local v1       #dx:I
    iput-boolean v9, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    .line 339
    mul-int v10, v2, v2

    mul-int v11, v1, v1

    add-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, p0, Lcom/android/launcher2/QuickView;->mTouchPointDistance:I

    .line 340
    float-to-int v10, v4

    float-to-int v11, v6

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v10

    iput v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    goto/16 :goto_1

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isChangingOrientation()Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/launcher2/QuickView;->mEnabledChildAnimation:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_2

    const/4 v5, 0x1

    .line 209
    .local v5, shouldAnimate:Z
    :goto_0
    if-nez p1, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->measureChildViews()V

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->updateParamsIfNeeded(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v3

    .line 219
    .local v3, count:I
    const/4 v6, 0x1

    if-ge v3, v6, :cond_3

    .line 261
    .end local v3           #count:I
    :cond_1
    return-void

    .line 203
    .end local v5           #shouldAnimate:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 221
    .restart local v3       #count:I
    .restart local v5       #shouldAnimate:Z
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v6, v6

    if-eq v6, v3, :cond_5

    .line 222
    :cond_4
    new-array v6, v3, [Landroid/graphics/Rect;

    iput-object v6, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    .line 225
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 227
    .local v2, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 229
    .local v1, childHeight:I
    if-eqz p1, :cond_6

    .line 230
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    .line 232
    :cond_6
    invoke-direct {p0, v3, v2, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getViewLayout(III)V

    .line 234
    const-string v6, "QuickViewWorkspace"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLayout() count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 237
    invoke-virtual {p0, v4}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_9

    .line 240
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v4

    if-nez v6, :cond_7

    .line 241
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aput-object v7, v6, v4

    .line 243
    :cond_7
    iget-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    if-eqz v6, :cond_8

    .line 244
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 246
    :cond_8
    sget-object v6, Lcom/android/launcher2/QuickViewWorkspace;->sHitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 247
    sget-object v6, Lcom/android/launcher2/QuickViewWorkspace;->sHitRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz v5, :cond_a

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    .line 252
    iget-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    invoke-virtual {v6, v0, v7}, Lcom/android/launcher2/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 236
    :cond_9
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 255
    :cond_a
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v4

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 506
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimStateOkayForClickEvents()Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v2

    .line 509
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->startDrag(Landroid/view/View;)V

    .line 511
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->performHapticFeedback(I)Z

    .line 512
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 161
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CellLayoutChildren cannot accept an UNSPECIFIED MeasureSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/QuickView;->onMeasure(II)V

    .line 167
    iput p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWidthMeasureSpec:I

    .line 168
    iput p2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHeightMeasureSpec:I

    .line 169
    return-void
.end method

.method public onPinchOut()Z
    .locals 3

    .prologue
    .line 265
    iget v1, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, childOnPinch:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 267
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->onPinchOut()Z

    .line 269
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 352
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 445
    :goto_0
    return v7

    .line 356
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 357
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 359
    .local v5, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_1
    :goto_1
    move v7, v8

    .line 445
    goto :goto_0

    .line 361
    :pswitch_0
    iget v9, p0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    sub-float/2addr v9, v4

    float-to-int v0, v9

    .line 362
    .local v0, deltaX:I
    iget v9, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    sub-float/2addr v9, v5

    float-to-int v1, v9

    .line 364
    .local v1, deltaY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    if-le v9, v10, :cond_5

    move v6, v8

    .line 366
    .local v6, yMoved:Z
    :goto_2
    if-eqz v6, :cond_2

    iget v9, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v9, :cond_2

    .line 367
    iput v8, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 370
    :cond_2
    iget v9, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-ne v9, v11, :cond_1

    .line 371
    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v9, :cond_3

    .line 372
    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v10, v0

    iget-object v11, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v1

    iget-object v12, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    sub-int/2addr v12, v0

    iget-object v13, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int/2addr v13, v1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 378
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->postInvalidate()V

    .line 380
    :cond_3
    iput v4, p0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    .line 381
    iput v5, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    .line 383
    float-to-int v9, v4

    float-to-int v10, v5

    invoke-direct {p0, v9, v10}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 384
    iget v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    if-eq v7, v8, :cond_4

    .line 386
    sget-object v7, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v9, 0x7f0e0089

    invoke-virtual {v7, v9}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 387
    iget-boolean v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v7, :cond_4

    .line 388
    const/16 v7, 0x5695

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher2/QuickViewWorkspace;->performHapticFeedback(II)Z

    .line 391
    :cond_4
    iput v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    goto :goto_1

    .end local v6           #yMoved:Z
    :cond_5
    move v6, v7

    .line 364
    goto :goto_2

    .line 394
    .restart local v6       #yMoved:Z
    :cond_6
    iget v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    if-ne v9, v8, :cond_7

    .line 396
    iput v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 400
    :cond_7
    float-to-int v9, v4

    float-to-int v10, v5

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v2

    .line 401
    .local v2, index:I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_9

    iget v9, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    if-eq v2, v9, :cond_9

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v9, v10, :cond_9

    move v3, v8

    .line 406
    .local v3, shouldRepositionDraggingView:Z
    :goto_3
    if-eqz v3, :cond_1

    .line 407
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v7, :cond_8

    .line 408
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 409
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v7, v2}, Lcom/android/launcher2/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 410
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-boolean v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v7, :cond_8

    .line 412
    const/16 v7, 0x6458

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher2/QuickViewWorkspace;->performHapticFeedback(II)Z

    .line 416
    :cond_8
    iput v2, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    goto/16 :goto_1

    .end local v3           #shouldRepositionDraggingView:Z
    :cond_9
    move v3, v7

    .line 401
    goto :goto_3

    .line 424
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v2           #index:I
    .end local v6           #yMoved:Z
    :pswitch_1
    iget v7, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-ne v7, v11, :cond_a

    iget v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_a

    .line 425
    float-to-int v7, v4

    float-to-int v9, v5

    invoke-virtual {p0, v7, v9}, Lcom/android/launcher2/QuickViewWorkspace;->drop(II)V

    .line 428
    :cond_a
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    if-eqz v7, :cond_c

    .line 429
    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->postInvalidate()V

    .line 432
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->endDrag()V

    .line 436
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getCheckedIndex()I

    move-result v7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v9

    if-eq v7, v9, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateHomeScreenOnDrag()V

    goto/16 :goto_1

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 555
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->open()V

    .line 556
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 557
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    .line 558
    .local v0, vDeleteDropLayout:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->disableWorkspaceScreensCache()V

    .line 564
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v2, 0x7f0e0023

    invoke-virtual {v1, v2}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 565
    return-void
.end method

.method refreshView()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 635
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 636
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 638
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    .line 639
    return-void
.end method

.method public removeNormalScreen()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1019
    iput-boolean v11, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDropCheck:Z

    .line 1020
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 1022
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1023
    .local v1, count:I
    if-lt v1, v10, :cond_0

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {p0, v9}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    sget-object v12, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v9, v12, :cond_1

    .line 1025
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 1028
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v8

    .line 1029
    .local v8, secretCount:I
    iget v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    add-int v0, v9, v8

    .line 1031
    .local v0, adjustDeleteIndex:I
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9, v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->deletePage(I)V

    .line 1033
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v9

    if-gt v0, v9, :cond_5

    .line 1034
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1035
    .local v5, newHomeIndex:I
    if-ge v5, v8, :cond_2

    .line 1036
    move v5, v8

    .line 1037
    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9, v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setHomeScreenAt(I)V

    .line 1040
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v6

    .line 1043
    .local v6, numPages:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_5

    .line 1044
    invoke-virtual {p0, v4}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1045
    .local v7, page:Landroid/view/View;
    instance-of v9, v7, Landroid/view/ViewGroup;

    if-eqz v9, :cond_3

    move-object v9, v7

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_3

    .line 1046
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7           #page:Landroid/view/View;
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1047
    .local v3, homeButtonContainer:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lt v9, v10, :cond_3

    .line 1048
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1049
    .local v2, homeButton:Landroid/view/View;
    instance-of v9, v2, Landroid/widget/CompoundButton;

    if-eqz v9, :cond_3

    .line 1050
    check-cast v2, Landroid/widget/CompoundButton;

    .end local v2           #homeButton:Landroid/view/View;
    sub-int v9, v5, v8

    if-ne v4, v9, :cond_4

    move v9, v10

    :goto_1
    invoke-virtual {v2, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1043
    .end local v3           #homeButtonContainer:Landroid/view/ViewGroup;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .restart local v3       #homeButtonContainer:Landroid/view/ViewGroup;
    :cond_4
    move v9, v11

    .line 1050
    goto :goto_1

    .line 1057
    .end local v3           #homeButtonContainer:Landroid/view/ViewGroup;
    .end local v4           #i:I
    .end local v5           #newHomeIndex:I
    .end local v6           #numPages:I
    :cond_5
    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    .line 1059
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1060
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 1062
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    .line 1064
    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v9

    iput v9, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 1065
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    .line 1066
    return-void
.end method

.method public removeScreen()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 928
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v8

    if-eq v8, v12, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-nez v8, :cond_1

    .line 929
    :cond_0
    iput-object v13, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 993
    :goto_0
    return-void

    .line 942
    :cond_1
    iput-boolean v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDropCheck:Z

    .line 943
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 945
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 946
    .local v0, count:I
    if-lt v0, v9, :cond_2

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    sget-object v11, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v8, v11, :cond_3

    .line 948
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 951
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iget v11, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-interface {v8, v11}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->deletePage(I)V

    .line 953
    iget v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v11

    if-gt v8, v11, :cond_6

    .line 954
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 955
    .local v5, newHomeIndex:I
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v8, v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setHomeScreenAt(I)V

    .line 958
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v6

    .line 961
    .local v6, numPages:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_6

    .line 962
    invoke-virtual {p0, v4}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 963
    .local v7, page:Landroid/view/View;
    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    move-object v8, v7

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 964
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7           #page:Landroid/view/View;
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 965
    .local v3, homeButtonContainer:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lt v8, v9, :cond_4

    .line 966
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 967
    .local v2, homeButton:Landroid/view/View;
    instance-of v8, v2, Landroid/widget/CompoundButton;

    if-eqz v8, :cond_4

    .line 968
    check-cast v2, Landroid/widget/CompoundButton;

    .end local v2           #homeButton:Landroid/view/View;
    if-ne v4, v5, :cond_5

    move v8, v9

    :goto_2
    invoke-virtual {v2, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 961
    .end local v3           #homeButtonContainer:Landroid/view/ViewGroup;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .restart local v3       #homeButtonContainer:Landroid/view/ViewGroup;
    :cond_5
    move v8, v10

    .line 968
    goto :goto_2

    .line 975
    .end local v3           #homeButtonContainer:Landroid/view/ViewGroup;
    .end local v4           #i:I
    .end local v5           #newHomeIndex:I
    .end local v6           #numPages:I
    :cond_6
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    .line 977
    iput-object v13, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 978
    iput v12, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 980
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    .line 982
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 983
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    .line 986
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 987
    .local v1, handler:Landroid/os/Handler;
    new-instance v8, Lcom/android/launcher2/QuickViewWorkspace$2;

    invoke-direct {v8, p0}, Lcom/android/launcher2/QuickViewWorkspace$2;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    const-wide/16 v9, 0x64

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public removeSecretScreen()V
    .locals 3

    .prologue
    .line 996
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDropCheck:Z

    .line 997
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 999
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 1000
    .local v0, count:I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    .line 1002
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 1005
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-interface {v1, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->deletePage(I)V

    .line 1007
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    .line 1009
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1010
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 1012
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    .line 1014
    iget-object v1, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 1015
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    .line 1016
    return-void
.end method

.method public setDeletePageIndex(I)V
    .locals 1
    .parameter "pageIndex"

    .prologue
    .line 856
    iput p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 857
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 858
    return-void
.end method

.method public setWorkspace(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .parameter "workspace"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 153
    return-void
.end method

.method protected swapScreen(I)V
    .locals 2
    .parameter "toIndex"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    invoke-interface {v0, v1, p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->movePage(II)V

    .line 1076
    iput p1, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 1079
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    .line 1080
    return-void
.end method

.method public updateHomeScreenOnDrag()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 477
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    .line 482
    .local v3, newHomeIndex:I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v4

    .line 485
    .local v4, numPages:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 486
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 487
    .local v5, page:Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 488
    check-cast v5, Landroid/view/ViewGroup;

    .end local v5           #page:Landroid/view/View;
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 489
    .local v1, homeButtonContainer:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lt v6, v7, :cond_0

    .line 490
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 491
    .local v0, homeButton:Landroid/view/View;
    instance-of v6, v0, Landroid/widget/CompoundButton;

    if-eqz v6, :cond_0

    .line 492
    check-cast v0, Landroid/widget/CompoundButton;

    .end local v0           #homeButton:Landroid/view/View;
    if-ne v2, v3, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 485
    .end local v1           #homeButtonContainer:Landroid/view/ViewGroup;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v1       #homeButtonContainer:Landroid/view/ViewGroup;
    :cond_1
    move v6, v8

    .line 492
    goto :goto_1

    .line 497
    .end local v1           #homeButtonContainer:Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method

.method protected updateTags()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 872
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 873
    .local v1, count:I
    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p0, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 874
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 875
    .local v5, lastChildTag:Ljava/lang/Object;
    sget-object v10, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-ne v5, v10, :cond_1

    move v6, v8

    .line 876
    .local v6, lastPageIsAddButton:Z
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v10

    if-ne v10, v1, :cond_2

    if-nez v6, :cond_2

    move v2, v1

    .line 877
    .local v2, finalCount:I
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 878
    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 879
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 880
    .local v7, tag:Ljava/lang/Object;
    sget-object v10, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v7, v10, :cond_0

    .line 884
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 885
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0e005d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    add-int/lit8 v12, v3, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 877
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #child:Landroid/view/View;
    .end local v2           #finalCount:I
    .end local v3           #i:I
    .end local v6           #lastPageIsAddButton:Z
    .end local v7           #tag:Ljava/lang/Object;
    :cond_1
    move v6, v9

    .line 875
    goto :goto_0

    .line 876
    .restart local v6       #lastPageIsAddButton:Z
    :cond_2
    add-int/lit8 v2, v1, -0x1

    goto :goto_1

    .line 891
    .restart local v2       #finalCount:I
    .restart local v3       #i:I
    :cond_3
    return-void
.end method
