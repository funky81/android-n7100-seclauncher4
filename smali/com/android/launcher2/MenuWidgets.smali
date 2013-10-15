.class public Lcom/android/launcher2/MenuWidgets;
.super Lcom/android/launcher2/PagedViewWithDraggableItems;
.source "MenuWidgets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuWidgets$WidgetComparator;,
        Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateObj;,
        Lcom/android/launcher2/MenuWidgets$WidgetState;,
        Lcom/android/launcher2/MenuWidgets$Filter;,
        Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;,
        Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;,
        Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final MW_DEBUG:Z = false

.field private static final PAGE_BG_ALPHA_VALUE:I = 0x0

.field private static final PAGE_SLEEP_DELAY:I = 0x96

.field private static final PAGE_SLEEP_DELAY_FIRST:I = 0xc8

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuWidgets"

.field private static final TRANSITION_MAX_ROTATION:F = 16.0f

.field private static final TRANSITION_PIVOT:F = 0.5f

.field private static final UPDATE_PACKAGES_STR:Ljava/lang/String; = "packagesChanged"

.field private static final WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

.field private static mSecretItemOffset:I


# instance fields
.field private mCurrentOrientation:I

.field private mDisplayedWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mDragInProgress:Z

.field private mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

.field private mHasUninstallableWidgets:Z

.field private final mHelpWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidgetListProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListenerAttached:Z

.field private mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

.field private mNumSecretWidgetPages:I

.field private mNumWidgetPages:I

.field private mPendingUpdatePackages:Z

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field private mRequestedOrientation:I

.field private final mRunningTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveInstanceStateItemIndex:I

.field private mSearchString:Ljava/lang/String;

.field private mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

.field private mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

.field private mToast:Landroid/widget/Toast;

.field private final mWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidgetListProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    .line 72
    new-instance v0, Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetComparator;-><init>(Lcom/android/launcher2/MenuWidgets$1;)V

    sput-object v0, Lcom/android/launcher2/MenuWidgets;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    .line 126
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/MenuWidgets;->mSecretItemOffset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    .line 109
    iput-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    .line 110
    const-string v1, ""

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    .line 117
    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    .line 118
    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    .line 355
    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    .line 1187
    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    .line 1188
    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    .line 1189
    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    .line 1190
    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    .line 130
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    .line 132
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/List;)V

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    .line 135
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0c008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    .line 142
    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    .line 144
    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->setDragSlopeThreshold(F)V

    .line 146
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/launcher2/AvailableWidgetListProvider;

    new-instance v2, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetProviders:Ljava/util/List;

    .line 151
    new-array v1, v6, [Lcom/android/launcher2/AvailableWidgetListProvider;

    new-instance v2, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mHelpWidgetProviders:Ljava/util/List;

    .line 156
    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuWidgets;->setSaveEnabled(Z)V

    .line 158
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    .line 159
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/MenuWidgets;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->clickNotAllowed(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/HomePendingItem;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/MenuWidgets;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/launcher2/MenuWidgets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getDesiredChildPageWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuStateAnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/launcher2/MenuWidgets;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->setDragInProgress(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuWidgets;Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/MenuWidgets;->loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/MenuWidgets;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/MenuWidgets;Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/MenuWidgets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/MenuWidgets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/MenuWidgets;->prepareLoadWidgetPreviewsTask(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V

    return-void
.end method

.method private beginDraggingWidget(Lcom/android/launcher2/PagedViewWidget;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 455
    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomePendingItem;

    .line 456
    .local v0, createHomeItem:Lcom/android/launcher2/HomePendingItem;
    iget v5, p1, Lcom/android/launcher2/PagedViewWidget;->spanX:I

    iput v5, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 457
    iget v5, p1, Lcom/android/launcher2/PagedViewWidget;->spanY:I

    iput v5, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 459
    const v5, 0x7f07001e

    invoke-virtual {p1, v5}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, dragView:Landroid/view/View;
    move-object v5, v2

    .line 460
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 461
    .local v1, dragDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 483
    .end local v1           #dragDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 468
    .restart local v1       #dragDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 469
    new-instance v5, Lcom/android/launcher2/ShadowBuilder;

    check-cast v1, Lcom/android/launcher2/FastBitmapDrawable;

    .end local v1           #dragDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v5}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v3

    .line 471
    .local v3, ret:Z
    if-eqz v3, :cond_2

    .line 472
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, v11, v10}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    .line 473
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    const-wide/16 v6, 0x23

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 476
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    .line 477
    .local v4, ws:Lcom/android/launcher2/Workspace;
    sget-object v5, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v7, 0x7f0e005d

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    .end local v4           #ws:Lcom/android/launcher2/Workspace;
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuWidgets;->clickNotAllowed(Landroid/view/View;)V

    goto :goto_0
.end method

.method private cancelAllTasks(Ljava/lang/String;)V
    .locals 4
    .parameter "who"

    .prologue
    .line 520
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 521
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;

    .line 523
    .local v2, task:Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->requestCancel(Z)Z

    move-result v1

    .line 527
    .local v1, res:Z
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 529
    .end local v1           #res:Z
    .end local v2           #task:Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    :cond_0
    return-void
.end method

.method private changeOrientationIfRequired(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuView;->getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v0

    .line 1919
    .local v0, qv:Lcom/android/launcher2/QuickViewMainMenu;
    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    iget v3, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    .line 1947
    :cond_0
    :goto_0
    return-void

    .line 1919
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1924
    :cond_2
    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    iput v2, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    .line 1925
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1928
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->handleScrollOnOrientationChange()V

    .line 1929
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1930
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f0c0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    .line 1931
    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 1932
    const v2, 0x7f0a0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 1933
    const v2, 0x7f0c0091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    .line 1934
    const v2, 0x7f0c0092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    .line 1935
    const v2, 0x7f0c0093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    .line 1936
    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPagePaddingBottom:I

    .line 1937
    const v2, 0x7f0c0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPagePaddingLeft:I

    .line 1938
    const v2, 0x7f0c0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPagePaddingRight:I

    .line 1940
    const v2, 0x7f0c008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0c008d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/MenuWidgets;->updateIndicator(II)V

    .line 1942
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->syncPages()V

    .line 1943
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageLayout()I

    .line 1944
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->updateQuickViewMainMenu()V

    .line 1945
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuWidgets;->refreshWidgetStateModel(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 1946
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->requestLayout()V

    goto/16 :goto_0
.end method

.method private clickNotAllowed(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const v4, 0x7f0e0004

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1618
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v3, :cond_0

    .line 1619
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_1

    .line 1620
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    .line 1625
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1629
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c009d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v1, v3

    .line 1630
    .local v1, offsetY:F
    const v3, 0x7f07001e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1631
    .local v2, p:Landroid/view/View;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1632
    .local v0, bounce:Landroid/animation/AnimatorSet;
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    aput v1, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1639
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1640
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1641
    return-void

    .line 1623
    .end local v0           #bounce:Landroid/animation/AnimatorSet;
    .end local v1           #offsetY:F
    .end local v2           #p:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private getDesiredChildPageHeight()I
    .locals 3

    .prologue
    .line 248
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredChildPageWidth()I
    .locals 3

    .prologue
    .line 244
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .locals 7

    .prologue
    .line 167
    const/4 v2, -0x1

    .line 168
    .local v2, i:I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v1

    .line 170
    .local v1, currentPage:I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewGridLayout;

    .line 171
    .local v3, layout:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v0

    .line 172
    .local v0, childCount:I
    if-lez v0, :cond_0

    .line 173
    iget v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v4, v5, v6

    .line 174
    .local v4, numItemsPerPage:I
    mul-int v5, v1, v4

    div-int/lit8 v6, v0, 0x2

    add-int v2, v5, v6

    .line 177
    .end local v0           #childCount:I
    .end local v1           #currentPage:I
    .end local v3           #layout:Lcom/android/launcher2/PagedViewGridLayout;
    .end local v4           #numItemsPerPage:I
    :cond_0
    return v2
.end method

.method private getSleepForPage(I)I
    .locals 4
    .parameter "page"

    .prologue
    const/4 v2, 0x0

    .line 551
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isLoopingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v1

    sub-int p1, v1, p1

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 555
    .local v0, pageDiff:I
    mul-int/lit16 v3, v0, 0x96

    if-lez v0, :cond_1

    const/16 v1, 0xc8

    :goto_0
    add-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private getThreadPriorityForPage(I)I
    .locals 3
    .parameter "page"

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 538
    .local v0, pageDiff:I
    if-gtz v0, :cond_1

    .line 540
    const/4 v1, -0x1

    .line 546
    :cond_0
    :goto_0
    return v1

    .line 541
    :cond_1
    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_0
.end method

.method private isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z
    .locals 2
    .parameter "layout"
    .parameter "page"

    .prologue
    .line 787
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewGridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    .line 791
    .local v0, pageValid:Z
    :goto_0
    return v0

    .line 787
    .end local v0           #pageValid:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1607
    iget-boolean v0, p1, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 8
    .parameter "who"
    .parameter "task"
    .parameter "data"

    .prologue
    .line 804
    if-eqz p3, :cond_0

    iget-object v6, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    iget v7, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    invoke-direct {p0, v6, v7}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 834
    :cond_0
    return-void

    .line 811
    :cond_1
    if-eqz p2, :cond_2

    .line 813
    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 817
    :cond_2
    iget-object v4, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 818
    .local v4, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iget v2, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellWidth:I

    .line 819
    .local v2, cellWidth:I
    iget v1, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellHeight:I

    .line 820
    .local v1, cellHeight:I
    iget-object v6, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .line 821
    .local v0, availableWidget:Lcom/android/launcher2/AvailableWidget;
    if-eqz p2, :cond_3

    .line 823
    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->wasCancelRequested()Z

    move-result v6

    if-nez v6, :cond_0

    .line 826
    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 828
    :cond_3
    invoke-interface {v0, v2, v1}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 829
    .local v5, preview:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 13
    .parameter "who"
    .parameter "data"

    .prologue
    .line 845
    if-eqz p2, :cond_0

    .line 846
    iget-object v11, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    iget v12, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    invoke-direct {p0, v11, v12}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget v7, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    .line 855
    .local v7, page:I
    iget v11, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v12, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int/2addr v11, v12

    mul-int v4, v7, v11

    .line 856
    .local v4, keyOffset:I
    iget-object v6, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    .line 858
    .local v6, layout:Lcom/android/launcher2/PagedViewGridLayout;
    if-eqz v6, :cond_0

    .line 860
    iget-object v11, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    .line 861
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 862
    invoke-virtual {v6, v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/PagedViewWidget;

    .line 863
    .local v10, widget:Lcom/android/launcher2/PagedViewWidget;
    if-eqz v10, :cond_3

    .line 864
    iget-object v11, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 865
    .local v8, preview:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_3

    .line 866
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget v12, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellWidth:I

    if-ge v11, v12, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    iget v12, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellHeight:I

    if-lt v11, v12, :cond_4

    :cond_2
    const/4 v9, 0x1

    .line 870
    .local v9, scale:Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v11, v12, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v11

    if-ne v7, v11, :cond_5

    iget-object v11, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    add-int v12, v2, v4

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eq v11, v8, :cond_5

    const/4 v0, 0x1

    .line 873
    .local v0, animate:Z
    :goto_3
    iget-object v11, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    add-int v12, v2, v4

    invoke-virtual {v11, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 878
    new-instance v11, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v11, v8}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v10, v11, v2, v9, v0}, Lcom/android/launcher2/PagedViewWidget;->applyPreview(Lcom/android/launcher2/FastBitmapDrawable;IZZ)V

    .line 861
    .end local v0           #animate:Z
    .end local v8           #preview:Landroid/graphics/Bitmap;
    .end local v9           #scale:Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 866
    .restart local v8       #preview:Landroid/graphics/Bitmap;
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 870
    .restart local v9       #scale:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 884
    .end local v8           #preview:Landroid/graphics/Bitmap;
    .end local v9           #scale:Z
    .end local v10           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_6
    iget v11, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v12, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v5, v11, v12

    .line 885
    .local v5, last:I
    move v3, v2

    .local v3, j:I
    :goto_4
    if-ge v3, v5, :cond_7

    .line 886
    iget-object v11, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    add-int v12, v3, v4

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->remove(I)V

    .line 885
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 888
    :cond_7
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->onWidgetLoadPreviewComplete()V

    goto :goto_0
.end method

.method private onWidgetLoadPreviewComplete()V
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->refreshWidgetStateView()V

    .line 784
    return-void
.end method

.method private prepareLoadWidgetPreviewsTask(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V
    .locals 13
    .parameter "pl"
    .parameter "page"
    .parameter
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "cellCountX"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/PagedViewGridLayout;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 563
    .local p3, widgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 634
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 570
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v8

    .line 571
    .local v8, currentPage:I
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 572
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;

    .line 573
    .local v11, task:Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    iget v12, v11, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->page:I

    .line 574
    .local v12, taskPage:I
    if-eq v12, p2, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuWidgets;->getAssociatedLowerPageBound(I)I

    move-result v1

    if-lt v12, v1, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuWidgets;->getAssociatedUpperPageBound(I)I

    move-result v1

    if-le v12, v1, :cond_2

    .line 577
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->requestCancel(Z)Z

    .line 578
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 583
    :cond_2
    invoke-direct {p0, v12}, Lcom/android/launcher2/MenuWidgets;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_1

    .line 588
    .end local v11           #task:Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    .end local v12           #taskPage:I
    :cond_3
    new-instance v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    new-instance v6, Lcom/android/launcher2/MenuWidgets$3;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuWidgets$3;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    new-instance v7, Lcom/android/launcher2/MenuWidgets$4;

    invoke-direct {v7, p0}, Lcom/android/launcher2/MenuWidgets$4;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;-><init>(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;IILcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;)V

    .line 627
    .local v0, pageData:Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;
    new-instance v10, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;

    invoke-direct {v10, p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;-><init>(I)V

    .line 628
    .local v10, t:Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    invoke-direct {p0, p2}, Lcom/android/launcher2/MenuWidgets;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->setThreadPriority(I)V

    .line 629
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v10, v1, v2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 633
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setDisplayedWidgets(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, displayedWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    .line 205
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    .line 206
    .local v0, hadUninstallable:Z
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    .line 207
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AvailableWidget;

    .line 208
    .local v2, widget:Lcom/android/launcher2/AvailableWidget;
    invoke-interface {v2}, Lcom/android/launcher2/AvailableWidget;->canUninstall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    .line 213
    .end local v2           #widget:Lcom/android/launcher2/AvailableWidget;
    :cond_1
    iget-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    if-eq v3, v0, :cond_2

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->menuWidgetsUpdated(Z)V

    .line 216
    :cond_2
    return-void
.end method

.method private setDragInProgress(Z)V
    .locals 1
    .parameter "dragInProgress"

    .prologue
    .line 1669
    iput-boolean p1, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    .line 1670
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    if-eqz v0, :cond_0

    .line 1671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    .line 1672
    const-string v0, "packagesChanged"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 1674
    :cond_0
    return-void
.end method

.method private syncWidgetPageItems(IZ)V
    .locals 25
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 637
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v17, v4, v6

    .line 638
    .local v17, numItemsPerPage:I
    const/16 v20, 0x0

    .local v20, secretWidgetCount:I
    const/16 v19, 0x0

    .line 639
    .local v19, secretPageCount:I
    const/16 v18, 0x0

    .local v18, offset:I
    const/4 v11, 0x0

    .line 640
    .local v11, end:I
    const/4 v13, 0x0

    .line 641
    .local v13, isSecretPage:Z
    const/4 v7, 0x0

    .line 678
    .local v7, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    mul-int v18, p1, v17

    .line 679
    add-int v4, v18, v17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 680
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/MenuWidgets;->mNumSecretWidgetPages:I

    .line 682
    move/from16 v0, v18

    if-le v0, v11, :cond_0

    .line 745
    :goto_0
    return-void

    .line 683
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v4, v0, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 690
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewGridLayout;

    .line 691
    .local v5, layout:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/PagedViewGridLayout;->removeAllViews()V

    .line 692
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_5

    .line 693
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/AvailableWidget;

    .line 695
    .local v9, availableWidget:Lcom/android/launcher2/AvailableWidget;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030004

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/PagedViewWidget;

    .line 700
    .local v22, widget:Lcom/android/launcher2/PagedViewWidget;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 701
    invoke-interface {v9}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    .line 705
    :goto_2
    const/4 v4, 0x2

    new-array v10, v4, [I

    .line 706
    .local v10, cellSpan:[I
    invoke-interface {v9, v10}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    .line 707
    const/4 v4, 0x0

    aget v4, v10, v4

    const/4 v6, 0x1

    aget v6, v10, v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    .line 708
    invoke-interface {v9}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 710
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 712
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 715
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int v14, v12, v4

    .line 716
    .local v14, ix:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int v15, v12, v4

    .line 717
    .local v15, iy:I
    new-instance v16, Landroid/widget/GridLayout$LayoutParams;

    sget-object v4, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    invoke-static {v15, v4}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v4

    sget-object v6, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    invoke-static {v14, v6}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v6}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 720
    .local v16, lp:Landroid/widget/GridLayout$LayoutParams;
    const/16 v4, 0x33

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 721
    if-lez v14, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    :goto_3
    move-object/from16 v0, v16

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 722
    if-lez v15, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    :goto_4
    move-object/from16 v0, v16

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 723
    sget-boolean v4, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    if-eqz v4, :cond_1

    const-string v4, "Launcher.MenuWidgets"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "; row: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", col: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", lm: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", tm: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_1
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 703
    .end local v10           #cellSpan:[I
    .end local v14           #ix:I
    .end local v15           #iy:I
    .end local v16           #lp:Landroid/widget/GridLayout$LayoutParams;
    :cond_2
    invoke-interface {v9}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Lcom/android/launcher2/PagedViewWidget;->applyHighLightLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 721
    .restart local v10       #cellSpan:[I
    .restart local v14       #ix:I
    .restart local v15       #iy:I
    .restart local v16       #lp:Landroid/widget/GridLayout$LayoutParams;
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 722
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 732
    .end local v9           #availableWidget:Lcom/android/launcher2/AvailableWidget;
    .end local v10           #cellSpan:[I
    .end local v14           #ix:I
    .end local v15           #iy:I
    .end local v16           #lp:Landroid/widget/GridLayout$LayoutParams;
    .end local v22           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    invoke-virtual {v5, v4}, Lcom/android/launcher2/PagedViewGridLayout;->setColumnCount(I)V

    .line 734
    new-instance v3, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;

    move-object/from16 v4, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;Z)V

    .line 735
    .local v3, blr:Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_6

    .line 739
    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->run()V

    goto/16 :goto_0

    .line 741
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getSleepForPage(I)I

    move-result v21

    .line 742
    .local v21, sleepMs:I
    sget-boolean v4, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    if-eqz v4, :cond_7

    const-string v4, "Launcher.MenuWidgets"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Running runnable "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " after "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " page "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " items "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_7
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/launcher2/MenuWidgets;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private syncWidgetRotation(I)V
    .locals 28
    .parameter "page"

    .prologue
    .line 1836
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 1837
    .local v24, r:Landroid/content/res/Resources;
    const v4, 0x7f0c008f

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 1838
    .local v27, widgetWidth:I
    const v4, 0x7f0c0090

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 1840
    .local v26, widgetHeight:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v20, v4, v6

    .line 1843
    .local v20, numItemsPerPage:I
    mul-int v21, p1, v20

    .line 1844
    .local v21, offset:I
    add-int v4, v21, v20

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1845
    .local v12, end:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v4, v0, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 1848
    .local v5, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1850
    .local v17, layout:Lcom/android/launcher2/PagedViewGridLayout;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1852
    .local v14, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v13, v4, :cond_3

    .line 1853
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AvailableWidget;

    .line 1855
    .local v10, availableWidget:Lcom/android/launcher2/AvailableWidget;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/PagedViewWidget;

    .line 1857
    .local v25, widget:Lcom/android/launcher2/PagedViewWidget;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1858
    invoke-interface {v10}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    .line 1864
    :goto_1
    const/4 v4, 0x2

    new-array v11, v4, [I

    .line 1865
    .local v11, cellSpan:[I
    invoke-interface {v10, v11}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    .line 1866
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v6, 0x1

    aget v6, v11, v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v6}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    .line 1867
    invoke-interface {v10}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 1869
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1870
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1871
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1873
    const v4, 0x7f07001e

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 1874
    .local v22, preview:Landroid/widget/ImageView;
    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 1875
    .local v18, linear:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 1876
    .local v23, previewParam:Landroid/view/ViewGroup$LayoutParams;
    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1877
    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1878
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1881
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int v15, v13, v4

    .line 1882
    .local v15, ix:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int v16, v13, v4

    .line 1883
    .local v16, iy:I
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/PagedViewWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/GridLayout$LayoutParams;

    .line 1884
    .local v19, lp:Landroid/widget/GridLayout$LayoutParams;
    if-lez v15, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    :goto_2
    move-object/from16 v0, v19

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1885
    if-lez v16, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    :goto_3
    move-object/from16 v0, v19

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1886
    const/high16 v4, -0x8000

    invoke-static {v4}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1887
    const/high16 v4, -0x8000

    invoke-static {v4}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1888
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1890
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    invoke-interface {v10, v4, v6}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1852
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1860
    .end local v11           #cellSpan:[I
    .end local v15           #ix:I
    .end local v16           #iy:I
    .end local v18           #linear:Landroid/view/View;
    .end local v19           #lp:Landroid/widget/GridLayout$LayoutParams;
    .end local v22           #preview:Landroid/widget/ImageView;
    .end local v23           #previewParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-interface {v10}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v6}, Lcom/android/launcher2/PagedViewWidget;->applyHighLightLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1884
    .restart local v11       #cellSpan:[I
    .restart local v15       #ix:I
    .restart local v16       #iy:I
    .restart local v18       #linear:Landroid/view/View;
    .restart local v19       #lp:Landroid/widget/GridLayout$LayoutParams;
    .restart local v22       #preview:Landroid/widget/ImageView;
    .restart local v23       #previewParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 1885
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 1892
    .end local v10           #availableWidget:Lcom/android/launcher2/AvailableWidget;
    .end local v11           #cellSpan:[I
    .end local v15           #ix:I
    .end local v16           #iy:I
    .end local v18           #linear:Landroid/view/View;
    .end local v19           #lp:Landroid/widget/GridLayout$LayoutParams;
    .end local v22           #preview:Landroid/widget/ImageView;
    .end local v23           #previewParam:Landroid/view/ViewGroup$LayoutParams;
    .end local v25           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewGridLayout;->setColumnCount(I)V

    .line 1894
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1895
    .local v3, pl:Lcom/android/launcher2/PagedViewGridLayout;
    new-instance v2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;-><init>(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;IILcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;)V

    .line 1897
    .local v2, data:Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;
    iput-object v14, v2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 1898
    const-string v4, "rotation"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/launcher2/MenuWidgets;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    .line 1899
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1900
    return-void
.end method

.method private testDataReady()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePageCounts()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    .line 234
    return-void
.end method

.method private updatePageLayout()I
    .locals 6

    .prologue
    .line 1736
    const/4 v3, 0x0

    .line 1738
    .local v3, updatePageCount:I
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v4, :cond_2

    .line 1740
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1741
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1744
    const-string v4, "rotation"

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    .line 1745
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updateWidgetGridChildCount()I

    move-result v3

    .line 1746
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->updateDirtyPage()V

    .line 1749
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v2

    .line 1750
    .local v2, pages:I
    if-lez v2, :cond_2

    .line 1751
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v0

    .line 1752
    .local v0, currentPage:I
    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1753
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->setCurrentPage(I)V

    .line 1754
    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuWidgets;->syncWidgetRotation(I)V

    .line 1755
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1756
    if-eq v1, v0, :cond_0

    .line 1757
    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->syncWidgetRotation(I)V

    .line 1755
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1759
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->requestLayout()V

    .line 1762
    .end local v0           #currentPage:I
    .end local v1           #i:I
    .end local v2           #pages:I
    :cond_2
    return v3
.end method

.method private updateWidgetGridChildCount()I
    .locals 20

    .prologue
    .line 1766
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    move/from16 v18, v0

    mul-int v12, v17, v18

    .line 1767
    .local v12, numItemsPerPage:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v16

    .line 1768
    .local v16, widgetCount:I
    rem-int v9, v16, v12

    .line 1769
    .local v9, lastPageItemCount:I
    div-int v18, v16, v12

    if-nez v9, :cond_0

    const/16 v17, 0x0

    :goto_0
    add-int v13, v18, v17

    .line 1770
    .local v13, pageCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v4

    .line 1771
    .local v4, childCount:I
    const/4 v14, 0x0

    .line 1774
    .local v14, pageDiff:I
    sub-int v6, v13, v4

    .line 1775
    .local v6, diff:I
    move v14, v6

    .line 1776
    :goto_1
    if-eqz v6, :cond_2

    .line 1777
    if-lez v6, :cond_1

    .line 1778
    new-instance v10, Lcom/android/launcher2/PagedViewGridLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v10, v0, v1, v2}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 1779
    .local v10, layout:Lcom/android/launcher2/PagedViewGridLayout;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/android/launcher2/PagedViewGridLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1780
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 1781
    .local v11, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v11}, Lcom/android/launcher2/MenuWidgets;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1782
    add-int/lit8 v6, v6, -0x1

    .line 1783
    goto :goto_1

    .line 1769
    .end local v4           #childCount:I
    .end local v6           #diff:I
    .end local v10           #layout:Lcom/android/launcher2/PagedViewGridLayout;
    .end local v11           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v13           #pageCount:I
    .end local v14           #pageDiff:I
    :cond_0
    const/16 v17, 0x1

    goto :goto_0

    .line 1784
    .restart local v4       #childCount:I
    .restart local v6       #diff:I
    .restart local v13       #pageCount:I
    .restart local v14       #pageDiff:I
    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->removeViewAt(I)V

    .line 1785
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1789
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v4

    .line 1790
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v18, v4, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1791
    .local v5, currentPage:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/MenuWidgets;->setCurrentPage(I)V

    .line 1793
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v4, :cond_8

    .line 1794
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1797
    .local v3, child:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v8

    .line 1798
    .local v8, itemCount:I
    add-int/lit8 v17, v4, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_4

    .line 1800
    sub-int v6, v12, v8

    .line 1802
    :goto_3
    if-eqz v6, :cond_7

    .line 1803
    if-lez v6, :cond_3

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030004

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PagedViewWidget;

    .line 1806
    .local v15, widget:Lcom/android/launcher2/PagedViewWidget;
    invoke-virtual {v3, v15}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;)V

    .line 1807
    add-int/lit8 v6, v6, -0x1

    .line 1808
    goto :goto_3

    .line 1809
    .end local v15           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedViewGridLayout;->removeViewAt(I)V

    .line 1810
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1815
    :cond_4
    if-nez v9, :cond_5

    sub-int v6, v12, v8

    .line 1817
    :goto_4
    if-eqz v6, :cond_7

    .line 1818
    if-lez v6, :cond_6

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030004

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PagedViewWidget;

    .line 1821
    .restart local v15       #widget:Lcom/android/launcher2/PagedViewWidget;
    invoke-virtual {v3, v15}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;)V

    .line 1822
    add-int/lit8 v6, v6, -0x1

    .line 1823
    goto :goto_4

    .line 1815
    .end local v15           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_5
    sub-int v6, v9, v8

    goto :goto_4

    .line 1824
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedViewGridLayout;->removeViewAt(I)V

    .line 1825
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1793
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1832
    .end local v3           #child:Lcom/android/launcher2/PagedViewGridLayout;
    .end local v8           #itemCount:I
    :cond_8
    return v14
.end method


# virtual methods
.method protected beginDragging(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    .line 490
    const-string v0, "Launcher.MenuWidgets"

    const-string v1, "This widget state is Uninstall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v0, 0x0

    .line 497
    .end local p1
    :goto_0
    return v0

    .line 494
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_1

    .line 495
    check-cast p1, Lcom/android/launcher2/PagedViewWidget;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->beginDraggingWidget(Lcom/android/launcher2/PagedViewWidget;)V

    .line 497
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public changeToWidgetStateNormal()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 428
    return-void
.end method

.method cleanupCache(Ljava/lang/String;)V
    .locals 3
    .parameter "who"

    .prologue
    .line 346
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AvailableWidget;

    .line 347
    .local v1, w:Lcom/android/launcher2/AvailableWidget;
    if-eqz v1, :cond_0

    .line 348
    invoke-interface {v1}, Lcom/android/launcher2/AvailableWidget;->cleanupCache()V

    goto :goto_0

    .line 351
    .end local v1           #w:Lcom/android/launcher2/AvailableWidget;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 352
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 353
    return-void
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 451
    return-void
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 1
    .parameter "page"

    .prologue
    .line 996
    const/4 v0, 0x0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 1
    .parameter "page"

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1006
    const v0, 0x7f0e0060

    .line 1008
    .local v0, stringId:I
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getComingPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPageCacheSize()I
    .locals 1

    .prologue
    .line 1962
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v0

    return v0
.end method

.method getSaveInstanceStateIndex()I
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    .line 185
    :cond_0
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    return v0
.end method

.method public getSecretWidgetCount()I
    .locals 4

    .prologue
    .line 1980
    const/4 v0, 0x0

    .line 1981
    .local v0, count:I
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AvailableWidget;

    .line 1982
    .local v2, widget:Lcom/android/launcher2/AvailableWidget;
    invoke-interface {v2}, Lcom/android/launcher2/AvailableWidget;->isSecret()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1983
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1985
    .end local v2           #widget:Lcom/android/launcher2/AvailableWidget;
    :cond_1
    return v0
.end method

.method public getSecretWidgetPageCount()I
    .locals 1

    .prologue
    .line 1989
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mNumSecretWidgetPages:I

    return v0
.end method

.method public getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    return-object v0
.end method

.method getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 2

    .prologue
    .line 1556
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    .line 1557
    .local v0, widgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleWidgetStateChange(Lcom/android/launcher2/MenuWidgets$WidgetState;Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 4
    .parameter "newState"
    .parameter "oldState"

    .prologue
    .line 1561
    sget-boolean v1, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v2, "Launcher.MenuWidgets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State change from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    .line 1564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1565
    .local v0, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p2, :cond_1

    .line 1566
    invoke-virtual {p2, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V

    .line 1567
    :cond_1
    if-eqz p1, :cond_2

    .line 1568
    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V

    .line 1569
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    .line 1570
    return-void

    .line 1561
    .end local v0           #animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    :cond_3
    const-string v1, "UNKNOWN"

    goto :goto_0

    :cond_4
    const-string v1, "UNKNOWN"

    goto :goto_1
.end method

.method public hasUninstallableWidgets()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    return v0
.end method

.method public initSecretItemOffset()V
    .locals 1

    .prologue
    .line 1993
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/MenuWidgets;->mSecretItemOffset:I

    .line 1994
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1652
    const-string v1, "Launcher.MenuWidgets"

    const-string v2, "MenuWidgets::onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onAttachedToWindow()V

    .line 1654
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1655
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1656
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 435
    instance-of v2, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v2, :cond_0

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 437
    .local v0, tag:Ljava/lang/Object;
    instance-of v2, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    .line 439
    .local v1, widgetStateObj:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    if-eqz v1, :cond_0

    .line 440
    check-cast v0, Lcom/android/launcher2/HomePendingItem;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v1, v0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V

    .line 443
    .end local v1           #widgetStateObj:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1913
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    .line 1914
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    .line 1915
    return-void
.end method

.method protected onDataReady(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageCounts()V

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->invalidatePageData(I)V

    .line 241
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 502
    const-string v1, "Launcher.MenuWidgets"

    const-string v2, "MenuWidgets::onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onDetachedFromWindow()V

    .line 504
    const-string v1, "onDetachedFromWindow"

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 507
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 508
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 1679
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1680
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1682
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->closeKeyboard()V

    .line 1684
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x0

    .line 253
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 254
    .local v7, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 255
    .local v2, height:I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isDataReady()Z

    move-result v8

    if-nez v8, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->testDataReady()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->setDataIsReady()V

    .line 258
    invoke-virtual {p0, v7, v2}, Lcom/android/launcher2/MenuWidgets;->setMeasuredDimension(II)V

    .line 259
    invoke-virtual {p0, v7, v2}, Lcom/android/launcher2/MenuWidgets;->onDataReady(II)V

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v1

    .line 264
    .local v1, childCount:I
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getDesiredChildPageWidth()I

    move-result v6

    .line 265
    .local v6, minWidth:I
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getDesiredChildPageHeight()I

    move-result v5

    .line 267
    .local v5, minHeight:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 268
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewGridLayout;

    .line 269
    .local v0, child:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewGridLayout;->setMinimumWidth(I)V

    .line 270
    invoke-virtual {v0, v5}, Lcom/android/launcher2/PagedViewGridLayout;->setMinimumHeight(I)V

    .line 271
    iget v8, p0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    iget v9, p0, Lcom/android/launcher2/PagedView;->mPagePaddingBottom:I

    invoke-virtual {v0, v10, v8, v10, v9}, Lcom/android/launcher2/PagedViewGridLayout;->setPadding(IIII)V

    .line 272
    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewGridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 273
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v8, 0x33

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 274
    iget v8, p0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 275
    iget v8, p0, Lcom/android/launcher2/PagedView;->mPagePaddingLeft:I

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 276
    iget v8, p0, Lcom/android/launcher2/PagedView;->mPagePaddingRight:I

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 277
    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewGridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    .end local v0           #child:Lcom/android/launcher2/PagedViewGridLayout;
    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onMeasure(II)V

    .line 280
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1647
    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onPageBeginMoving()V

    .line 1648
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 983
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onPageEndMoving()V

    .line 987
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    .line 988
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 4
    .parameter "isInTouchMode"

    .prologue
    .line 1659
    const-string v1, "Launcher.MenuWidgets"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MenuWidgets::onTouchModeChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1661
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->getSearchState()Lcom/android/launcher2/MenuWidgetsSearch;

    move-result-object v0

    .line 1662
    .local v0, searchObj:Lcom/android/launcher2/MenuWidgetsSearch;
    if-eqz v0, :cond_0

    .line 1663
    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->onTouchModeChanged(Z)V

    .line 1666
    .end local v0           #searchObj:Lcom/android/launcher2/MenuWidgetsSearch;
    :cond_0
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 162
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1689
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 1693
    instance-of v2, p1, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1694
    check-cast v1, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1695
    .local v1, layout:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/PagedViewGridLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1696
    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewGridLayout;->getBitmapLoaderRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 1700
    .local v0, blr:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 1701
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1702
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedViewGridLayout;->setBitmapLoaderRunnable(Ljava/lang/Runnable;)V

    .line 1705
    .end local v0           #blr:Ljava/lang/Runnable;
    .end local v1           #layout:Lcom/android/launcher2/PagedViewGridLayout;
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "visibility"

    .prologue
    .line 1904
    if-nez p2, :cond_0

    .line 1905
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1906
    .local v0, newConfig:Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuWidgets;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    .line 1908
    .end local v0           #newConfig:Landroid/content/res/Configuration;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1909
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 978
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgets;->acceleratedOverScroll(F)V

    .line 979
    return-void
.end method

.method public packagesChanged()V
    .locals 3

    .prologue
    .line 288
    new-instance v0, Lcom/android/launcher2/MenuWidgets$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuWidgets$1;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/MenuWidgets;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    return-void
.end method

.method refreshQuickViewMenuWidget(Z)V
    .locals 2
    .parameter "isSecret"

    .prologue
    .line 1714
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    check-cast v0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->refreshQuickView(Z)V

    .line 1717
    :cond_0
    return-void
.end method

.method public refreshWidgetStateModel(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 1
    .parameter "currState"

    .prologue
    .line 1573
    if-eqz p1, :cond_0

    .line 1574
    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->refreshModel()V

    .line 1575
    :cond_0
    return-void
.end method

.method public refreshWidgetStateView(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 1
    .parameter "currState"

    .prologue
    .line 1578
    if-eqz p1, :cond_0

    .line 1579
    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->refreshView()V

    .line 1580
    :cond_0
    return-void
.end method

.method restorePageForIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 199
    if-ltz p1, :cond_0

    .line 200
    iput p1, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    .line 201
    :cond_0
    return-void
.end method

.method public runFilter()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/List;)V

    .line 376
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageCounts()V

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->invalidatePageData(I)V

    .line 379
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    .line 381
    new-instance v0, Lcom/android/launcher2/MenuWidgets$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuWidgets$2;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->post(Ljava/lang/Runnable;)Z

    .line 395
    :cond_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/launcher2/MenuWidgets$Filter;->filterWidgets(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public setFilter(Lcom/android/launcher2/MenuWidgets$Filter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    .line 414
    return-void
.end method

.method public setMenuWidgetsFragment(Lcom/android/launcher2/MenuWidgetsFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 1583
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    .line 1584
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0
    .parameter "searchString"

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    .line 421
    return-void
.end method

.method public setSecretAvailableWidget(Ljava/util/List;Z)V
    .locals 4
    .parameter
    .parameter "isAddList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, secretList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 405
    :cond_0
    return-void

    .line 400
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .line 401
    .local v0, a:Lcom/android/launcher2/AvailableWidget;
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getWidgetPackageName()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, pkgName:Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 403
    if-eqz p2, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v0, v3}, Lcom/android/launcher2/AvailableWidget;->setSecret(Z)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 2
    .parameter "tabHost"

    .prologue
    .line 1587
    if-eqz p1, :cond_0

    .line 1588
    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    .line 1589
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    if-nez v0, :cond_0

    .line 1590
    new-instance v0, Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-direct {v0}, Lcom/android/launcher2/MenuStateAnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    .line 1591
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$5;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->setListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    .line 1604
    :cond_0
    return-void
.end method

.method public setWidgetTextVisible(Z)V
    .locals 6
    .parameter "visible"

    .prologue
    .line 1950
    const/4 v0, 0x0

    .local v0, curPage:I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v2

    .local v2, numPages:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1951
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1952
    .local v4, page:Lcom/android/launcher2/PagedViewGridLayout;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v3

    .local v3, numWidgets:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 1953
    invoke-virtual {v4, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewWidget;

    .line 1954
    .local v5, widget:Lcom/android/launcher2/PagedViewWidget;
    invoke-virtual {v5, p1}, Lcom/android/launcher2/PagedViewWidget;->setLabelVisible(Z)V

    .line 1955
    invoke-virtual {v5, p1}, Lcom/android/launcher2/PagedViewWidget;->setCellSpanVisible(Z)V

    .line 1952
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1950
    .end local v5           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1958
    .end local v1           #i:I
    .end local v3           #numWidgets:I
    .end local v4           #page:Lcom/android/launcher2/PagedViewGridLayout;
    :cond_1
    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 0
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 920
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->syncWidgetPageItems(IZ)V

    .line 921
    return-void
.end method

.method public syncPages()V
    .locals 6

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->removeAllViews()V

    .line 896
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncPages numPages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    .line 903
    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_0

    .line 905
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    .line 908
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 909
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    if-ge v1, v4, :cond_1

    .line 910
    new-instance v2, Lcom/android/launcher2/PagedViewGridLayout;

    iget v4, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-direct {v2, v0, v4, v5}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 911
    .local v2, layout:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v2, p0}, Lcom/android/launcher2/PagedViewGridLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 912
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 913
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/MenuWidgets;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 916
    .end local v2           #layout:Lcom/android/launcher2/PagedViewGridLayout;
    .end local v3           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public updateAvailableWidget()V
    .locals 9

    .prologue
    .line 1997
    sget-object v7, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppModel;->getAvailableWidgets()Ljava/util/List;

    move-result-object v4

    .line 1999
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 2000
    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetProviders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AvailableWidgetListProvider;

    .line 2001
    .local v5, provider:Lcom/android/launcher2/AvailableWidgetListProvider;
    invoke-interface {v5}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2004
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #provider:Lcom/android/launcher2/AvailableWidgetListProvider;
    :cond_0
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 2005
    sget-object v7, Lcom/android/launcher2/MenuWidgets;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2011
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 2013
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AvailableWidget;

    .line 2014
    .local v6, widget:Lcom/android/launcher2/AvailableWidget;
    const/4 v1, 0x0

    .line 2015
    .local v1, exist:Z
    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .line 2016
    .local v0, aw:Lcom/android/launcher2/AvailableWidget;
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getWidgetPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lcom/android/launcher2/AvailableWidget;->getWidgetPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2017
    const/4 v1, 0x1

    .line 2022
    .end local v0           #aw:Lcom/android/launcher2/AvailableWidget;
    :cond_3
    if-nez v1, :cond_1

    .line 2023
    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2007
    .end local v1           #exist:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #widget:Lcom/android/launcher2/AvailableWidget;
    :cond_4
    const-string v7, "Launcher.MenuWidgets"

    const-string v8, "updateAvailableWidget : can\'t load available widget"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    :cond_5
    return-void
.end method

.method updateDirtyPage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1720
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v2

    .line 1721
    .local v2, total:I
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1722
    .local v1, dirtyCount:I
    sub-int v0, v1, v2

    .line 1724
    .local v0, diff:I
    :goto_0
    if-eqz v0, :cond_1

    .line 1725
    if-lez v0, :cond_0

    .line 1726
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1727
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1729
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1730
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1733
    :cond_1
    return-void
.end method

.method public updatePackages(Ljava/lang/String;)V
    .locals 7
    .parameter "who"

    .prologue
    const/4 v6, 0x1

    .line 297
    iget-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    if-eqz v4, :cond_1

    .line 298
    iput-boolean v6, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const-string v4, "updatePackages"

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " updatePackages"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuWidgets;->cleanupCache(Ljava/lang/String;)V

    .line 305
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    .line 306
    .local v3, wasEmpty:Z
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 308
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuWidgetsFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 309
    const-string v4, "Launcher.MenuWidgets"

    const-string v5, "Launcher model is reloading becuase of configuration change ( ex. mcc/mnc update )"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    :cond_2
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v4, :cond_4

    .line 314
    const-string v4, "onCreateView"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 315
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->getAvailableWidgets()Ljava/util/List;

    move-result-object v0

    .line 316
    .local v0, aw:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 317
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 320
    .end local v0           #aw:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 321
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetProviders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AvailableWidgetListProvider;

    .line 322
    .local v2, provider:Lcom/android/launcher2/AvailableWidgetListProvider;
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 325
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #provider:Lcom/android/launcher2/AvailableWidgetListProvider;
    :cond_4
    sput-boolean v6, Lcom/android/launcher2/Launcher;->wasWidgetsTabShown:Z

    .line 326
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mHelpWidgetProviders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AvailableWidgetListProvider;

    .line 327
    .restart local v2       #provider:Lcom/android/launcher2/AvailableWidgetListProvider;
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 330
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #provider:Lcom/android/launcher2/AvailableWidgetListProvider;
    :cond_5
    sget-object v4, Lcom/android/launcher2/MenuWidgets;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuWidgets$WidgetComparator;->updateCollator()V

    .line 331
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    sget-object v5, Lcom/android/launcher2/MenuWidgets;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    .line 335
    if-eqz v3, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->testDataReady()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->requestLayout()V

    goto/16 :goto_0
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 12
    .parameter "v"
    .parameter "scrollProgress"

    .prologue
    .line 925
    const/4 v6, 0x0

    .line 926
    .local v6, translationX:F
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a001c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v7, v8

    .line 927
    .local v7, vtransition_rotation_max:F
    const/4 v1, 0x0

    .line 929
    .local v1, fixedPosition:Z
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isLoopingEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 930
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgets;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuWidgets;->indexToPage(I)I

    move-result v2

    .line 931
    .local v2, i:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 932
    .local v4, pageWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 937
    .local v3, pageHeight:I
    const/high16 v8, 0x3f00

    int-to-float v9, v4

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f00

    int-to-float v10, v4

    mul-float/2addr v9, v10

    int-to-float v10, v2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/launcher2/MenuWidgets;->mix(FFF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 940
    int-to-float v8, v3

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 942
    if-nez v2, :cond_3

    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_3

    .line 944
    neg-float v8, v7

    mul-float/2addr v8, p2

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 946
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getScrollX()I

    move-result v8

    int-to-float v6, v8

    .line 947
    const/4 v1, 0x1

    .line 959
    .end local v2           #i:I
    .end local v3           #pageHeight:I
    .end local v4           #pageWidth:I
    :cond_0
    :goto_0
    const/high16 v5, 0x3f80

    .line 960
    .local v5, pageZoom:F
    const/high16 v8, 0x3f80

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 961
    const/high16 v8, 0x3f80

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 962
    if-nez v1, :cond_1

    .line 963
    const/4 v8, 0x0

    mul-float/2addr v8, p2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x4020

    div-float/2addr v8, v9

    add-float/2addr v6, v8

    .line 966
    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 968
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 969
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 970
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 973
    :cond_2
    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    const v10, 0x3e4ccccd

    add-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 974
    return-void

    .line 948
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v5           #pageZoom:F
    .restart local v2       #i:I
    .restart local v3       #pageHeight:I
    .restart local v4       #pageWidth:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_4

    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_4

    .line 950
    neg-float v8, v7

    mul-float/2addr v8, p2

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 952
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getScrollX()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int/2addr v8, v9

    int-to-float v6, v8

    .line 953
    const/4 v1, 0x1

    goto :goto_0

    .line 955
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0
.end method

.method updateQuickViewMainMenu()V
    .locals 2

    .prologue
    .line 1708
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    check-cast v0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->updateQuickView()V

    .line 1711
    :cond_0
    return-void
.end method
