.class public final Lcom/android/launcher2/HomeView;
.super Landroid/widget/FrameLayout;
.source "HomeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/PagedView$PageSwitchListener;
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/Launcher$StateAnimatorProvider;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;
.implements Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
.implements Lcom/android/launcher2/LifeCycle;
.implements Lcom/android/launcher2/Launcher$ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeView$24;,
        Lcom/android/launcher2/HomeView$LayoutParams;,
        Lcom/android/launcher2/HomeView$DropPos;,
        Lcom/android/launcher2/HomeView$HomeEditTabClickListener;,
        Lcom/android/launcher2/HomeView$AppWidgetResetObserver;,
        Lcom/android/launcher2/HomeView$SavedState;,
        Lcom/android/launcher2/HomeView$PendingAddArguments;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x400

.field public static final CHOOSER_MODE:Ljava/lang/String; = "mode"

#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field static final DEBUG_WIDGETS:Z = false

.field private static final ENABLE_TILT:Z = false

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field static final LOGD:Z = false

.field private static final MAGAZINE_CONTENT_URI:Landroid/net/Uri; = null

.field private static final MAGAZINE_FLICK_UP_MAX_DEGREE:F = 20.0f

.field static final MENU_GROUP_WALLPAPER:I = 0x1

.field static final MENU_HELP:I = 0x5

.field static final MENU_MANAGE_APPS:I = 0x3

.field static final MENU_SYSTEM_SETTINGS:I = 0x4

.field static final MENU_WALLPAPER_SETTINGS:I = 0x2

.field private static final OPEN_FOLDER_ID:Ljava/lang/String; = "launcher.workspace_open_folder_id"

.field private static final PENDING_FOLDER_EDIT_TEXT:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_END:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text_selection_end"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_START:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text_selection_start"

.field static final PROFILE_STARTUP:Z = false

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field static final REQUEST_CREATE_NEW_FOLDER_WITH_SHORTCUT_ITEM:I = 0x2

.field static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field static final REQUEST_PICK_APPWIDGET:I = 0x9

.field static final REQUEST_PICK_SHORTCUT:I = 0x7

.field static final REQUEST_PICK_WALLPAPER:I = 0xa

.field public static final RESPONSE_CODE_SHOW_WIDGETS:I = -0x2710

.field private static final TAG:Ljava/lang/String; = "Launcher.HomeView"

.field private static final TOOLBAR_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_icon"

.field static final WIDGET_BACKGROUND:I = 0x1000000

.field private static cpuBooster:Landroid/os/DVFSHelper; = null

.field static mIsAllAppsButtonDisable:Z = false

.field static final sDumpLogs:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sFolders:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sFrameHitRect:Landroid/graphics/Rect; = null

.field static sIsDragState:Z = false

.field static sPanelDrawer:Lcom/android/launcher2/PanelDrawer; = null

.field private static sPendingAddList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeView$PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field private static sTouchPt:Landroid/graphics/PointF; = null

.field private static final sTransitionInDuration:I = 0xc8

.field private static final sTransitionOutDuration:I = 0xaf


# instance fields
.field private final ADVANCE_MSG:I

.field private final REMOVE_MARKETSAMPLE:I

.field private final SHOW_MARKETSAMPLE:I

.field public isHelpAppPageAdded:Z

.field public isHelpAppPageDeleted:Z

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAfterSavedInstanceState:Z

.field private mAllAppsIcon:Landroid/view/View;

.field private mAllAppsIconTouchListener:Landroid/view/View$OnTouchListener;

.field private mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mCameraCut:Landroid/widget/ImageView;

.field private mCurrentDragItem:Lcom/android/launcher2/BaseItem;

.field private mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDarkenView:Landroid/view/View;

.field private mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mEditBar:Lcom/android/launcher2/HomeEditBar;

.field private mEditIcon:Landroid/view/View;

.field private mEditIconDivider:Landroid/view/View;

.field private mFavoritesModeIsNormal:Z

.field private mFolderBundle:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private final mHelphubObserver:Landroid/database/ContentObserver;

.field private mHomeContainer:Landroid/view/View;

.field private mHomeDarkenLayer:Landroid/view/View;

.field private mHomeEditButtonListener:Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

.field mHomeEditItem:Landroid/view/MenuItem;

.field private mHomeEditTitleBar:Landroid/view/ViewGroup;

.field public mHomeKeyPress:Z

.field private mHomeSearchBtn:Landroid/view/View;

.field private mHomeTopBar:Landroid/view/View;

.field private mHotseat:Lcom/android/launcher2/Hotseat;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDeletePopup:Z

.field public mIsHelpItemAdded:Z

.field private mIsStartFlickUp:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mLightEffectAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mLightEffectImage:Landroid/widget/ImageView;

.field private mMagazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;

.field private mMarketSample:Landroid/view/View;

.field private mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mPanelBackgroundAlpha:F

.field private mPendingAddInfo:Lcom/android/launcher2/HomeItem;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

.field private mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

.field private mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

.field private mRestoring:Z

.field private mSavedState:Lcom/android/launcher2/HomeView$SavedState;

.field private mShadow:Lcom/android/launcher2/ShadowBuilder;

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private final mStopLightEffect:Ljava/lang/Runnable;

.field private mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

.field private mTmpAddItemCellCoordinates:[I

.field private mTmpAddItemSpans:[I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWaitingForResult:Z

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    .line 123
    sput-boolean v1, Lcom/android/launcher2/HomeView;->mIsAllAppsButtonDisable:Z

    .line 148
    const-string v0, "content://sstream.app.provider.StoryProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/HomeView;->MAGAZINE_CONTENT_URI:Landroid/net/Uri;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Lcom/android/launcher2/PanelDrawer;

    invoke-direct {v0}, Lcom/android/launcher2/PanelDrawer;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    .line 4393
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sFrameHitRect:Landroid/graphics/Rect;

    .line 4394
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    .line 4548
    sput-boolean v1, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 278
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 285
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    new-instance v1, Lcom/android/launcher2/HomeView$AppWidgetResetObserver;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 167
    new-instance v1, Lcom/android/launcher2/HomeItem;

    invoke-direct {v1}, Lcom/android/launcher2/HomeItem;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    .line 168
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    .line 169
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mTmpAddItemSpans:[I

    .line 184
    new-instance v1, Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$HomeEditTabClickListener;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeEditButtonListener:Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

    .line 190
    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceRunning:Z

    .line 192
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    .line 207
    iput v4, p0, Lcom/android/launcher2/HomeView;->ADVANCE_MSG:I

    .line 208
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/launcher2/HomeView;->mAdvanceInterval:I

    .line 209
    const/16 v1, 0xfa

    iput v1, p0, Lcom/android/launcher2/HomeView;->mAdvanceStagger:I

    .line 210
    iput v2, p0, Lcom/android/launcher2/HomeView;->SHOW_MARKETSAMPLE:I

    .line 211
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/launcher2/HomeView;->REMOVE_MARKETSAMPLE:I

    .line 213
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    .line 214
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 221
    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    .line 235
    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    .line 254
    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    .line 257
    iput-object v5, p0, Lcom/android/launcher2/HomeView;->mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

    .line 260
    iput-object v5, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    .line 961
    new-instance v1, Lcom/android/launcher2/HomeView$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$3;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    .line 972
    new-instance v1, Lcom/android/launcher2/HomeView$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$4;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mAllAppsIconTouchListener:Landroid/view/View$OnTouchListener;

    .line 1545
    new-instance v1, Lcom/android/launcher2/HomeView$12;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$12;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    .line 1581
    new-instance v1, Lcom/android/launcher2/HomeView$13;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$13;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

    .line 2722
    new-instance v1, Lcom/android/launcher2/HomeView$18;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/HomeView$18;-><init>(Lcom/android/launcher2/HomeView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHelphubObserver:Landroid/database/ContentObserver;

    .line 3478
    iput-object v5, p0, Lcom/android/launcher2/HomeView;->mHomeEditItem:Landroid/view/MenuItem;

    .line 3769
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    .line 3770
    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    .line 4223
    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    .line 4565
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/launcher2/HomeView;->mPanelBackgroundAlpha:F

    .line 4704
    new-instance v1, Lcom/android/launcher2/HomeView$23;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$23;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mStopLightEffect:Ljava/lang/Runnable;

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 287
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 288
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 289
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 290
    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    .line 292
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->registerContentObservers()V

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->performOnHomePressed(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/HomeView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mLightEffectAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/HomeView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mLightEffectImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/DVFSHelper;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/HomeView;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/HomeView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/HomeView;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mMarketSample:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/HomeView;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/HomeView;ILcom/android/launcher2/HomePendingWidget;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/HomeView;->addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher2/HomeView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->onAppWidgetReset()V

    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 4673
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4674
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4676
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4677
    return-void
.end method

.method private addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V
    .locals 20
    .parameter "appWidgetId"
    .parameter "info"

    .prologue
    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 1699
    .local v4, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz p2, :cond_0

    if-nez v4, :cond_1

    .line 1755
    :cond_0
    :goto_0
    return-void

    .line 1702
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/HomePendingWidget;->getDefSpans()[I

    move-result-object v7

    .line 1703
    .local v7, defaultSpan:[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/HomePendingWidget;->getResizeSpans()[I

    move-result-object v15

    .line 1705
    .local v15, resizeSpan:[I
    iget v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v7, v15}, Lcom/android/launcher2/HomeView;->calcFinalSpan(Lcom/android/launcher2/HomeItem;I[I[I)V

    .line 1707
    iget-object v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1709
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.appwidget.action.APPWIDGET_CONFIGURE"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1710
    .local v9, intent:Landroid/content/Intent;
    iget-object v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1711
    const-string v18, "appWidgetId"

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1712
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    .line 1713
    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1717
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    .line 1718
    .local v13, mimeType:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/launcher2/HomePendingWidget;->configurationData:Landroid/os/Parcelable;

    check-cast v5, Landroid/content/ClipData;

    .line 1719
    .local v5, clipData:Landroid/content/ClipData;
    invoke-virtual {v5}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v6

    .line 1720
    .local v6, clipDesc:Landroid/content/ClipDescription;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-virtual {v6}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_2

    .line 1721
    invoke-virtual {v6, v8}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1722
    invoke-virtual {v5, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    .line 1723
    .local v11, item:Landroid/content/ClipData$Item;
    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    .line 1724
    .local v16, stringData:Ljava/lang/CharSequence;
    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v17

    .line 1725
    .local v17, uriData:Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 1726
    .local v10, intentData:Landroid/content/Intent;
    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    .line 1728
    .local v12, key:Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 1729
    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1740
    .end local v5           #clipData:Landroid/content/ClipData;
    .end local v6           #clipDesc:Landroid/content/ClipDescription;
    .end local v8           #i:I
    .end local v10           #intentData:Landroid/content/Intent;
    .end local v11           #item:Landroid/content/ClipData$Item;
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #mimeType:Ljava/lang/String;
    .end local v16           #stringData:Ljava/lang/CharSequence;
    .end local v17           #uriData:Landroid/net/Uri;
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    .line 1741
    .local v3, app:Lcom/android/launcher2/LauncherApplication;
    const-string v18, "com.android.launcher2.prefs"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 1742
    .local v14, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v18, "tempScreen"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->mScreen:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1743
    const-string v18, "tempCellX"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->cellX:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1744
    const-string v18, "tempCellY"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->cellY:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1745
    const-string v18, "tempSpanX"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->spanX:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1746
    const-string v18, "tempSpanY"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->spanY:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1747
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1749
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeView;->copyToPendingAddInfo(Lcom/android/launcher2/HomePendingWidget;)V

    .line 1751
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/launcher2/HomeView;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1730
    .end local v3           #app:Lcom/android/launcher2/LauncherApplication;
    .end local v14           #prefs:Landroid/content/SharedPreferences$Editor;
    .restart local v5       #clipData:Landroid/content/ClipData;
    .restart local v6       #clipDesc:Landroid/content/ClipDescription;
    .restart local v8       #i:I
    .restart local v10       #intentData:Landroid/content/Intent;
    .restart local v11       #item:Landroid/content/ClipData$Item;
    .restart local v12       #key:Ljava/lang/String;
    .restart local v13       #mimeType:Ljava/lang/String;
    .restart local v16       #stringData:Ljava/lang/CharSequence;
    .restart local v17       #uriData:Landroid/net/Uri;
    :cond_3
    if-eqz v10, :cond_4

    .line 1731
    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1732
    :cond_4
    if-eqz v16, :cond_2

    .line 1733
    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1720
    .end local v10           #intentData:Landroid/content/Intent;
    .end local v11           #item:Landroid/content/ClipData$Item;
    .end local v12           #key:Ljava/lang/String;
    .end local v16           #stringData:Ljava/lang/CharSequence;
    .end local v17           #uriData:Landroid/net/Uri;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1753
    .end local v5           #clipData:Landroid/content/ClipData;
    .end local v6           #clipDesc:Landroid/content/ClipDescription;
    .end local v8           #i:I
    .end local v9           #intent:Landroid/content/Intent;
    .end local v13           #mimeType:Ljava/lang/String;
    :cond_6
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/HomeView;->completeAddAppWidget(ILcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0
.end method

.method private addMovementVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 4681
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4682
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4684
    :cond_0
    return-void
.end method

.method private addSamsungWidget(Lcom/android/launcher2/HomePendingSamsungWidget;)Z
    .locals 37
    .parameter "pending"

    .prologue
    .line 1851
    sget-object v30, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    .line 1852
    .local v30, packageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    move-object/from16 v27, v0

    .line 1853
    .local v27, info:Lcom/android/launcher2/SamsungWidgetProviderInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungWidgetProviderInfo;)Lcom/android/launcher2/SamsungWidgetItem;

    move-result-object v26

    .line 1854
    .local v26, homeItem:Lcom/android/launcher2/SamsungWidgetItem;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->container:J

    move-wide/from16 v21, v0

    .line 1855
    .local v21, container:J
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->mScreen:I

    .line 1857
    .local v10, screen:I
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v29

    .line 1859
    .local v29, layout:Lcom/android/launcher2/CellLayout;
    const/16 v28, 0x2

    .line 1860
    .local v28, land:I
    const/16 v31, 0x1

    .line 1861
    .local v31, port:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getWidth(I)I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getHeight(I)I

    move-result v6

    const/4 v7, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getWidth(I)I

    move-result v7

    const/4 v8, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getHeight(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForSamsungWidget(IIII[I)[I

    move-result-object v23

    .line 1863
    .local v23, defaultSpan:[I
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v32, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v23, v5

    aput v5, v32, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v23, v5

    aput v5, v32, v4

    const/4 v4, 0x2

    const/4 v5, -0x1

    aput v5, v32, v4

    const/4 v4, 0x3

    const/4 v5, -0x1

    aput v5, v32, v4

    .line 1864
    .local v32, resizeSpan:[I
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/launcher2/HomeView;->calcFinalSpan(Lcom/android/launcher2/HomeItem;I[I[I)V

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemSpans:[I

    move-object/from16 v34, v0

    .line 1867
    .local v34, spanXY:[I
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->spanX:I

    aput v5, v34, v4

    .line 1868
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->spanY:I

    aput v5, v34, v4

    .line 1873
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    .line 1874
    .local v9, cellXY:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->dropPos:[I

    move-object/from16 v36, v0

    .line 1875
    .local v36, touchXY:[I
    const/16 v24, 0x0

    .line 1876
    .local v24, foundCellSpan:Z
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->cellX:I

    if-ltz v4, :cond_2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->cellY:I

    if-ltz v4, :cond_2

    .line 1877
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->cellX:I

    aput v5, v9, v4

    .line 1878
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->cellY:I

    aput v5, v9, v4

    .line 1879
    const/16 v24, 0x1

    .line 1890
    :cond_0
    :goto_0
    if-nez v24, :cond_4

    .line 1891
    new-instance v12, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct {v12}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    .line 1892
    .local v12, dropPos:Lcom/android/launcher2/HomeView$DropPos;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v4, 0x0

    aget v13, v34, v4

    const/4 v4, 0x1

    aget v14, v34, v4

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v24

    .line 1893
    iget v10, v12, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    .line 1894
    const/4 v4, 0x0

    iget v5, v12, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    aput v5, v9, v4

    .line 1895
    const/4 v4, 0x1

    iget v5, v12, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    aput v5, v9, v4

    .line 1896
    iget-boolean v4, v12, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v4, :cond_1

    .line 1897
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    .line 1899
    :cond_1
    if-nez v24, :cond_4

    .line 1900
    const/4 v4, 0x0

    .line 1938
    .end local v12           #dropPos:Lcom/android/launcher2/HomeView$DropPos;
    :goto_1
    return v4

    .line 1880
    :cond_2
    if-eqz v36, :cond_0

    .line 1881
    if-eqz v29, :cond_0

    .line 1884
    const/4 v4, 0x0

    aget v5, v36, v4

    const/4 v4, 0x1

    aget v6, v36, v4

    const/4 v4, 0x0

    aget v7, v34, v4

    const/4 v4, 0x1

    aget v8, v34, v4

    move-object/from16 v4, v29

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v33

    .line 1886
    .local v33, result:[I
    if-eqz v33, :cond_3

    const/16 v24, 0x1

    :goto_2
    goto :goto_0

    :cond_3
    const/16 v24, 0x0

    goto :goto_2

    .line 1903
    .end local v33           #result:[I
    :cond_4
    const/4 v4, 0x0

    aget v4, v34, v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher2/SamsungWidgetItem;->spanX:I

    .line 1904
    const/4 v4, 0x1

    aget v4, v34, v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher2/SamsungWidgetItem;->spanY:I

    .line 1906
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v4, 0x0

    aget v18, v9, v4

    const/4 v4, 0x1

    aget v19, v9, v4

    const/16 v20, 0x0

    move-object/from16 v14, v26

    move-wide/from16 v15, v21

    move/from16 v17, v10

    invoke-static/range {v13 .. v20}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 1914
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/launcher2/SamsungWidgetView;->setTag(Ljava/lang/Object;)V

    .line 1916
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    const/high16 v5, 0x100

    invoke-virtual {v4, v5}, Lcom/android/launcher2/SamsungWidgetView;->setBackgroundColor(I)V

    .line 1917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 1918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    if-ne v4, v10, :cond_6

    .line 1919
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v10}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 1923
    :goto_3
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_5

    .line 1924
    const-string v4, "add_widgets"

    sget-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1925
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 1926
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v35

    .line 1927
    .local v35, t:Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f03000f

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1928
    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    .line 1929
    new-instance v25, Landroid/os/Handler;

    invoke-direct/range {v25 .. v25}, Landroid/os/Handler;-><init>()V

    .line 1930
    .local v25, handler:Landroid/os/Handler;
    new-instance v4, Lcom/android/launcher2/HomeView$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/launcher2/HomeView$15;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v5, 0x7d0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1938
    .end local v25           #handler:Landroid/os/Handler;
    .end local v35           #t:Landroid/widget/Toast;
    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1921
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3
.end method

.method private addSurfaceWidget(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z
    .locals 33
    .parameter "info"

    .prologue
    .line 1968
    new-instance v26, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-direct/range {v26 .. v26}, Lcom/android/launcher2/SurfaceWidgetItem;-><init>()V

    .line 1969
    .local v26, homeItem:Lcom/android/launcher2/SurfaceWidgetItem;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-object/from16 v29, v0

    .line 1970
    .local v29, sInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    const-string v5, "SurfaceWidgetFlow"

    const-string v6, "making surface widget on drop"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1, v6, v7}, Lcom/android/launcher2/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/android/launcher2/SurfaceWidgetView;Z)V

    .line 1974
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    .line 2073
    :goto_0
    return v5

    .line 1977
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->container:J

    move-wide/from16 v21, v0

    .line 1978
    .local v21, container:J
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mScreen:I

    .line 1980
    .local v10, screen:I
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 1982
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/SurfaceWidgetItem;->getDefSpans()[I

    move-result-object v23

    .line 1983
    .local v23, defaultSpan:[I
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/SurfaceWidgetItem;->getResizeSpans()[I

    move-result-object v27

    .line 1984
    .local v27, resizeSpan:[I
    move-object/from16 v0, v29

    iget v5, v0, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/launcher2/HomeView;->calcFinalSpan(Lcom/android/launcher2/HomeItem;I[I[I)V

    .line 1986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemSpans:[I

    move-object/from16 v30, v0

    .line 1987
    .local v30, spanXY:[I
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->spanX:I

    aput v6, v30, v5

    .line 1988
    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->spanY:I

    aput v6, v30, v5

    .line 1990
    sget-boolean v5, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v5, :cond_1

    const-string v5, "Launcher.HomeView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding surface width cells wide = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v30, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cells tall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v30, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    .line 1996
    .local v9, cellXY:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->dropPos:[I

    move-object/from16 v32, v0

    .line 1997
    .local v32, touchXY:[I
    const/16 v24, 0x0

    .line 1998
    .local v24, foundCellSpan:Z
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->cellX:I

    if-ltz v5, :cond_4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->cellY:I

    if-ltz v5, :cond_4

    .line 1999
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->cellX:I

    aput v6, v9, v5

    .line 2000
    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->cellY:I

    aput v6, v9, v5

    .line 2001
    const/16 v24, 0x1

    .line 2012
    :cond_2
    :goto_1
    if-nez v24, :cond_6

    .line 2013
    new-instance v12, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct {v12}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    .line 2014
    .local v12, dropPos:Lcom/android/launcher2/HomeView$DropPos;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v5, 0x0

    aget v13, v30, v5

    const/4 v5, 0x1

    aget v14, v30, v5

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v24

    .line 2015
    iget v10, v12, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    .line 2016
    const/4 v5, 0x0

    iget v6, v12, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    aput v6, v9, v5

    .line 2017
    const/4 v5, 0x1

    iget v6, v12, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    aput v6, v9, v5

    .line 2018
    iget-boolean v5, v12, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v5, :cond_3

    .line 2019
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    .line 2021
    :cond_3
    if-nez v24, :cond_6

    .line 2022
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2002
    .end local v12           #dropPos:Lcom/android/launcher2/HomeView$DropPos;
    :cond_4
    if-eqz v32, :cond_2

    .line 2003
    if-eqz v4, :cond_2

    .line 2006
    const/4 v5, 0x0

    aget v5, v32, v5

    const/4 v6, 0x1

    aget v6, v32, v6

    const/4 v7, 0x0

    aget v7, v30, v7

    const/4 v8, 0x1

    aget v8, v30, v8

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v28

    .line 2008
    .local v28, result:[I
    if-eqz v28, :cond_5

    const/16 v24, 0x1

    :goto_2
    goto :goto_1

    :cond_5
    const/16 v24, 0x0

    goto :goto_2

    .line 2025
    .end local v28           #result:[I
    :cond_6
    const/4 v5, 0x0

    aget v5, v30, v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->spanX:I

    .line 2026
    const/4 v5, 0x1

    aget v5, v30, v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->spanY:I

    .line 2028
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v5, 0x0

    aget v18, v9, v5

    const/4 v5, 0x1

    aget v19, v9, v5

    const/16 v20, 0x0

    move-object/from16 v14, v26

    move-wide/from16 v15, v21

    move/from16 v17, v10

    invoke-static/range {v13 .. v20}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 2032
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    new-instance v6, Lcom/android/launcher2/HomeView$16;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v6, v0, v1, v4}, Lcom/android/launcher2/HomeView$16;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/SurfaceWidgetItem;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher2/SurfaceWidgetView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2052
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 2053
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    if-ne v5, v10, :cond_8

    .line 2054
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 2058
    :goto_3
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_7

    .line 2059
    const-string v5, "add_widgets"

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2060
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 2061
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v31

    .line 2062
    .local v31, t:Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f03000f

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2063
    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    .line 2064
    new-instance v25, Landroid/os/Handler;

    invoke-direct/range {v25 .. v25}, Landroid/os/Handler;-><init>()V

    .line 2065
    .local v25, handler:Landroid/os/Handler;
    new-instance v5, Lcom/android/launcher2/HomeView$17;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/launcher2/HomeView$17;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v6, 0x7d0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2073
    .end local v25           #handler:Landroid/os/Handler;
    .end local v31           #t:Landroid/widget/Toast;
    :cond_7
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2056
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3
.end method

.method private calcFinalSpan(Lcom/android/launcher2/HomeItem;I[I[I)V
    .locals 6
    .parameter "info"
    .parameter "resizeFlags"
    .parameter "defaultSpan"
    .parameter "resizeSpan"

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1677
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    if-ne v2, v0, :cond_0

    .line 1678
    aget v0, p3, v1

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 1680
    :cond_0
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    if-ne v2, v0, :cond_1

    .line 1681
    aget v0, p3, v3

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 1683
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v3, :cond_2

    .line 1684
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    aget v1, p4, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 1685
    aget v0, p4, v4

    if-eq v2, v0, :cond_2

    .line 1686
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    aget v1, p4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 1689
    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-ne v0, v4, :cond_3

    .line 1690
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    aget v1, p4, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 1691
    aget v0, p4, v5

    if-eq v2, v0, :cond_3

    .line 1692
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    aget v1, p4, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 1695
    :cond_3
    return-void
.end method

.method private closeQuickViewWorkspaceStartAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const-wide/16 v6, 0x168

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 3324
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 3325
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mMagazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;

    if-eqz v2, :cond_0

    .line 3326
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mMagazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/HomeMagazineSoftKey;->setVisibility(I)V

    .line 3328
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    .line 3333
    .local v1, newWorkspace:I
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 3335
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 3338
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 3339
    .local v0, l:Lcom/android/launcher2/AnimationLayer;
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 3340
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v2, :cond_8

    .line 3341
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3342
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 3343
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8, v3}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3344
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3353
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v2, :cond_3

    .line 3354
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3355
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3356
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8, v3}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3357
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3360
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3361
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3362
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3363
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8, v3}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3364
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3368
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 3369
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 3370
    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 3371
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 3373
    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 3374
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3375
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3376
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3377
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3381
    :cond_7
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 3383
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v9}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    .line 3384
    return-void

    .line 3346
    :cond_8
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 3347
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3348
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3349
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0
.end method

.method private completeAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;)Z
    .locals 12
    .parameter "args"

    .prologue
    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 426
    const/4 v11, 0x0

    .line 427
    .local v11, result:Z
    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->requestCode:I

    packed-switch v0, :pswitch_data_0

    .line 456
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    .line 457
    return v11

    .line 429
    :pswitch_1
    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v7}, Lcom/android/launcher2/HomeView;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0

    .line 432
    :pswitch_2
    iget-object v1, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/HomeView;->completeAddShortcut(Landroid/content/Intent;JIII)V

    .line 434
    const/4 v11, 0x1

    .line 435
    goto :goto_0

    .line 437
    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    .line 438
    .local v1, item:Lcom/android/launcher2/HomeShortcutItem;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x64

    const/4 v6, 0x0

    move v9, v8

    invoke-static/range {v0 .. v9}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    goto :goto_0

    .line 442
    .end local v1           #item:Lcom/android/launcher2/HomeShortcutItem;
    :pswitch_4
    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->addAppWidgetFromPick(Landroid/content/Intent;)V

    goto :goto_0

    .line 445
    :pswitch_5
    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 446
    .local v10, appWidgetId:I
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    invoke-static {v0, p1}, Lcom/android/launcher2/HomeView;->copyPendingAddToHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeView$PendingAddArguments;)V

    .line 447
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    invoke-direct {p0, v10, v0}, Lcom/android/launcher2/HomeView;->completeAddAppWidget(ILcom/android/launcher2/HomeItem;)V

    .line 448
    const/4 v11, 0x1

    .line 449
    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private completeAddAppWidget(ILcom/android/launcher2/HomeItem;)V
    .locals 36
    .parameter "appWidgetId"
    .parameter "info"

    .prologue
    .line 1327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v25

    .line 1329
    .local v25, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v25, :cond_1

    .line 1333
    sget-boolean v3, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "Launcher.HomeView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App widget info is null. AppWidgetID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/launcher2/HomeItem;->container:J

    .line 1337
    .local v5, container:J
    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 1340
    .local v7, screen:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .local v4, layoutForScreen:Lcom/android/launcher2/CellLayout;
    move-object/from16 v3, p0

    move-object/from16 v8, p2

    .line 1341
    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/HomeView;->reAddCreatedPageForDragIfNeeded(Lcom/android/launcher2/CellLayout;JILcom/android/launcher2/HomeItem;)Lcom/android/launcher2/CellLayout;

    move-result-object v8

    .line 1343
    .local v8, layout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemSpans:[I

    move-object/from16 v31, v0

    .line 1344
    .local v31, spanXY:[I
    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    aput v9, v31, v3

    .line 1345
    const/4 v3, 0x1

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    aput v9, v31, v3

    .line 1349
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    .line 1350
    .local v13, cellXY:[I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    move-object/from16 v34, v0

    .line 1351
    .local v34, touchXY:[I
    const/16 v26, 0x0

    .line 1352
    .local v26, foundCellSpan:Z
    if-eqz v8, :cond_6

    .line 1353
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    if-ltz v3, :cond_4

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    if-ltz v3, :cond_4

    .line 1354
    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    aput v9, v13, v3

    .line 1355
    const/4 v3, 0x1

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    aput v9, v13, v3

    .line 1356
    const/16 v26, 0x1

    .line 1367
    :cond_2
    :goto_1
    if-nez v26, :cond_7

    .line 1368
    new-instance v16, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct/range {v16 .. v16}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    .line 1369
    .local v16, dropPos:Lcom/android/launcher2/HomeView$DropPos;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const/4 v3, 0x0

    aget v17, v31, v3

    const/4 v3, 0x1

    aget v18, v31, v3

    const/16 v19, 0x0

    move v14, v7

    invoke-static/range {v13 .. v19}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v26

    .line 1370
    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    .line 1371
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    aput v9, v13, v3

    .line 1372
    const/4 v3, 0x1

    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    aput v9, v13, v3

    .line 1373
    move-object/from16 v0, v16

    iget-boolean v3, v0, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v3, :cond_3

    .line 1374
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    .line 1376
    :cond_3
    if-nez v26, :cond_7

    .line 1377
    const/4 v3, -0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    .line 1380
    new-instance v3, Lcom/android/launcher2/HomeView$8;

    const-string v9, "deleteAppWidgetId"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v9, v1}, Lcom/android/launcher2/HomeView$8;-><init>(Lcom/android/launcher2/HomeView;Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView$8;->start()V

    goto/16 :goto_0

    .line 1357
    .end local v16           #dropPos:Lcom/android/launcher2/HomeView$DropPos;
    :cond_4
    if-eqz v34, :cond_2

    .line 1360
    const/4 v3, 0x0

    aget v9, v34, v3

    const/4 v3, 0x1

    aget v10, v34, v3

    const/4 v3, 0x0

    aget v11, v31, v3

    const/4 v3, 0x1

    aget v12, v31, v3

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v30

    .line 1362
    .local v30, result:[I
    if-eqz v30, :cond_5

    const/16 v26, 0x1

    .line 1363
    :goto_2
    goto :goto_1

    .line 1362
    :cond_5
    const/16 v26, 0x0

    goto :goto_2

    .line 1365
    .end local v30           #result:[I
    :cond_6
    const/4 v7, -0x1

    goto :goto_1

    .line 1393
    :cond_7
    new-instance v18, Lcom/android/launcher2/HomeWidgetItem;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;IZ)V

    .line 1394
    .local v18, launcherInfo:Lcom/android/launcher2/HomeWidgetItem;
    const/4 v3, 0x0

    aget v3, v31, v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    .line 1395
    const/4 v3, 0x1

    aget v3, v31, v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    .line 1399
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v3, :cond_c

    move-object/from16 v33, p2

    .line 1400
    check-cast v33, Lcom/android/launcher2/HomePendingWidget;

    .line 1401
    .local v33, temp:Lcom/android/launcher2/HomePendingWidget;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->resizeSpans:[I

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/HomePendingWidget;->getResizeSpans()[I

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/android/launcher2/HomeView;->copySpans([I[I)V

    .line 1416
    .end local v33           #temp:Lcom/android/launcher2/HomePendingWidget;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const/4 v3, 0x0

    aget v22, v13, v3

    const/4 v3, 0x1

    aget v23, v13, v3

    const/16 v24, 0x0

    move-wide/from16 v19, v5

    move/from16 v21, v7

    invoke-static/range {v17 .. v24}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 1431
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    if-nez v3, :cond_a

    .line 1433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v9

    move/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v3, v9, v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1435
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1436
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, v25

    iget-object v9, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v9}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v28

    .line 1438
    .local v28, padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    move-object/from16 v0, v28

    iget v10, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    move-object/from16 v0, v28

    iget v11, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    move-object/from16 v0, v28

    iget v12, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 1441
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v9, Lcom/android/launcher2/HomeView$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1, v8}, Lcom/android/launcher2/HomeView$9;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeWidgetItem;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v3, v9}, Landroid/appwidget/AppWidgetHostView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    invoke-virtual {v9, v10, v3, v11, v12}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    if-eq v7, v3, :cond_8

    .line 1463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v7}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1466
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v7}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/launcher2/CellLayout;

    .line 1467
    .local v29, page:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_e

    const/16 v35, 0x1

    .line 1469
    .local v35, wasPageEmpty:Z
    :goto_4
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/high16 v9, 0x100

    invoke-virtual {v3, v9}, Landroid/appwidget/AppWidgetHostView;->setBackgroundColor(I)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 1473
    if-eqz v35, :cond_9

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_9

    .line 1474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->turnOffEmptyPageMsg()V

    .line 1476
    :cond_9
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher2/HomeView;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 1480
    .end local v28           #padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .end local v29           #page:Lcom/android/launcher2/CellLayout;
    .end local v35           #wasPageEmpty:Z
    :cond_a
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_b

    .line 1481
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "add_widgets"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1482
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 1483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v32

    .line 1484
    .local v32, t:Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v9, 0x7f03000f

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1485
    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    .line 1486
    new-instance v27, Landroid/os/Handler;

    invoke-direct/range {v27 .. v27}, Landroid/os/Handler;-><init>()V

    .line 1487
    .local v27, handler:Landroid/os/Handler;
    new-instance v3, Lcom/android/launcher2/HomeView$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher2/HomeView$10;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v9, 0x7d0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1499
    .end local v27           #handler:Landroid/os/Handler;
    .end local v32           #t:Landroid/widget/Toast;
    :cond_b
    :goto_5
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/android/launcher2/HomeView$11;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/launcher2/HomeView$11;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v3, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1402
    :cond_c
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v3, :cond_d

    move-object/from16 v33, p2

    .line 1403
    check-cast v33, Lcom/android/launcher2/HomeWidgetItem;

    .line 1404
    .local v33, temp:Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->resizeSpans:[I

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/HomeWidgetItem;->getResizeSpans()[I

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/android/launcher2/HomeView;->copySpans([I[I)V

    goto/16 :goto_3

    .line 1406
    .end local v33           #temp:Lcom/android/launcher2/HomeWidgetItem;
    :cond_d
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeWidgetItem;->calcResizeSpan(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto/16 :goto_3

    .line 1467
    .restart local v28       #padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .restart local v29       #page:Lcom/android/launcher2/CellLayout;
    :cond_e
    const/16 v35, 0x0

    goto/16 :goto_4

    .line 1494
    .end local v28           #padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .end local v29           #page:Lcom/android/launcher2/CellLayout;
    :cond_f
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "resize_widgets"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    goto :goto_5
.end method

.method private completeAddShortcut(Landroid/content/Intent;JIII)V
    .locals 33
    .parameter "data"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 1221
    const-string v3, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v5, v0, v6}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v8

    .line 1225
    .local v8, info:Lcom/android/launcher2/HomeShortcutItem;
    const-wide/16 v5, 0x0

    cmp-long v3, p2, v5

    if-gez v3, :cond_d

    .line 1226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    .line 1227
    .local v14, cellXY:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v0, v3, Lcom/android/launcher2/HomeItem;->dropPos:[I

    move-object/from16 v31, v0

    .line 1232
    .local v31, touchXY:[I
    move/from16 v7, p4

    .line 1233
    .local v7, realScreen:I
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v8, Lcom/android/launcher2/HomeShortcutItem;->mSecretItem:Z

    if-nez v3, :cond_2

    .line 1234
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v3

    add-int/2addr v7, v3

    .line 1236
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .local v4, layout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v3, p0

    move-wide/from16 v5, p2

    .line 1237
    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/HomeView;->reAddCreatedPageForDragIfNeeded(Lcom/android/launcher2/CellLayout;JILcom/android/launcher2/HomeItem;)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 1239
    const/16 v27, 0x0

    .line 1241
    .local v27, foundCellSpan:Z
    if-eqz v4, :cond_9

    .line 1243
    if-ltz p5, :cond_7

    if-ltz p6, :cond_7

    .line 1244
    const/4 v3, 0x0

    aput p5, v14, v3

    .line 1245
    const/4 v3, 0x1

    aput p6, v14, v3

    .line 1246
    const/16 v27, 0x1

    .line 1257
    :cond_3
    :goto_1
    if-nez v27, :cond_5

    .line 1258
    const-wide/16 v5, -0x64

    cmp-long v3, p2, v5

    if-nez v3, :cond_0

    .line 1261
    new-instance v17, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct/range {v17 .. v17}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    .line 1262
    .local v17, dropPos:Lcom/android/launcher2/HomeView$DropPos;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v15, p4

    invoke-static/range {v14 .. v20}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v27

    .line 1263
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    move/from16 p4, v0

    .line 1264
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    aput v5, v14, v3

    .line 1265
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    aput v5, v14, v3

    .line 1266
    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v3, :cond_4

    .line 1267
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    .line 1269
    :cond_4
    if-eqz v27, :cond_0

    .line 1273
    .end local v17           #dropPos:Lcom/android/launcher2/HomeView$DropPos;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/4 v3, 0x0

    aget v23, v14, v3

    const/4 v3, 0x1

    aget v24, v14, v3

    const/16 v25, 0x0

    move-object/from16 v19, v8

    move-wide/from16 v20, p2

    move/from16 v22, p4

    invoke-static/range {v18 .. v25}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 1274
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    if-nez v3, :cond_6

    .line 1275
    const-wide/16 v5, -0x65

    cmp-long v3, p2, v5

    if-nez v3, :cond_a

    .line 1276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v0, v3, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v18, v0

    const/4 v3, 0x0

    aget v20, v14, v3

    const/4 v3, 0x1

    aget v21, v14, v3

    iget v0, v8, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    move/from16 v22, v0

    iget v0, v8, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    move/from16 v23, v0

    move-object/from16 v19, v8

    move/from16 v24, p4

    move-wide/from16 v25, p2

    invoke-virtual/range {v18 .. v26}, Lcom/android/launcher2/CellLayoutHotseat;->setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v3, v8}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    .line 1296
    :cond_6
    :goto_2
    if-eqz v4, :cond_0

    .line 1297
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->commitDeltas()V

    goto/16 :goto_0

    .line 1247
    :cond_7
    if-eqz v31, :cond_3

    .line 1251
    const/4 v3, 0x0

    aget v10, v31, v3

    const/4 v3, 0x1

    aget v11, v31, v3

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v30

    .line 1252
    .local v30, result:[I
    if-eqz v30, :cond_8

    const/16 v27, 0x1

    .line 1253
    :goto_3
    goto/16 :goto_1

    .line 1252
    :cond_8
    const/16 v27, 0x0

    goto :goto_3

    .line 1255
    .end local v30           #result:[I
    :cond_9
    const/16 p4, -0x1

    goto/16 :goto_1

    .line 1283
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    move/from16 v0, p4

    if-eq v0, v3, :cond_b

    .line 1284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1287
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/launcher2/CellLayout;

    .line 1288
    .local v29, page:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_c

    const/16 v32, 0x1

    .line 1289
    .local v32, wasPageEmpty:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v8}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 1291
    if-eqz v32, :cond_6

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_6

    .line 1292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->turnOffEmptyPageMsg()V

    goto :goto_2

    .line 1288
    .end local v32           #wasPageEmpty:Z
    :cond_c
    const/16 v32, 0x0

    goto :goto_4

    .line 1302
    .end local v4           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #realScreen:I
    .end local v14           #cellXY:[I
    .end local v27           #foundCellSpan:Z
    .end local v29           #page:Lcom/android/launcher2/CellLayout;
    .end local v31           #touchXY:[I
    :cond_d
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v28

    .line 1303
    .local v28, item:Lcom/android/launcher2/BaseItem;
    if-eqz v28, :cond_0

    move-object/from16 v0, v28

    instance-of v3, v0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v3, :cond_0

    .line 1304
    check-cast v28, Lcom/android/launcher2/HomeFolderItem;

    .end local v28           #item:Lcom/android/launcher2/BaseItem;
    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/16 v25, 0x0

    move-object/from16 v19, v8

    move-wide/from16 v20, p2

    move/from16 v22, p4

    move/from16 v23, p5

    move/from16 v24, p5

    invoke-static/range {v18 .. v25}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    goto/16 :goto_0
.end method

.method private static copyHomeItemToPendingAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;Lcom/android/launcher2/HomeItem;)V
    .locals 2
    .parameter "to"
    .parameter "from"

    .prologue
    .line 411
    iget-wide v0, p1, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->container:J

    .line 412
    iget v0, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->screen:I

    .line 413
    iget v0, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellX:I

    .line 414
    iget v0, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellY:I

    .line 415
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanX:I

    .line 416
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanY:I

    .line 417
    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    iput-object v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->dropPos:[I

    .line 418
    iget-boolean v0, p1, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->isSecretItem:Z

    .line 419
    return-void
.end method

.method private static copyPendingAddToHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeView$PendingAddArguments;)V
    .locals 2
    .parameter "to"
    .parameter "from"

    .prologue
    .line 396
    iget-wide v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->container:J

    iput-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    .line 397
    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->screen:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 398
    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellX:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 399
    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellY:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 400
    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanX:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 401
    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanY:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 402
    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->dropPos:[I

    iput-object v0, p0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 403
    iget-boolean v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->isSecretItem:Z

    iput-boolean v0, p0, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    .line 408
    return-void
.end method

.method private copySpans([I[I)V
    .locals 3
    .parameter "dst"
    .parameter "src"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1312
    array-length v0, p2

    if-ne v0, v2, :cond_0

    array-length v0, p1

    if-eq v0, v2, :cond_1

    .line 1313
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad array passed to copySpans src "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") dst "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1316
    :cond_1
    array-length v0, p2

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1317
    return-void
.end method

.method private copyToPendingAddInfo(Lcom/android/launcher2/HomePendingWidget;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v1, p1, Lcom/android/launcher2/HomePendingWidget;->container:J

    iput-wide v1, v0, Lcom/android/launcher2/HomeItem;->container:J

    .line 1759
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->mScreen:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 1760
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->cellX:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1761
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->cellY:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1762
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->spanX:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 1763
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->spanY:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 1764
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v1, p1, Lcom/android/launcher2/HomePendingWidget;->dropPos:[I

    iput-object v1, v0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 1765
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-boolean v1, p1, Lcom/android/launcher2/HomePendingWidget;->mSecretItem:Z

    iput-boolean v1, v0, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    .line 1766
    return-void
.end method

.method private createWorkspaceChildren()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 939
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    .line 940
    .local v4, screenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 941
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f030053

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 944
    .local v0, cell:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 945
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 946
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v3, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 949
    .restart local v3       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v0, v3}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 950
    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->determineEmptyPageMsgVisibility(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setEmptyMessageVisibility(I)V

    .line 940
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 950
    :cond_1
    const/16 v5, 0x8

    goto :goto_1

    .line 953
    .end local v0           #cell:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    .line 954
    .local v1, homeScreenIndex:I
    if-ltz v1, :cond_3

    if-lt v1, v4, :cond_4

    .line 955
    :cond_3
    if-gez v1, :cond_5

    move v1, v6

    .line 956
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    .line 958
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 959
    return-void

    .line 955
    :cond_5
    add-int/lit8 v1, v4, -0x1

    goto :goto_2
.end method

.method public static findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z
    .locals 10
    .parameter "pos"
    .parameter "screen"
    .parameter "context"
    .parameter "dropPos"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "showFullToast"

    .prologue
    .line 4012
    if-nez p3, :cond_1

    .line 4013
    const/4 v5, 0x0

    .line 4062
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v8, p2

    .line 4015
    check-cast v8, Lcom/android/launcher2/Launcher;

    iget-object v8, v8, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    .line 4017
    .local v7, ws:Lcom/android/launcher2/Workspace;
    const/4 v8, -0x1

    if-ne p1, v8, :cond_2

    .line 4018
    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result p1

    .line 4020
    :cond_2
    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 4022
    .local v1, count:I
    const/4 v5, 0x0

    .line 4024
    .local v5, rc:Z
    const/4 v6, 0x0

    .line 4026
    .local v6, reachedEnd:Z
    if-eqz p0, :cond_3

    array-length v8, p0

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    .line 4027
    :cond_3
    const/4 v8, 0x2

    new-array p0, v8, [I

    .line 4029
    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p3, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    .line 4030
    move v3, p1

    .line 4031
    .local v3, i:I
    :goto_1
    if-lt v3, v1, :cond_5

    .line 4032
    const/4 v3, 0x0

    .line 4033
    const/4 v6, 0x1

    .line 4035
    :cond_5
    if-eqz v6, :cond_7

    if-lt v3, p1, :cond_7

    .line 4049
    :goto_2
    if-nez v5, :cond_6

    .line 4050
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->newPage(Z)I

    move-result v4

    .line 4051
    .local v4, newPage:I
    const/high16 v8, -0x8000

    if-eq v4, v8, :cond_6

    .line 4052
    invoke-virtual {v7, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 4053
    .local v2, currentPage:Lcom/android/launcher2/CellLayout;
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v2, p0, v8, v9}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4054
    const/4 v8, 0x0

    aget v8, p0, v8

    const/4 v9, 0x1

    aget v9, p0, v9

    invoke-virtual {p3, v2, v4, v8, v9}, Lcom/android/launcher2/HomeView$DropPos;->assign(Lcom/android/launcher2/CellLayout;III)V

    .line 4055
    const/4 v5, 0x1

    .line 4059
    .end local v2           #currentPage:Lcom/android/launcher2/CellLayout;
    .end local v4           #newPage:I
    :cond_6
    iget-boolean v8, p3, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v8, :cond_0

    if-eqz p6, :cond_0

    .line 4060
    invoke-static {p2}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage(Landroid/content/Context;)V

    goto :goto_0

    .line 4038
    :cond_7
    invoke-virtual {v7, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4039
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_9

    instance-of v8, v0, Lcom/android/launcher2/CellLayout;

    if-eqz v8, :cond_9

    move-object v2, v0

    .line 4040
    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 4041
    .restart local v2       #currentPage:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2, p0, p4, p5}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 4042
    const/4 v8, 0x0

    aget v8, p0, v8

    const/4 v9, 0x1

    aget v9, p0, v9

    invoke-virtual {p3, v2, v3, v8, v9}, Lcom/android/launcher2/HomeView$DropPos;->assign(Lcom/android/launcher2/CellLayout;III)V

    .line 4043
    const/4 v5, 0x1

    .line 4044
    if-ne v3, p1, :cond_8

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, p3, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 4030
    .end local v2           #currentPage:Lcom/android/launcher2/CellLayout;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "activityName"

    .prologue
    .line 2638
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2640
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2642
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 2643
    const-string v6, "com.android.launcher.toolbar_icon"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2644
    .local v1, iconResId:I
    if-eqz v1, :cond_0

    .line 2645
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v5

    .line 2646
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 2658
    .end local v1           #iconResId:I
    .end local v2           #metaData:Landroid/os/Bundle;
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v5           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v6

    .line 2649
    :catch_0
    move-exception v0

    .line 2651
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2658
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2653
    :catch_1
    move-exception v3

    .line 2655
    .local v3, nfe:Landroid/content/res/Resources$NotFoundException;
    sget-boolean v6, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getFolderById(J)Lcom/android/launcher2/HomeFolderItem;
    .locals 2
    .parameter "id"

    .prologue
    .line 3896
    sget-object v0, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    return-object v0
.end method

.method private isFavoritesInNormalMode()Z
    .locals 2

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .line 935
    .local v0, provider:Lcom/android/launcher2/LauncherProvider;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider;->isFavoritesInNormalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 2119
    :cond_0
    return-void
.end method

.method private performOnHomePressed(Z)V
    .locals 11
    .parameter "moveToDefaultScreen"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f070072

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 718
    const-string v4, "Launcher.HomeView"

    const-string v6, "performOnHomePressed"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 720
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v5

    iput v5, v4, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    .line 721
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v4, :cond_0

    .line 726
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_2

    .line 727
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getIsDragOccuring()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 732
    :cond_2
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_4

    .line 733
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 734
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 735
    invoke-static {v8}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 736
    invoke-static {v8}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 737
    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    .line 747
    :goto_1
    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v4

    if-nez v4, :cond_6

    .line 748
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    .line 749
    .local v2, homeScreenIndex:I
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v1

    .line 750
    .local v1, currentPage:I
    if-ne v2, v1, :cond_6

    sget-boolean v4, Lcom/android/launcher2/Launcher;->mIsExpandStatusBar:Z

    if-nez v4, :cond_6

    .line 751
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/launcher2/HomeView;->MAGAZINE_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "getUsingHomekeySetting()"

    invoke-virtual {v4, v6, v7, v10, v10}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 752
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_5

    move v3, v5

    .line 754
    .local v3, isUsingHomekeyEnabled:Z
    :goto_2
    if-eqz v3, :cond_6

    .line 755
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Launcher;->startMagazineApp(Z)V

    .line 756
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->closeFolder()V

    goto :goto_0

    .line 740
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #currentPage:I
    .end local v2           #homeScreenIndex:I
    .end local v3           #isUsingHomekeyEnabled:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 743
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 752
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #currentPage:I
    .restart local v2       #homeScreenIndex:I
    :cond_5
    const-string v4, "return getUsingHomekeySetting()"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_2

    .line 762
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #currentPage:I
    .end local v2           #homeScreenIndex:I
    :cond_6
    if-eqz p1, :cond_7

    .line 763
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    .line 765
    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 766
    iput-boolean v5, p0, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    goto/16 :goto_0
.end method

.method private reAddCreatedPageForDragIfNeeded(Lcom/android/launcher2/CellLayout;JILcom/android/launcher2/HomeItem;)Lcom/android/launcher2/CellLayout;
    .locals 5
    .parameter "layout"
    .parameter "container"
    .parameter "screen"
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1193
    if-nez p1, :cond_0

    const-wide/16 v1, -0x64

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getChildCount()I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v1

    if-ne p4, v1, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 1197
    .local v0, temp:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 1198
    move-object p1, v0

    .line 1201
    .end local v0           #temp:Lcom/android/launcher2/CellLayout;
    :cond_0
    iget-boolean v1, p5, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 1202
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p4, v3, v4}, Lcom/android/launcher2/Workspace;->insertWorkspaceSecretScreen(IZZ)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 1203
    .restart local v0       #temp:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_1

    .line 1204
    move-object p1, v0

    .line 1208
    .end local v0           #temp:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-object p1
.end method

.method private registerContentObservers()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2102
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2103
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2106
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isHelpHubAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2107
    const-string v2, "content://com.samsung.helphub.provider/help_page_status/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2108
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHelphubObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2110
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 4688
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4689
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 4690
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4692
    :cond_0
    return-void
.end method

.method private resetAddInfo()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1651
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/launcher2/HomeItem;->container:J

    .line 1652
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 1653
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v3, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1654
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v3, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 1655
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 1656
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    .line 1657
    return-void
.end method

.method private restoreState(Lcom/android/launcher2/HomeView$SavedState;)V
    .locals 14
    .parameter "ss"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v13, -0x1

    .line 644
    if-nez p1, :cond_0

    .line 686
    :goto_0
    return-void

    .line 648
    :cond_0
    iget v0, p1, Lcom/android/launcher2/HomeView$SavedState;->currentScreen:I

    .line 649
    .local v0, currentScreen:I
    if-le v0, v13, :cond_1

    .line 650
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 653
    :cond_1
    iget-wide v3, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddContainer:J

    .line 654
    .local v3, pendingAddContainer:J
    iget v5, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddScreen:I

    .line 656
    .local v5, pendingAddScreen:I
    const-wide/16 v11, -0x1

    cmp-long v8, v3, v11

    if-eqz v8, :cond_3

    if-le v5, v13, :cond_3

    .line 657
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-wide v3, v8, Lcom/android/launcher2/HomeItem;->container:J

    .line 658
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v5, v8, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 659
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v11, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellX:I

    iput v11, v8, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 660
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v11, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellY:I

    iput v11, v8, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 661
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v11, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanX:I

    iput v11, v8, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 662
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v11, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanY:I

    iput v11, v8, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 663
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v8, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSecretItem:I

    if-ne v8, v9, :cond_6

    move v8, v9

    :goto_1
    iput-boolean v8, v11, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    .line 664
    iget v1, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPosX:I

    .line 665
    .local v1, dropPosX:I
    iget v2, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPoxY:I

    .line 666
    .local v2, dropPosY:I
    if-eq v13, v1, :cond_2

    if-eq v13, v2, :cond_2

    .line 667
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v11, 0x2

    new-array v11, v11, [I

    iput-object v11, v8, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 668
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v8, v8, Lcom/android/launcher2/HomeItem;->dropPos:[I

    aput v1, v8, v10

    .line 669
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v8, v8, Lcom/android/launcher2/HomeItem;->dropPos:[I

    aput v2, v8, v9

    .line 671
    :cond_2
    iput-boolean v9, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    .line 673
    .end local v1           #dropPosX:I
    .end local v2           #dropPosY:I
    :cond_3
    iget-object v8, p1, Lcom/android/launcher2/HomeView$SavedState;->folderBundle:Landroid/os/Bundle;

    iput-object v8, p0, Lcom/android/launcher2/HomeView;->mFolderBundle:Landroid/os/Bundle;

    .line 674
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mFolderBundle:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 678
    iget v6, p1, Lcom/android/launcher2/HomeView$SavedState;->darkenLayerVisibility:I

    .line 679
    .local v6, visibility:I
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 681
    .end local v6           #visibility:I
    :cond_4
    iget-boolean v7, p1, Lcom/android/launcher2/HomeView$SavedState;->inQuickView:Z

    .line 682
    .local v7, wasInQuickView:Z
    if-eqz v7, :cond_5

    .line 683
    invoke-virtual {p0, p1, v10}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    .line 685
    :cond_5
    iput-boolean v10, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    goto :goto_0

    .end local v7           #wasInQuickView:Z
    :cond_6
    move v8, v10

    .line 663
    goto :goto_1
.end method

.method private sendAdvanceMessage(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 1521
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1522
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1523
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceSentTime:J

    .line 1525
    return-void
.end method

.method private setStartPosition(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 4696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/HomeView;->mDownMotionX:F

    .line 4697
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/HomeView;->mDownMotionY:F

    .line 4698
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4699
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 4700
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsStartFlickUp:Z

    .line 4701
    return-void
.end method

.method private setupViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 806
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 807
    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Workspace;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 808
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace;->setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V

    .line 810
    const v0, 0x7f0700b8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/QuickViewWorkspace;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    .line 811
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setWorkspace(Lcom/android/launcher2/Workspace;)V

    .line 812
    const v0, 0x7f0700b9

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/QuickViewDragBar;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

    .line 814
    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    .line 815
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 817
    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    .line 819
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getCpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    .line 822
    const v0, 0x7f070062

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Hotseat;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 823
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/HomeView;)V

    .line 841
    :cond_0
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->setup(Lcom/android/launcher2/HomeView;)V

    .line 844
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_1

    .line 845
    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    .line 846
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeEditButtonListener:Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeEditButtonListener:Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 852
    :cond_1
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeEditBar;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    .line 853
    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    .line 854
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 855
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 856
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->ALLAPPS_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 857
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mAllAppsIconTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 861
    :cond_2
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 862
    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeMagazineSoftKey;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mMagazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;

    .line 863
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mMagazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mMagazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/HomeMagazineSoftKey;->setup(Lcom/android/launcher2/HomeView;)V

    .line 867
    :cond_3
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_5

    .line 868
    const v0, 0x7f07006c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    .line 869
    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mEditIconDivider:Landroid/view/View;

    .line 870
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 871
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 872
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 873
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->ALLAPPS_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 875
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mEditIconDivider:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 876
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mEditIconDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 896
    :cond_5
    const v0, 0x7f07006b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    .line 899
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 900
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 901
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace;->setup(Lcom/android/launcher2/HomeView;)V

    .line 903
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->createWorkspaceChildren()V

    .line 905
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 906
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->isFavoritesInNormalMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mFavoritesModeIsNormal:Z

    .line 909
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_7

    .line 910
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 911
    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v0, :cond_8

    .line 912
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 913
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v0, :cond_9

    .line 914
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 915
    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    if-eqz v0, :cond_a

    .line 916
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 926
    :cond_a
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v0, :cond_b

    .line 927
    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mLightEffectImage:Landroid/widget/ImageView;

    .line 928
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mLightEffectImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mLightEffectAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 930
    :cond_b
    return-void
.end method

.method public static showOutOfSpaceMessage(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1616
    const v0, 0x7f0e001a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1617
    return-void
.end method

.method private updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .parameter "buttonId"
    .parameter "activityName"
    .parameter "fallbackDrawableId"

    .prologue
    .line 2690
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2691
    .local v0, button:Landroid/widget/ImageView;
    invoke-direct {p0, p2}, Lcom/android/launcher2/HomeView;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2693
    .local v1, toolbarIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2696
    if-nez v1, :cond_1

    .line 2697
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2703
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    :goto_1
    return-object v2

    .line 2699
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2703
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 8
    .parameter "buttonId"
    .parameter "activityName"
    .parameter "fallbackDrawableId"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2666
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2667
    .local v0, button:Landroid/widget/TextView;
    invoke-direct {p0, p2}, Lcom/android/launcher2/HomeView;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2668
    .local v3, toolbarIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2669
    .local v2, r:Landroid/content/res/Resources;
    const v6, 0x7f0c0076

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2670
    .local v4, w:I
    const v6, 0x7f0c0077

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2673
    .local v1, h:I
    if-nez v3, :cond_0

    .line 2674
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2675
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2676
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2681
    :goto_0
    return-object v5

    .line 2679
    :cond_0
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2680
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2681
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public HelpAppAddwidget()Lcom/android/launcher2/HomeWidgetItem;
    .locals 21

    .prologue
    .line 4150
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    .line 4152
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .line 4156
    .local v19, screen:I
    const/4 v2, 0x2

    new-array v12, v2, [I

    fill-array-data v12, :array_0

    .line 4158
    .local v12, cellXY:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v20, v0

    .line 4159
    .local v20, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v10

    .line 4160
    .local v10, appWidgetId:I
    const-string v17, "com.android.email"

    .line 4161
    .local v17, pkgName:Ljava/lang/String;
    const-string v13, "com.android.email.provider.WidgetProvider"

    .line 4162
    .local v13, className:Ljava/lang/String;
    new-instance v18, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4163
    .local v18, provider:Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v10, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    .line 4164
    sget-object v2, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 4165
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 4167
    const/4 v2, -0x1

    if-ne v10, v2, :cond_0

    const/4 v3, 0x0

    .line 4220
    :goto_0
    return-object v3

    .line 4169
    :cond_0
    new-instance v15, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v15}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 4172
    .local v15, newAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4173
    .local v11, appWidgetInfos:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v11

    .line 4175
    const/4 v14, 0x0

    .local v14, j:I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_1

    .line 4177
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4181
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #newAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;
    check-cast v15, Landroid/appwidget/AppWidgetProviderInfo;

    .line 4185
    .restart local v15       #newAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    new-instance v3, Lcom/android/launcher2/HomeWidgetItem;

    invoke-direct {v3, v15, v10}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    .line 4187
    .local v3, item:Lcom/android/launcher2/HomeWidgetItem;
    move/from16 v0, v19

    iput v0, v3, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    .line 4188
    const/4 v2, 0x0

    aget v2, v12, v2

    iput v2, v3, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    .line 4189
    const/4 v2, 0x1

    aget v2, v12, v2

    iput v2, v3, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    .line 4190
    const/4 v2, 0x3

    iput v2, v3, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    .line 4191
    const/4 v2, 0x3

    iput v2, v3, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    .line 4195
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_2

    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 4200
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-nez v2, :cond_4

    .line 4202
    const/4 v3, 0x0

    goto :goto_0

    .line 4175
    .end local v3           #item:Lcom/android/launcher2/HomeWidgetItem;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 4204
    .restart local v3       #item:Lcom/android/launcher2/HomeWidgetItem;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4, v10, v15}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 4205
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v10, v15}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 4206
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 4208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v4, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v16

    .line 4209
    .local v16, padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 4213
    .end local v16           #padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    :cond_5
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/high16 v4, 0x100

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetHostView;->setBackgroundColor(I)V

    .line 4214
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    iget v7, v3, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    iget v8, v3, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 4217
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v2, v2, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v4, 0x0

    const/16 v5, 0xde

    aput v5, v2, v4

    .line 4218
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v2, v2, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v4, 0x0

    const/16 v5, 0x113

    aput v5, v2, v4

    .line 4219
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0

    .line 4156
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    iget-object v1, p1, Lcom/android/launcher2/HomePendingWidget;->componentName:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/launcher2/HomeView$14;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/HomeView$14;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomePendingWidget;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppWidgetBinder;->allocateBindNew(Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V

    .line 1825
    return-void
.end method

.method addAppWidgetFromPick(Landroid/content/Intent;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 1661
    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1664
    .local v0, appWidgetId:I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/HomeView;->addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V

    .line 1665
    return-void
.end method

.method public addHelpAppPage()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3773
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    if-eqz v0, :cond_0

    .line 3782
    :goto_0
    return-void

    .line 3776
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->addPage()V

    .line 3777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    .line 3778
    iput-boolean v1, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    .line 3779
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->hidePageIndicator(Z)V

    .line 3780
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->disableRollNavigation()V

    .line 3781
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method public addItemToHomeScreen()V
    .locals 14

    .prologue
    const-wide/16 v2, -0x64

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 4225
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    if-eqz v0, :cond_1

    .line 4260
    :cond_0
    :goto_0
    return-void

    .line 4227
    :cond_1
    iget-object v13, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 4228
    .local v13, workspace:Lcom/android/launcher2/Workspace;
    if-eqz v13, :cond_0

    .line 4230
    iput-boolean v5, p0, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    .line 4231
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    .line 4232
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->disableRollNavigation()V

    .line 4234
    const/4 v0, 0x2

    new-array v11, v0, [I

    fill-array-data v11, :array_0

    .line 4235
    .local v11, spanXY:[I
    new-instance v8, Landroid/content/ComponentName;

    const-string v0, "com.sec.android.app.popupcalculator"

    const-string v4, "com.sec.android.app.popupcalculator.Calculator"

    invoke-direct {v8, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4236
    .local v8, cn:Landroid/content/ComponentName;
    new-instance v10, Lcom/android/launcher2/AppItem;

    invoke-direct {v10, v8, v7}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    .line 4237
    .local v10, item1:Lcom/android/launcher2/AppItem;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 4238
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4239
    invoke-virtual {v10}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    .line 4241
    .local v1, info:Lcom/android/launcher2/HomeShortcutItem;
    new-instance v1, Lcom/android/launcher2/HomeShortcutItem;

    .end local v1           #info:Lcom/android/launcher2/HomeShortcutItem;
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v1, v0}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 4242
    .restart local v1       #info:Lcom/android/launcher2/HomeShortcutItem;
    new-instance v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v12}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 4243
    .local v12, titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v0, v12, v9}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    .line 4244
    iget-object v0, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 4245
    iget-object v0, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 4247
    iput v7, v1, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    .line 4248
    iput v7, v1, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    .line 4249
    iput-wide v2, v1, Lcom/android/launcher2/HomeShortcutItem;->container:J

    .line 4250
    aget v0, v11, v7

    iput v0, v1, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    .line 4251
    aget v0, v11, v5

    iput v0, v1, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    .line 4252
    iput-object v9, v1, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 4253
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    .line 4254
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    iget v5, v1, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 4256
    invoke-virtual {v13, v1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 4257
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    .line 4258
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->invalidatePageData()V

    .line 4259
    invoke-virtual {v13, v7}, Lcom/android/launcher2/Workspace;->hidePageIndicator(Z)V

    goto :goto_0

    .line 4234
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public addPage()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 3796
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030053

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3798
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3799
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3800
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 3801
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3807
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3808
    .local v2, visibility:I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3809
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 3810
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    .line 3812
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    .line 3813
    return-void

    .line 3807
    .end local v2           #visibility:I
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public addSamsungWidgetFromDrop(Lcom/android/launcher2/HomePendingSamsungWidget;)Z
    .locals 5
    .parameter "pending"

    .prologue
    .line 1836
    const/4 v0, 0x0

    .line 1838
    .local v0, addOk:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->addSamsungWidget(Lcom/android/launcher2/HomePendingSamsungWidget;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1846
    :goto_0
    return v0

    .line 1839
    :catch_0
    move-exception v1

    .line 1840
    .local v1, e:Ljava/lang/SecurityException;
    const-string v2, "Launcher.HomeView"

    const-string v3, "Problem binding samsung widget. This should only happen when running in a separate process"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1842
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Widget is not running in the same process"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public addSurfaceWidgetFromDrop(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z
    .locals 5
    .parameter "pending"

    .prologue
    .line 1950
    const/4 v0, 0x0

    .line 1952
    .local v0, addOk:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->addSurfaceWidget(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1961
    :goto_0
    return v0

    .line 1953
    :catch_0
    move-exception v1

    .line 1954
    .local v1, e:Ljava/lang/SecurityException;
    const-string v2, "Launcher.HomeView"

    const-string v3, "Problem binding surface widget. This should only happen when running in a separate process"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1956
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Widget is not running in the same process"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1959
    const/4 v0, 0x0

    goto :goto_0
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .parameter "hostView"
    .parameter "appWidgetInfo"

    .prologue
    .line 1590
    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1597
    :cond_0
    :goto_0
    return-void

    .line 1591
    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1592
    .local v0, v:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    .line 1593
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    check-cast v0, Landroid/widget/Advanceable;

    .end local v0           #v:Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 1595
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    goto :goto_0
.end method

.method public bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 11
    .parameter "item"

    .prologue
    .line 2941
    const-wide/16 v3, 0x0

    .line 2945
    .local v3, start:J
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2947
    .local v5, workspace:Lcom/android/launcher2/Workspace;
    iget v6, p1, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    iget v7, v5, Lcom/android/launcher2/Workspace;->mCellCountX:I

    if-gt v6, v7, :cond_0

    iget v6, p1, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    iget v7, v5, Lcom/android/launcher2/Workspace;->mCellCountY:I

    if-le v6, v7, :cond_2

    .line 2948
    :cond_0
    const-string v6, "Launcher.HomeView"

    const-string v7, "Attempted to bind a widget larger than what will fit. Removing."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 3018
    :cond_1
    :goto_0
    return-void

    .line 2970
    :cond_2
    iget v6, p1, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 2972
    iget v0, p1, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    .line 2973
    .local v0, appWidgetId:I
    const/4 v1, 0x0

    .line 2975
    .local v1, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 2976
    if-nez v1, :cond_3

    iget-boolean v6, p1, Lcom/android/launcher2/HomeWidgetItem;->mSecretItem:Z

    if-eqz v6, :cond_3

    .line 2977
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v0}, Landroid/appwidget/AppWidgetManager;->getSecretAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 2979
    :cond_3
    if-nez v1, :cond_4

    .line 2983
    sget-boolean v6, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v6, :cond_1

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App widget info is null. AppWidgetID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2992
    :cond_4
    iget-object v6, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 2997
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-nez v6, :cond_6

    .line 2998
    const-string v6, "Launcher.HomeView"

    const-string v7, "mAppWidgetHost is null. Was HomeView.onDetachedFromWindow() called previously?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3001
    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v6

    iput-object v6, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 3003
    iget-object v6, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v6, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 3004
    iget-object v6, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v6, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 3006
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v7, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v2

    .line 3007
    .local v2, padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    iget-object v6, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v7, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    iget v8, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    iget v9, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    iget v10, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 3008
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v8, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget v9, p1, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    iget v10, p1, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    invoke-virtual {v7, v8, v6, v9, v10}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 3011
    .end local v2           #padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    :cond_7
    iget-object v6, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/high16 v7, 0x100

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetHostView;->setBackgroundColor(I)V

    .line 3012
    invoke-virtual {v5, p1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0
.end method

.method public bindFolders(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2817
    .local p1, folders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2818
    .local v0, changes:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem;

    .line 2819
    .local v1, folder:Lcom/android/launcher2/HomeFolderItem;
    invoke-virtual {v1, v0}, Lcom/android/launcher2/HomeFolderItem;->normalize(Ljava/util/List;)V

    goto :goto_0

    .line 2823
    .end local v1           #folder:Lcom/android/launcher2/HomeFolderItem;
    :cond_0
    sget-object v3, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2825
    sget-object v3, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2826
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2827
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 2829
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mFolderBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->restoreOpenFolder(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2834
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2835
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2838
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 2839
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2843
    :cond_3
    return-void
.end method

.method public bindHomeDeleteSecretPage()V
    .locals 5

    .prologue
    .line 3935
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    .line 3937
    .local v0, currentPage:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3938
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 3940
    .local v2, v:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3941
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->removeView(Landroid/view/View;)V

    .line 3942
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/launcher2/WorkspacePages;->deletePageAt(ILandroid/content/Context;)Z

    .line 3943
    add-int/lit8 v1, v1, -0x1

    .line 3937
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3947
    .end local v2           #v:Lcom/android/launcher2/CellLayout;
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3948
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 3951
    :goto_1
    return-void

    .line 3950
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_1
.end method

.method public bindHomeInsertSecretPage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3925
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v1

    .line 3926
    .local v1, toBeCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3927
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/launcher2/Workspace;->insertWorkspaceSecretScreen(IZZ)Lcom/android/launcher2/CellLayout;

    .line 3926
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3929
    :cond_0
    if-lez v1, :cond_1

    .line 3930
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 3931
    :cond_1
    return-void
.end method

.method public bindHomeItemsRemoved(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3156
    .local p1, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 3157
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V

    .line 3159
    :cond_0
    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "isBadgeUpdate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3145
    .local p1, updated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 3146
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->updateShortcutsAndSurfaceWidgets(Ljava/util/List;Z)V

    .line 3148
    :cond_0
    return-void
.end method

.method public bindHotseat(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2861
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    const-string v2, "Launcher.HomeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindHotseat :: items:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v2, :cond_0

    .line 2880
    :goto_0
    return-void

    .line 2867
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/launcher2/Hotseat;->normalizeContents(Landroid/content/Context;Ljava/util/List;)V

    .line 2868
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v2, v2, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutHotseat;->removeAllItems()V

    .line 2869
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v2, v2, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->beginBind(I)V

    .line 2870
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 2871
    .local v1, item:Lcom/android/launcher2/HomeItem;
    iget v2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-gez v2, :cond_1

    .line 2872
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 2874
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 2875
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 2877
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    goto :goto_1

    .line 2879
    .end local v1           #item:Lcom/android/launcher2/HomeItem;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v2, v2, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutHotseat;->endBind()V

    goto :goto_0
.end method

.method public bindItems(Ljava/util/List;II)V
    .locals 7
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2785
    .local p1, shortcuts:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2786
    .local v2, workspace:Lcom/android/launcher2/Workspace;
    if-nez v2, :cond_0

    .line 2808
    :goto_0
    return-void

    .line 2788
    :cond_0
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 2789
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 2794
    .local v1, item:Lcom/android/launcher2/HomeItem;
    iget-wide v3, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 2788
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2798
    :cond_1
    sget-object v3, Lcom/android/launcher2/HomeView$24;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v4, v1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v4}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 2802
    :pswitch_0
    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_2

    .line 2806
    .end local v1           #item:Lcom/android/launcher2/HomeItem;
    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    .line 2807
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->invalidatePageData()V

    goto :goto_0

    .line 2798
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bindSamsungWidget(Lcom/android/launcher2/SamsungWidgetItem;)V
    .locals 9
    .parameter "item"

    .prologue
    .line 3027
    const-wide/16 v3, 0x0

    .line 3031
    .local v3, start:J
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3032
    .local v5, workspace:Lcom/android/launcher2/Workspace;
    iget-object v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3033
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v2

    .line 3035
    .local v2, packageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;
    iget-object v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    const-string v7, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lcom/android/launcher2/SamsungWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/launcher2/SamsungWidgetProviderInfo;

    move-result-object v1

    .line 3037
    .local v1, info:Lcom/android/launcher2/SamsungWidgetProviderInfo;
    if-nez v1, :cond_1

    .line 3038
    sget-boolean v6, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find Samsung widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    :cond_0
    :goto_0
    return-void

    .line 3042
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v2, v6, v1, p1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungWidgetProviderInfo;Lcom/android/launcher2/SamsungWidgetItem;)Lcom/android/launcher2/SamsungWidgetItem;

    .line 3044
    iget-object v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    invoke-virtual {v6, p1}, Lcom/android/launcher2/SamsungWidgetView;->setTag(Ljava/lang/Object;)V

    .line 3046
    iget-object v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    const/high16 v7, 0x100

    invoke-virtual {v6, v7}, Lcom/android/launcher2/SamsungWidgetView;->setBackgroundColor(I)V

    .line 3047
    invoke-virtual {v5, p1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 3049
    iget v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->mScreen:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 3050
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnResume(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public bindSurfaceWidget(Lcom/android/launcher2/SurfaceWidgetItem;)V
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    .line 3065
    const-wide/16 v3, 0x0

    .line 3069
    .local v3, start:J
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3071
    .local v5, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 3072
    .local v0, cn:Landroid/content/ComponentName;
    sget-object v2, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 3073
    .local v2, packageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    invoke-virtual {v2, v0, v8}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v1

    .line 3074
    .local v1, info:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    if-nez v1, :cond_1

    .line 3075
    sget-boolean v6, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find Surface widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    :cond_0
    :goto_0
    return-void

    .line 3079
    :cond_1
    const-string v6, "SurfaceWidgetFlow"

    const-string v7, "making surface widget for rebinding"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v1, v8, v7}, Lcom/android/launcher2/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/android/launcher2/SurfaceWidgetView;Z)V

    .line 3083
    iget-object v6, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v6, :cond_0

    .line 3085
    invoke-virtual {v5, p1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 3087
    iget v6, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mScreen:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 3088
    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto :goto_0
.end method

.method public bindWidgetsAfterConfigChange()V
    .locals 1

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 3099
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->bindWidgetsAfterConfigChange()V

    .line 3100
    :cond_0
    return-void
.end method

.method public cancelClicksOnHome()V
    .locals 4

    .prologue
    .line 4110
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->cancelClicksOnChildrenForCurrentPage()V

    .line 4111
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v3, :cond_0

    .line 4112
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 4113
    .local v1, clChildren:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4114
    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4115
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 4113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4118
    .end local v0           #child:Landroid/view/View;
    .end local v1           #clChildren:Lcom/android/launcher2/CellLayoutChildren;
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method cancelRemovePage()V
    .locals 1

    .prologue
    .line 3524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    .line 3525
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    .line 3526
    return-void
.end method

.method public closeQuickViewWorkspace(Z)V
    .locals 8
    .parameter "immediate"

    .prologue
    const/4 v7, 0x0

    .line 3400
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3472
    :cond_0
    return-void

    .line 3403
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->close()V

    .line 3404
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/Workspace;->setHideItems(Z)V

    .line 3405
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v6, Lcom/android/launcher2/HomeView$20;

    invoke-direct {v6, p0, p1}, Lcom/android/launcher2/HomeView$20;-><init>(Lcom/android/launcher2/HomeView;Z)V

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 3456
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    .line 3457
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->updateVisiblePages()I

    .line 3458
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 3460
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 3461
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 3460
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3462
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3463
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 3464
    .local v1, clChildren:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 3465
    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3466
    .local v4, v:Landroid/view/View;
    instance-of v5, v4, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v5, :cond_4

    move-object v5, v4

    .line 3467
    check-cast v5, Lcom/android/launcher2/SurfaceWidgetView;

    const/4 v6, 0x4

    invoke-virtual {v5, v4, v6}, Lcom/android/launcher2/SurfaceWidgetView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 3464
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method closeSystemDialogs(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "isHomeKeyPressed"

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 1630
    .local v0, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V

    .line 1632
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1637
    .local v1, manager:Landroid/app/FragmentManager;
    invoke-static {v1}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 1638
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1639
    invoke-static {v1}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 1640
    :cond_0
    invoke-static {v1}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 1643
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    .line 1644
    return-void
.end method

.method public collectExitAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3555
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v1, 0x7f050005

    .line 3557
    .local v1, animatorId:I
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 3558
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 3559
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3560
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3562
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->setPivotX(F)V

    .line 3563
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->setPivotY(F)V

    .line 3564
    return-void
.end method

.method public collectShowAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3544
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050008

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 3545
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 3546
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3547
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3549
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->setPivotX(F)V

    .line 3550
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->setPivotY(F)V

    .line 3551
    return-void
.end method

.method completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;Ljava/lang/String;JZZ)V
    .locals 28
    .parameter "folderItem"
    .parameter "folderTitle"
    .parameter "destinationContainerId"
    .parameter "removeItem"
    .parameter "findNewPosition"

    .prologue
    .line 1074
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1075
    .local v4, activity:Landroid/app/Activity;
    if-eqz p1, :cond_0

    if-nez p6, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 1077
    :cond_0
    new-instance v5, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct {v5}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    .line 1078
    .local v5, dropPos:Lcom/android/launcher2/HomeView$DropPos;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1079
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    .line 1184
    .end local v5           #dropPos:Lcom/android/launcher2/HomeView$DropPos;
    :cond_1
    :goto_0
    return-void

    .line 1082
    .restart local v5       #dropPos:Lcom/android/launcher2/HomeView$DropPos;
    :cond_2
    const-wide/16 p3, -0x64

    .line 1083
    iget v10, v5, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    .line 1084
    .local v10, screen:I
    iget v11, v5, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    .line 1085
    .local v11, cellX:I
    iget v12, v5, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    .line 1093
    .end local v5           #dropPos:Lcom/android/launcher2/HomeView$DropPos;
    .local v12, cellY:I
    :goto_1
    const-wide/16 v2, -0x65

    cmp-long v2, p3, v2

    if-nez v2, :cond_a

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v22

    .line 1100
    .local v22, destinationPage:Lcom/android/launcher2/CellLayout;
    :goto_2
    const/16 v24, 0x0

    .line 1101
    .local v24, rc:Z
    if-eqz v22, :cond_7

    .line 1103
    new-instance v7, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v7}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    .line 1105
    .local v7, newFolder:Lcom/android/launcher2/HomeFolderItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v7, Lcom/android/launcher2/HomeFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1106
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/launcher2/HomeFolderItem;->viewForThisHasSeenLightOfDayBefore:Z

    .line 1112
    const/4 v13, 0x0

    move-object v6, v4

    move-wide/from16 v8, p3

    invoke-static/range {v6 .. v13}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 1114
    move-object/from16 v0, p2

    invoke-virtual {v7, v4, v0}, Lcom/android/launcher2/HomeFolderItem;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 1115
    if-eqz p1, :cond_5

    .line 1116
    if-eqz p5, :cond_4

    .line 1118
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v2, v2, v8

    if-nez v2, :cond_b

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v26

    .line 1133
    .local v26, sourcePage:Lcom/android/launcher2/CellLayout;
    :cond_3
    :goto_3
    if-eqz v26, :cond_4

    .line 1134
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 1137
    .end local v26           #sourcePage:Lcom/android/launcher2/CellLayout;
    :cond_4
    iget-wide v15, v7, Lcom/android/launcher2/HomeFolderItem;->mId:J

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    move/from16 v21, v0

    move-object v13, v4

    move-object/from16 v14, p1

    invoke-static/range {v13 .. v21}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    .line 1138
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 1141
    :cond_5
    const-wide/16 v2, -0x64

    cmp-long v2, p3, v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v10, v2, :cond_6

    .line 1142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1144
    :cond_6
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 1145
    const/16 v24, 0x1

    .line 1148
    const-wide/16 v2, -0x64

    cmp-long v2, p3, v2

    if-nez v2, :cond_7

    .line 1149
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    new-instance v3, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v3, v7}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/BaseItem;)V

    invoke-interface {v2, v3}, Lcom/android/launcher2/CellPositioner;->addDelta(Lcom/android/launcher2/PositionDelta;)V

    .line 1152
    .end local v7           #newFolder:Lcom/android/launcher2/HomeFolderItem;
    :cond_7
    if-nez v24, :cond_8

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    .line 1157
    :cond_8
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_e

    .line 1158
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "create_folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1159
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v27

    .line 1161
    .local v27, t:Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f03000f

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1162
    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    .line 1163
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/HomeView;->mIsAllAppsButtonDisable:Z

    .line 1164
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    .line 1165
    new-instance v23, Landroid/os/Handler;

    invoke-direct/range {v23 .. v23}, Landroid/os/Handler;-><init>()V

    .line 1166
    .local v23, handler:Landroid/os/Handler;
    new-instance v2, Lcom/android/launcher2/HomeView$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher2/HomeView$6;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v8, 0x384

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1087
    .end local v10           #screen:I
    .end local v11           #cellX:I
    .end local v12           #cellY:I
    .end local v22           #destinationPage:Lcom/android/launcher2/CellLayout;
    .end local v23           #handler:Landroid/os/Handler;
    .end local v24           #rc:Z
    .end local v27           #t:Landroid/widget/Toast;
    :cond_9
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    move-wide/from16 p3, v0

    .line 1088
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    .line 1089
    .restart local v10       #screen:I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    .line 1090
    .restart local v11       #cellX:I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    .restart local v12       #cellY:I
    goto/16 :goto_1

    .line 1097
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/CellLayout;

    .restart local v22       #destinationPage:Lcom/android/launcher2/CellLayout;
    goto/16 :goto_2

    .line 1120
    .restart local v7       #newFolder:Lcom/android/launcher2/HomeFolderItem;
    .restart local v24       #rc:Z
    :cond_b
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v2, v2, v8

    if-nez v2, :cond_c

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/CellLayout;

    .restart local v26       #sourcePage:Lcom/android/launcher2/CellLayout;
    goto/16 :goto_3

    .line 1125
    .end local v26           #sourcePage:Lcom/android/launcher2/CellLayout;
    :cond_c
    const/16 v26, 0x0

    .line 1126
    .restart local v26       #sourcePage:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    invoke-static {v2, v3}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v25

    .line 1127
    .local v25, sourceFolder:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v25, :cond_d

    .line 1128
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    goto/16 :goto_3

    .line 1130
    :cond_d
    sget-boolean v2, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v2, :cond_3

    const-string v2, "Launcher.HomeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "completeAddFolderWithShortcutItem. removeItem is true but container "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is unknown"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1176
    .end local v7           #newFolder:Lcom/android/launcher2/HomeFolderItem;
    .end local v25           #sourceFolder:Lcom/android/launcher2/HomeFolderItem;
    .end local v26           #sourcePage:Lcom/android/launcher2/CellLayout;
    :cond_e
    new-instance v23, Landroid/os/Handler;

    invoke-direct/range {v23 .. v23}, Landroid/os/Handler;-><init>()V

    .line 1177
    .restart local v23       #handler:Landroid/os/Handler;
    new-instance v2, Lcom/android/launcher2/HomeView$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher2/HomeView$7;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v8, 0x12c

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method createFolder(Lcom/android/launcher2/HomeFolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "item"
    .parameter "layoutResId"
    .parameter "parentView"

    .prologue
    .line 999
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v1}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher2/HomeFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1000
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .line 1001
    .local v0, folder:Lcom/android/launcher2/FolderIconView;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    .line 1002
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1003
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 1004
    return-object v0
.end method

.method createShortcut(Lcom/android/launcher2/HomeShortcutItem;I)Landroid/view/View;
    .locals 3
    .parameter "item"
    .parameter "layoutResId"

    .prologue
    .line 1015
    invoke-static {p1}, Lcom/android/launcher2/AppIconView;->getHomeIconLayout(Lcom/android/launcher2/BaseItem;)I

    move-result v0

    .line 1016
    .local v0, layout:I
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/HomeView;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "info"
    .parameter "layoutResId"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1030
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, p2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 1031
    .local v0, favorite:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    .line 1032
    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1033
    iget v4, p1, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    if-lez v4, :cond_0

    .line 1034
    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 1037
    :cond_0
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-boolean v4, v4, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    if-nez v4, :cond_2

    .line 1038
    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v5, "addapps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1039
    sput-boolean v7, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 1040
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1041
    .local v3, t:Landroid/widget/Toast;
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f03000f

    invoke-static {v4, v5, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1042
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1043
    sput-boolean v7, Lcom/android/launcher2/HomeView;->mIsAllAppsButtonDisable:Z

    .line 1044
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1045
    .local v1, handler:Landroid/os/Handler;
    new-instance v4, Lcom/android/launcher2/HomeView$5;

    invoke-direct {v4, p0}, Lcom/android/launcher2/HomeView$5;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1055
    .end local v1           #handler:Landroid/os/Handler;
    .end local v3           #t:Landroid/widget/Toast;
    :cond_1
    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v5, "add_widgets"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1056
    const/4 v2, 0x0

    .line 1057
    .local v2, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v2, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v2           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .line 1058
    .restart local v2       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v2, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v2           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v2}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_step3()V

    .line 1063
    :cond_2
    return-object v0
.end method

.method public deletePage(I)V
    .locals 18
    .parameter "page"

    .prologue
    .line 3817
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 3818
    .local v2, cell:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    .line 3819
    .local v8, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    const/4 v5, 0x1

    .line 3824
    .local v5, isSecret:Z
    :goto_0
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_4

    .line 3825
    invoke-virtual {v8, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 3827
    .local v11, view:Landroid/view/View;
    instance-of v14, v11, Lcom/android/launcher2/Folder;

    if-eqz v14, :cond_1

    .line 3824
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3819
    .end local v4           #i:I
    .end local v5           #isSecret:Z
    .end local v11           #view:Landroid/view/View;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 3835
    .restart local v4       #i:I
    .restart local v5       #isSecret:Z
    .restart local v11       #view:Landroid/view/View;
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeItem;

    .line 3837
    .local v6, item:Lcom/android/launcher2/HomeItem;
    instance-of v14, v6, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v14, :cond_3

    move-object v12, v6

    .line 3838
    check-cast v12, Lcom/android/launcher2/HomeWidgetItem;

    .line 3839
    .local v12, widgetItem:Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 3840
    .local v1, appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    if-eqz v1, :cond_2

    .line 3841
    iget v14, v12, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v1, v14}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 3848
    .end local v1           #appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    .end local v12           #widgetItem:Lcom/android/launcher2/HomeWidgetItem;
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14, v6}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_2

    .line 3843
    :cond_3
    instance-of v14, v6, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v14, :cond_2

    .line 3844
    const-string v14, "SurfaceWidgetFlow"

    const-string v15, "destroying surface widget with delete page"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v6

    .line 3845
    check-cast v14, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v15

    sget-object v16, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Lcom/android/launcher2/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V

    goto :goto_3

    .line 3852
    .end local v6           #item:Lcom/android/launcher2/HomeItem;
    .end local v11           #view:Landroid/view/View;
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3853
    .local v9, toSave:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v3

    .line 3855
    .local v3, count:I
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_6

    .line 3856
    move/from16 v0, p1

    if-gt v4, v0, :cond_5

    .line 3855
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3860
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14, v4}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v7

    .line 3861
    .local v7, l:Lcom/android/launcher2/CellLayoutChildren;
    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v7, v14, v9}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    goto :goto_5

    .line 3865
    .end local v7           #l:Lcom/android/launcher2/CellLayoutChildren;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14, v9}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 3867
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3868
    .local v10, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14, v10}, Lcom/android/launcher2/Workspace;->removeView(Landroid/view/View;)V

    .line 3869
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v14

    move/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/launcher2/WorkspacePages;->deletePageAt(ILandroid/content/Context;)Z

    .line 3871
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v13

    .line 3872
    .local v13, workScreenCount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v14

    if-gt v13, v14, :cond_7

    .line 3873
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    add-int/lit8 v15, v13, -0x1

    invoke-virtual {v14, v15}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 3876
    :cond_7
    if-eqz v5, :cond_8

    .line 3877
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->saveSecretScreenInfo()V

    .line 3880
    :goto_6
    return-void

    .line 3879
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    goto :goto_6
.end method

.method public determineEmptyPageMsgVisibility(I)Z
    .locals 3
    .parameter "pageIndex"

    .prologue
    .line 4097
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v0

    .line 4100
    .local v0, allowEmptyMessage:Z
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/launcher2/WorkspacePages;->pageHasAlwaysBeenEmpty(ILandroid/content/Context;)Z

    move-result v1

    .line 4102
    .local v1, isPageEmpty:Z
    and-int/2addr v0, v1

    .line 4103
    return v0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 4551
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/DragState;

    if-nez v2, :cond_0

    .line 4561
    :goto_0
    return v1

    .line 4552
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState;

    .line 4554
    .local v0, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 4555
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    .line 4556
    sput-boolean v3, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    .line 4561
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_0

    .line 4557
    :cond_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 4558
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    .line 4559
    sput-boolean v1, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 4399
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 3605
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3606
    const-string v1, "Debug logs: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3607
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3610
    :cond_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 3590
    sget-boolean v0, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 3591
    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    .line 3599
    const-string v0, "Launcher.HomeView"

    const-string v1, "END launcher2 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    :cond_0
    return-void
.end method

.method public findItemById(J)Lcom/android/launcher2/HomeItem;
    .locals 6
    .parameter "id"

    .prologue
    .line 4070
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 4071
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 4072
    .local v2, page:Lcom/android/launcher2/CellLayoutChildren;
    iget-object v4, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    .line 4073
    .local v3, pageItem:Lcom/android/launcher2/BaseItem;
    iget-wide v4, v3, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 4074
    check-cast v3, Lcom/android/launcher2/HomeItem;

    .line 4084
    .end local v2           #page:Lcom/android/launcher2/CellLayoutChildren;
    .end local v3           #pageItem:Lcom/android/launcher2/BaseItem;
    :goto_1
    return-object v3

    .line 4070
    .restart local v2       #page:Lcom/android/launcher2/CellLayoutChildren;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4079
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #page:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    .line 4080
    .restart local v3       #pageItem:Lcom/android/launcher2/BaseItem;
    iget-wide v4, v3, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    .line 4081
    check-cast v3, Lcom/android/launcher2/HomeItem;

    goto :goto_1

    .line 4084
    .end local v3           #pageItem:Lcom/android/launcher2/BaseItem;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public finishBindingItems()V
    .locals 4

    .prologue
    .line 3109
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_0

    .line 3137
    :goto_0
    return-void

    .line 3113
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    if-eqz v2, :cond_2

    .line 3114
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3115
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3116
    .local v0, currentPage:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3117
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3120
    .end local v0           #currentPage:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    .line 3123
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    .line 3127
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v2, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3128
    sget-object v2, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeView$PendingAddArguments;

    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeView;->completeAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;)Z

    .line 3127
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3130
    :cond_3
    sget-object v2, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3132
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3133
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 3136
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->addAnyPendingWidgetsToWorkspace()V

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 4314
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method getAllAppsIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCellLayout(JI)Lcom/android/launcher2/CellLayout;
    .locals 2
    .parameter "container"
    .parameter "screen"

    .prologue
    .line 2556
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2557
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 2558
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 2563
    :goto_0
    return-object v0

    .line 2560
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2563
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public getCurrentDragItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    .prologue
    .line 3970
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 3643
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getCurrentResizeWidgetItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    .prologue
    .line 3962
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method public getDarkenView()Landroid/view/View;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    return-object v0
.end method

.method public getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;
    .locals 1

    .prologue
    .line 3743
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

    return-object v0
.end method

.method getEditBar()Lcom/android/launcher2/HomeEditBar;
    .locals 1

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    return-object v0
.end method

.method getHomeContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    return-object v0
.end method

.method getHomeDarkenLayer()Landroid/view/View;
    .locals 1

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    return-object v0
.end method

.method getHomeEditTitleBar()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    .prologue
    .line 2507
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method public getHotseatItemcount()I
    .locals 1

    .prologue
    .line 4263
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 4264
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v0, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 4265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLauncherModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 3954
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getMagazineSoftKey()Lcom/android/launcher2/HomeMagazineSoftKey;
    .locals 1

    .prologue
    .line 4663
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mMagazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 3653
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getNumSecretPages()I
    .locals 1

    .prologue
    .line 3658
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPage(I)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPage(I)Lcom/android/launcher2/CellLayout;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 3648
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 3761
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v0, :cond_0

    .line 3762
    const/4 v0, 0x0

    .line 3765
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPageHorizontalOffset()I
    .locals 4

    .prologue
    .line 3706
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v1

    .line 3707
    .local v1, w:I
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 3708
    .local v0, s:I
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getPageSpacing()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public getPagesLocationOnScreen([I)V
    .locals 1
    .parameter "location"

    .prologue
    .line 3701
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 3702
    return-void
.end method

.method public getPagesTop()I
    .locals 2

    .prologue
    .line 3713
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getPanelBackgroundAlpha()F
    .locals 1

    .prologue
    .line 4571
    iget v0, p0, Lcom/android/launcher2/HomeView;->mPanelBackgroundAlpha:F

    return v0
.end method

.method public getPkgResCache()Lcom/android/launcher2/PkgResCache;
    .locals 1

    .prologue
    .line 4066
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method getQuickLaunch()Lcom/android/launcher2/QuickLaunch;
    .locals 1

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;
    .locals 1

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;
    .locals 1

    .prologue
    .line 3475
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    return-object v0
.end method

.method getTopBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    return-object v0
.end method

.method getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    .prologue
    .line 2568
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method public getWorkspaceLoading()Z
    .locals 1

    .prologue
    .line 3921
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    return v0
.end method

.method public handleResizeWidget()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4631
    const/4 v1, 0x0

    .line 4632
    .local v1, isHandled:Z
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    .line 4633
    .local v3, workspace:Lcom/android/launcher2/Workspace;
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v5, :cond_1

    sget v4, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    sget-boolean v4, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    if-eqz v4, :cond_1

    .line 4635
    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 4636
    const-string v4, "resize_widgets"

    sget-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4637
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 4638
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 4639
    .local v2, t:Landroid/widget/Toast;
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f03000f

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 4640
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4641
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4642
    .local v0, handler:Landroid/os/Handler;
    new-instance v4, Lcom/android/launcher2/HomeView$22;

    invoke-direct {v4, p0}, Lcom/android/launcher2/HomeView$22;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4656
    .end local v0           #handler:Landroid/os/Handler;
    .end local v2           #t:Landroid/widget/Toast;
    :cond_0
    const/4 v1, 0x1

    .line 4658
    :cond_1
    return v1
.end method

.method public helpHubSnapToLastPage()V
    .locals 2

    .prologue
    .line 4623
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 4624
    return-void
.end method

.method hideHotseat(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    const/4 v1, 0x0

    .line 2623
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 2624
    if-eqz p1, :cond_1

    .line 2625
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xaf

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2630
    :cond_0
    :goto_0
    return-void

    .line 2627
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method public isDeleteWorkScreenPopup()Z
    .locals 1

    .prologue
    .line 3539
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    return v0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 1
    .parameter "layout"

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncludeItem(I)Z
    .locals 3
    .parameter "page"

    .prologue
    const/4 v2, 0x0

    .line 3755
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    .line 3756
    .local v0, layout:Lcom/android/launcher2/CellLayoutChildren;
    if-nez v0, :cond_0

    .line 3757
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 4323
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 1647
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public movePage(II)V
    .locals 8
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 3663
    if-ne p1, p2, :cond_0

    .line 3697
    :goto_0
    return-void

    .line 3665
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {p1, p2, v7}, Lcom/android/launcher2/WorkspacePages;->movePage(IILandroid/content/Context;)Z

    .line 3666
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    .line 3668
    .local v1, homeIndex:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3669
    .local v6, toSave:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 3671
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3672
    if-ne v2, p1, :cond_2

    move v5, p2

    .line 3677
    .local v5, newi:I
    :goto_2
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->removeChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 3679
    .local v3, l:Lcom/android/launcher2/CellLayoutChildren;
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v5}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 3680
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Lcom/android/launcher2/CellLayout;->addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;I)V

    .line 3682
    invoke-virtual {v3, v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    .line 3684
    if-ltz v1, :cond_1

    if-ne v2, v1, :cond_1

    .line 3685
    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeView;->setHomeScreenAt(I)V

    .line 3686
    const/4 v1, -0x1

    .line 3671
    .end local v3           #l:Lcom/android/launcher2/CellLayoutChildren;
    .end local v4           #layout:Lcom/android/launcher2/CellLayout;
    .end local v5           #newi:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3673
    :cond_2
    if-le v2, p1, :cond_3

    if-gt v2, p2, :cond_3

    add-int/lit8 v5, v2, -0x1

    .restart local v5       #newi:I
    goto :goto_2

    .line 3674
    .end local v5           #newi:I
    :cond_3
    if-ge v2, p1, :cond_1

    if-lt v2, p2, :cond_1

    add-int/lit8 v5, v2, 0x1

    .restart local v5       #newi:I
    goto :goto_2

    .line 3692
    .end local v5           #newi:I
    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_5

    .line 3693
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->reset()V

    .line 3692
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3696
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 4270
    iput-boolean v9, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    .line 4278
    if-ne p2, v8, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v4, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 4279
    new-instance v2, Lcom/android/launcher2/HomeView$PendingAddArguments;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/launcher2/HomeView$PendingAddArguments;-><init>(Lcom/android/launcher2/HomeView$1;)V

    .line 4280
    .local v2, args:Lcom/android/launcher2/HomeView$PendingAddArguments;
    iput p1, v2, Lcom/android/launcher2/HomeView$PendingAddArguments;->requestCode:I

    .line 4281
    iput-object p3, v2, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 4282
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    invoke-static {v2, v4}, Lcom/android/launcher2/HomeView;->copyHomeItemToPendingAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;Lcom/android/launcher2/HomeItem;)V

    .line 4285
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4286
    sget-object v4, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4300
    .end local v2           #args:Lcom/android/launcher2/HomeView$PendingAddArguments;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 4301
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    const-string v4, "com.android.launcher2.prefs"

    invoke-virtual {v0, v4, v9}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 4302
    .local v3, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v4, "tempScreen"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4303
    const-string v4, "tempCellX"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4304
    const-string v4, "tempCellY"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4305
    const-string v4, "tempSpanX"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4306
    const-string v4, "tempSpanY"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4307
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4309
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->addAnyPendingWidgetsToWorkspace()V

    .line 4310
    return-void

    .line 4288
    .end local v0           #app:Lcom/android/launcher2/LauncherApplication;
    .end local v3           #prefs:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #args:Lcom/android/launcher2/HomeView$PendingAddArguments;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeView;->completeAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;)Z

    goto :goto_0

    .line 4290
    .end local v2           #args:Lcom/android/launcher2/HomeView$PendingAddArguments;
    :cond_2
    const/16 v4, 0x9

    if-eq p1, v4, :cond_3

    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    :cond_3
    if-nez p2, :cond_0

    .line 4292
    if-eqz p3, :cond_0

    .line 4294
    const-string v4, "appWidgetId"

    invoke-virtual {p3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4295
    .local v1, appWidgetId:I
    if-eq v1, v8, :cond_0

    .line 4296
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 3578
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 3572
    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3573
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onFadeEnd()V

    .line 3574
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 3582
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 3568
    const/4 v0, 0x2

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3569
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 690
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    .line 692
    .local v1, workspace:Lcom/android/launcher2/Workspace;
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    .line 694
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 695
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 697
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 698
    invoke-virtual {v0, v3}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 714
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_0
    :goto_0
    return v3

    .line 700
    .restart local v0       #openFolder:Lcom/android/launcher2/Folder;
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->closeFolder()V

    goto :goto_0

    .line 703
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 706
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_0

    .line 707
    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 708
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 710
    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 2129
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_2

    .line 2130
    instance-of v5, p1, Lcom/android/launcher2/CellLayout;

    if-nez v5, :cond_0

    .line 2131
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 2134
    .restart local p1
    :cond_0
    instance-of v5, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_2

    move-object v0, p1

    .line 2136
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2137
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_2

    .line 2139
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v2

    .line 2140
    .local v2, parent:Lcom/android/launcher2/CellLayoutContainer;
    instance-of v5, v2, Lcom/android/launcher2/Hotseat;

    if-eqz v5, :cond_2

    .line 2189
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v2           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_1
    :goto_0
    return-void

    .line 2150
    :cond_2
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_3

    .line 2151
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2157
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2161
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2165
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->cancelClicksOnHome()V

    .line 2166
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2167
    .local v4, tag:Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v5, :cond_4

    move-object v5, v4

    .line 2175
    check-cast v5, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v1, v5, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 2177
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 2178
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 2179
    .local v3, pos:[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2180
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v3, v8

    aget v7, v3, v10

    aget v8, v3, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v3, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2182
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, v1, v4}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2184
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #pos:[I
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    if-ne p1, v5, :cond_5

    .line 2185
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0

    .line 2186
    :cond_5
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    if-ne p1, v5, :cond_1

    .line 2187
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->onClickEditButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2207
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_6

    .line 2208
    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "addapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "create_folder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/launcher2/HomeView;->mIsAllAppsButtonDisable:Z

    if-eqz v1, :cond_2

    .line 2235
    :cond_1
    :goto_0
    return-void

    .line 2210
    :cond_2
    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "addapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "create_folder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2211
    :cond_3
    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "addapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "create_folder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2212
    :cond_4
    const/4 v0, 0x0

    .line 2213
    .local v0, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/AddAppsGuider;

    .end local v0           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    .restart local v0       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    move-object v1, v0

    .line 2214
    check-cast v1, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {v1}, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2216
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->showAllApps()V

    move-object v1, v0

    .line 2217
    check-cast v1, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {v1}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissShowHelpDialog_step1()V

    .line 2218
    check-cast v0, Lcom/android/launcher2/guide/AddAppsGuider;

    .end local v0           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v0}, Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step2()V

    goto :goto_0

    .line 2220
    :cond_5
    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "add_widgets"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2221
    const/4 v0, 0x0

    .line 2222
    .restart local v0       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v0           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .restart local v0       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    move-object v1, v0

    .line 2223
    check-cast v1, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-virtual {v1}, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2225
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->showAllApps()V

    .line 2226
    check-cast v0, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v0           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step2()V

    goto :goto_0

    .line 2232
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2233
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->showAllApps()V

    goto :goto_0
.end method

.method public onClickAlwaysButton(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2239
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2240
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2241
    const-string v1, "com.samsung.android.app.always"

    const-string v2, "com.samsung.android.app.always.ui.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2242
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2243
    return-void
.end method

.method public onClickEditButton(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 2247
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_0

    .line 2248
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 2249
    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->showWorkspaceEditmode(Z)V

    .line 2251
    :cond_0
    return-void
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3618
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 3619
    .local v0, launcher:Lcom/android/launcher2/Launcher;
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    .line 3620
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    .line 3621
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 522
    const-string v1, "Launcher.HomeView"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Launcher;->removeStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    .line 533
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 534
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 543
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 545
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    .line 548
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel;->unbindAllHomeItems()V

    .line 552
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 553
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHelphubObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 555
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 556
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    .line 557
    iput-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 558
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 560
    invoke-static {}, Landroid/animation/ValueAnimator;->clearAllAnimations()V

    .line 562
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v1, :cond_2

    .line 563
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v1}, Lcom/sec/dtl/launcher/WallpaperScroller;->shutdown()V

    .line 566
    :cond_2
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v1, :cond_3

    .line 567
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mLightEffectAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_3

    .line 568
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mLightEffectAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 571
    :cond_3
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, ex:Ljava/lang/NullPointerException;
    sget-boolean v1, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher.HomeView"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    .line 301
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mInflater:Landroid/view/LayoutInflater;

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 305
    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 306
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 307
    new-instance v1, Lcom/android/launcher2/AppWidgetBinder;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/launcher2/AppWidgetBinder;-><init>(Lcom/android/launcher2/Launcher;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/LauncherAppWidgetHost;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    .line 314
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->setupViews()V

    .line 316
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateGlobalSearchIcon()Z

    .line 318
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher;->addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    .line 319
    const-string v0, "Launcher.HomeView"

    const-string v1, "OnFinishInflate() completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method public onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V
    .locals 7
    .parameter "folderChildItem"
    .parameter "title"
    .parameter "destinationContainerId"
    .parameter "removeItem"
    .parameter "findNewPosition"
    .parameter "originalContainerScreen"
    .parameter "originalContainerCell"

    .prologue
    .line 3976
    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HomeView;->completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;Ljava/lang/String;JZZ)V

    .line 3978
    return-void
.end method

.method public onHomePressed(Z)Z
    .locals 2
    .parameter "moveToDefaultScreen"

    .prologue
    .line 772
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    .line 773
    const/4 v0, 0x0

    .line 797
    :goto_0
    return v0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v1, Lcom/android/launcher2/HomeView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/HomeView$2;-><init>(Lcom/android/launcher2/HomeView;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 797
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 795
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->performOnHomePressed(Z)V

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .parameter "ev"

    .prologue
    .line 4404
    const/16 v16, 0x0

    .line 4414
    .local v16, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 4415
    sget-boolean v24, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v24, :cond_0

    .line 4416
    invoke-static {}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->setAlpha()V

    .line 4421
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v24

    if-nez v24, :cond_4

    .line 4423
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    .line 4424
    .local v19, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v24

    sget-object v25, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 4429
    const/4 v8, 0x1

    .line 4430
    .local v8, exitResizeMode:Z
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    .line 4431
    .local v6, count:I
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v7

    .line 4432
    .local v7, current:I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v7, v0, :cond_1

    if-ge v7, v6, :cond_1

    .line 4433
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 4435
    .local v4, cellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v15

    .line 4436
    .local v15, resizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;
    if-eqz v15, :cond_1

    .line 4437
    sget-object v24, Lcom/android/launcher2/HomeView;->sFrameHitRect:Landroid/graphics/Rect;

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 4438
    sget-object v24, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v25

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/PointF;->set(FF)V

    .line 4439
    sget-object v24, Lcom/android/launcher2/HomeView;->sFrameHitRect:Landroid/graphics/Rect;

    sget-object v25, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 4440
    const/4 v8, 0x0

    .line 4445
    .end local v4           #cellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    .end local v15           #resizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;
    :cond_1
    sget-boolean v24, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v24, :cond_2

    sget-boolean v24, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    if-nez v24, :cond_2

    .line 4446
    const/4 v8, 0x0

    .line 4448
    :cond_2
    if-eqz v8, :cond_4

    .line 4449
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 4451
    sget-boolean v24, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v24, :cond_3

    .line 4452
    const-string v24, "resize_widgets"

    sget-object v25, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 4453
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 4454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    .line 4455
    .local v17, t:Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f03000f

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 4456
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 4457
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    .line 4458
    .local v11, handler:Landroid/os/Handler;
    new-instance v24, Lcom/android/launcher2/HomeView$21;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeView$21;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v25, 0x7d0

    move-object/from16 v0, v24

    move-wide/from16 v1, v25

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4468
    .end local v11           #handler:Landroid/os/Handler;
    .end local v17           #t:Landroid/widget/Toast;
    :cond_3
    const/16 v16, 0x1

    .line 4473
    .end local v6           #count:I
    .end local v7           #current:I
    .end local v8           #exitResizeMode:Z
    .end local v19           #workspace:Lcom/android/launcher2/Workspace;
    :cond_4
    sget-boolean v24, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v24, :cond_6

    .line 4474
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 4475
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    .line 4476
    .local v20, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    .line 4478
    .local v22, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v24

    if-nez v24, :cond_5

    sget-boolean v24, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v24, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v24

    if-nez v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 4480
    :cond_5
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeView;->mIsStartFlickUp:Z

    .line 4481
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->releaseVelocityTracker()V

    .line 4542
    .end local v3           #action:I
    .end local v16           #result:Z
    .end local v20           #x:F
    .end local v22           #y:F
    :cond_6
    :goto_0
    return v16

    .line 4485
    .restart local v3       #action:I
    .restart local v16       #result:Z
    .restart local v20       #x:F
    .restart local v22       #y:F
    :cond_7
    and-int/lit16 v0, v3, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    goto :goto_0

    .line 4487
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/HomeView;->setStartPosition(Landroid/view/MotionEvent;)V

    .line 4488
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/HomeView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 4492
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c01c3

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 4494
    .local v9, flickUpStartPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/HomeView;->mIsStartFlickUp:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 4495
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->releaseVelocityTracker()V

    goto :goto_0

    .line 4499
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/HomeView;->addMovementVelocityTracker(Landroid/view/MotionEvent;)V

    .line 4502
    int-to-float v0, v9

    move/from16 v24, v0

    cmpg-float v24, v22, v24

    if-gtz v24, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeView;->mDownMotionY:F

    move/from16 v24, v0

    int-to-float v0, v9

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_6

    .line 4503
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 4504
    .local v5, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v14

    .line 4505
    .local v14, maximumVelocity:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c01c4

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 4507
    .local v10, flickUpVelocity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    const/16 v25, 0x3e8

    int-to-float v0, v14

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 4509
    .local v18, velocityY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeView;->mDownMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 4510
    .local v21, xDiff:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeView;->mDownMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 4511
    .local v23, yDiff:F
    div-float v24, v21, v23

    const-wide/high16 v25, 0x4034

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->tan(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gtz v24, :cond_b

    const/4 v12, 0x1

    .line 4513
    .local v12, isFlickUpDegree:Z
    :goto_1
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeView;->mIsStartFlickUp:Z

    .line 4514
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->releaseVelocityTracker()V

    .line 4517
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move/from16 v0, v24

    if-le v0, v10, :cond_6

    if-eqz v12, :cond_6

    .line 4518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mLightEffectImage:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    .line 4519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mLightEffectImage:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4522
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mLightEffectAnimation:Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 4523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mLightEffectAnimation:Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 4524
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    .line 4525
    .local v13, mHandler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mStopLightEffect:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    const-wide/16 v25, 0x1f4

    move-object/from16 v0, v24

    move-wide/from16 v1, v25

    invoke-virtual {v13, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4528
    .end local v13           #mHandler:Landroid/os/Handler;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v24

    check-cast v24, Lcom/android/launcher2/Launcher;

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/Launcher;->startMagazineApp(Z)V

    .line 4529
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 4511
    .end local v12           #isFlickUpDegree:Z
    :cond_b
    const/4 v12, 0x0

    goto :goto_1

    .line 4536
    .end local v5           #configuration:Landroid/view/ViewConfiguration;
    .end local v9           #flickUpStartPosition:I
    .end local v10           #flickUpVelocity:I
    .end local v14           #maximumVelocity:I
    .end local v18           #velocityY:I
    .end local v21           #xDiff:F
    .end local v23           #yDiff:F
    :pswitch_2
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeView;->mIsStartFlickUp:Z

    .line 4537
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->releaseVelocityTracker()V

    goto/16 :goto_0

    .line 4485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 4372
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4373
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getChildCount()I

    move-result v1

    .line 4374
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 4375
    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4376
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 4377
    .local v2, flp:Landroid/widget/FrameLayout$LayoutParams;
    instance-of v6, v2, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v6, :cond_0

    move-object v4, v2

    .line 4378
    check-cast v4, Lcom/android/launcher2/HomeView$LayoutParams;

    .line 4379
    .local v4, lp:Lcom/android/launcher2/HomeView$LayoutParams;
    iget-boolean v6, v4, Lcom/android/launcher2/HomeView$LayoutParams;->customPosition:Z

    if-eqz v6, :cond_0

    .line 4380
    iget v6, v4, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v7, v4, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v8, v4, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v9, v4, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    add-int/2addr v8, v9

    iget v9, v4, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v10, v4, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 4374
    .end local v4           #lp:Lcom/android/launcher2/HomeView$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4385
    .end local v0           #child:Landroid/view/View;
    .end local v2           #flp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    if-eqz p1, :cond_2

    .line 4386
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 4387
    .local v5, rootView:Landroid/view/View;
    sget-object v6, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 4389
    .end local v5           #rootView:Landroid/view/View;
    :cond_2
    sget-object v6, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v6}, Lcom/android/launcher2/PanelDrawer;->hasLoadedResources()Z

    move-result v6

    if-nez v6, :cond_3

    .line 4390
    sget-object v6, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/PanelDrawer;->loadResources(Landroid/content/res/Resources;)V

    .line 4391
    :cond_3
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 18
    .parameter "v"

    .prologue
    .line 2313
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    .line 2314
    .local v5, launcher:Lcom/android/launcher2/Launcher;
    iget-boolean v15, v5, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-eqz v15, :cond_0

    .line 2315
    const/4 v15, 0x0

    .line 2490
    :goto_0
    return v15

    .line 2318
    :cond_0
    sget-boolean v15, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v15, :cond_3

    .line 2319
    sget-object v15, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v16, "change_wallpaper"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 2321
    sget-object v15, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v16, "resize_widgets"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    sget-object v15, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v16, "remove_items"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    sget-object v15, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v16, "move_app"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 2323
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v15

    if-nez v15, :cond_2

    .line 2324
    const/4 v15, 0x0

    goto :goto_0

    .line 2326
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 2327
    .local v12, tag:Ljava/lang/Object;
    instance-of v15, v12, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v15, :cond_5

    .line 2328
    check-cast v12, Lcom/android/launcher2/HomeWidgetItem;

    .end local v12           #tag:Ljava/lang/Object;
    invoke-virtual {v12}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.android.email.provider.WidgetProvider"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2329
    const/4 v7, 0x0

    .line 2330
    .local v7, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v7, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v7           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v7, v15}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .line 2331
    .restart local v7       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v7, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v7           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v7}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->dismissHelpDialog()V

    .line 2360
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 2361
    const/4 v15, 0x0

    goto :goto_0

    .line 2334
    :cond_4
    const/4 v15, 0x0

    goto :goto_0

    .line 2336
    .restart local v12       #tag:Ljava/lang/Object;
    :cond_5
    instance-of v15, v12, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v15, :cond_3

    move-object v15, v12

    .line 2337
    check-cast v15, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v15}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 2338
    check-cast v12, Lcom/android/launcher2/HomeShortcutItem;

    .end local v12           #tag:Ljava/lang/Object;
    invoke-virtual {v12}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.sec.android.app.popupcalculator.Calculator"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 2339
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2340
    :cond_6
    sget-object v15, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v16, "remove_items"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2341
    const/4 v7, 0x0

    .line 2342
    .restart local v7       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v7, Lcom/android/launcher2/guide/RemoveItemsGuider;

    .end local v7           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v7, v15}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    .restart local v7       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    move-object v15, v7

    .line 2343
    check-cast v15, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-virtual {v15}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    .line 2344
    check-cast v7, Lcom/android/launcher2/guide/RemoveItemsGuider;

    .end local v7           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v7}, Lcom/android/launcher2/guide/RemoveItemsGuider;->showHelpDialog2()V

    goto :goto_1

    .line 2346
    :cond_7
    sget-object v15, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v16, "move_app"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2347
    const/4 v7, 0x0

    .line 2348
    .restart local v7       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v7, Lcom/android/launcher2/guide/MoveAppsGuider;

    .end local v7           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v7, v15}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    .restart local v7       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    move-object v15, v7

    .line 2349
    check-cast v15, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-virtual {v15}, Lcom/android/launcher2/guide/MoveAppsGuider;->dismissHelpDialog()V

    .line 2350
    check-cast v7, Lcom/android/launcher2/guide/MoveAppsGuider;

    .end local v7           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v7}, Lcom/android/launcher2/guide/MoveAppsGuider;->showHelpDialog_step2()V

    goto :goto_1

    .line 2355
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2364
    :cond_9
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/android/launcher2/CellLayout;

    if-nez v15, :cond_a

    .line 2365
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 2369
    .restart local p1
    :cond_a
    sget-boolean v15, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v15, :cond_b

    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/android/launcher2/CellLayout;

    if-eqz v15, :cond_b

    move-object/from16 v2, p1

    .line 2370
    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 2371
    .local v2, cl:Lcom/android/launcher2/CellLayout;
    if-eqz v2, :cond_b

    .line 2372
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v10

    .line 2373
    .local v10, parent:Lcom/android/launcher2/CellLayoutContainer;
    instance-of v15, v10, Lcom/android/launcher2/Hotseat;

    if-eqz v15, :cond_b

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v15

    if-nez v15, :cond_b

    .line 2374
    const-string v15, "Launcher.HomeView"

    const-string v16, "Hotseat item long click but we do nothing in normal mode"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 2381
    .end local v2           #cl:Lcom/android/launcher2/CellLayout;
    .end local v10           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    .line 2382
    const/4 v6, 0x0

    .line 2383
    .local v6, longClickCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    const/4 v3, 0x0

    .line 2384
    .local v3, itemUnderLongClick:Landroid/view/View;
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/android/launcher2/CellLayout;

    if-eqz v15, :cond_d

    move-object/from16 v4, p1

    .line 2385
    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 2386
    .local v4, l:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v12

    .local v12, tag:Lcom/android/launcher2/CellLayout$CellInfo;
    move-object v6, v12

    .line 2388
    check-cast v6, Lcom/android/launcher2/CellLayout$CellInfo;

    .line 2390
    if-nez v6, :cond_c

    .line 2391
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 2393
    :cond_c
    iget-object v3, v6, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2395
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    .line 2402
    .end local v4           #l:Lcom/android/launcher2/CellLayout;
    .end local v12           #tag:Lcom/android/launcher2/CellLayout$CellInfo;
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v15

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v15

    if-eqz v15, :cond_f

    :cond_e
    const/4 v1, 0x1

    .line 2405
    .local v1, allowLongPress:Z
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_10

    sget-boolean v15, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v15, :cond_10

    .line 2406
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2402
    .end local v1           #allowLongPress:Z
    :cond_f
    const/4 v1, 0x0

    goto :goto_2

    .line 2411
    .restart local v1       #allowLongPress:Z
    :cond_10
    if-eqz v1, :cond_15

    .line 2415
    sget-object v15, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v16, "Launcher_touch"

    invoke-virtual/range {v15 .. v16}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2416
    sget-object v15, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v16, "Launcher_touch"

    invoke-virtual/range {v15 .. v16}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    .line 2418
    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    if-nez v15, :cond_17

    .line 2420
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 2423
    sget-boolean v15, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v15, :cond_11

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v15

    if-nez v15, :cond_13

    .line 2425
    :cond_11
    sget-boolean v15, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v15, :cond_16

    .line 2426
    sget-object v15, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v16, "change_wallpaper"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 2427
    const/4 v7, 0x0

    .line 2428
    .restart local v7       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v7, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    .end local v7           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v7, v15}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;-><init>(Landroid/app/Activity;)V

    .line 2429
    .restart local v7       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v7, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    .end local v7           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v7}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->dismissHelpDialog()V

    .line 2430
    const/4 v15, 0x2

    sput v15, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 2434
    :cond_12
    sget-object v15, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v16, "remove_items"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    sget-object v15, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v16, "create_folder"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    sget-object v15, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v16, "move_app"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    sget-object v15, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v16, "resize_widgets"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    .line 2438
    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v15

    invoke-static {v15}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    .line 2450
    :cond_13
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v15

    if-eqz v15, :cond_14

    .line 2451
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15}, Lcom/android/launcher2/Workspace;->snapToDestination()V

    .line 2488
    :cond_14
    :goto_4
    sget-object v15, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v15}, Landroid/os/DVFSHelper;->release()V

    .line 2490
    :cond_15
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 2445
    :cond_16
    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v15

    invoke-static {v15}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    goto :goto_3

    .line 2455
    :cond_17
    sget-boolean v15, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v15, :cond_19

    .line 2456
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v15

    if-nez v15, :cond_19

    .line 2457
    const/4 v15, 0x1

    invoke-static {v15}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 2460
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 2461
    const v13, 0x7f0e0092

    .line 2465
    .local v13, textId:I
    :goto_5
    new-instance v8, Landroid/widget/Toast;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v8, v15}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2466
    .local v8, myToast:Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mInflater:Landroid/view/LayoutInflater;

    const v16, 0x7f03001e

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 2467
    .local v9, myToastView:Landroid/view/View;
    const v15, 0x7f070051

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2468
    .local v14, tv:Landroid/widget/TextView;
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(I)V

    .line 2469
    invoke-virtual {v8, v9}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2471
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c00df

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 2472
    .local v11, posY:I
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/android/launcher2/CellLayout;

    if-eqz v15, :cond_18

    move-object/from16 v2, p1

    .line 2473
    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 2475
    .restart local v2       #cl:Lcom/android/launcher2/CellLayout;
    iget v15, v6, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellY:I

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    if-lt v15, v0, :cond_18

    .line 2476
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c00de

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 2479
    .end local v2           #cl:Lcom/android/launcher2/CellLayout;
    :cond_18
    const/16 v15, 0x30

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 2480
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/widget/Toast;->setDuration(I)V

    .line 2481
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 2485
    .end local v8           #myToast:Landroid/widget/Toast;
    .end local v9           #myToastView:Landroid/view/View;
    .end local v11           #posY:I
    .end local v13           #textId:I
    .end local v14           #tv:Landroid/widget/TextView;
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15, v3}, Lcom/android/launcher2/Workspace;->startDrag(Landroid/view/View;)Z

    goto/16 :goto_4

    .line 2463
    :cond_1a
    const v13, 0x7f0e0090

    .restart local v13       #textId:I
    goto :goto_5
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .locals 1
    .parameter "newPage"
    .parameter "newPageIndex"

    .prologue
    .line 3486
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 3487
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 3489
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 575
    const-string v0, "Launcher.HomeView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->pause()V

    .line 581
    :cond_0
    return-void
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 1

    .prologue
    .line 3723
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    .line 3724
    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 0

    .prologue
    .line 3728
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspaceStartAnimation()V

    .line 3729
    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 3

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3739
    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 3

    .prologue
    .line 3733
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3734
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 627
    instance-of v1, p1, Lcom/android/launcher2/HomeView$SavedState;

    if-nez v1, :cond_0

    .line 628
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 637
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 633
    check-cast v0, Lcom/android/launcher2/HomeView$SavedState;

    .line 634
    .local v0, ss:Lcom/android/launcher2/HomeView$SavedState;
    invoke-virtual {v0}, Lcom/android/launcher2/HomeView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 635
    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeView;->restoreState(Lcom/android/launcher2/HomeView$SavedState;)V

    .line 636
    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 482
    const-string v0, "Launcher.HomeView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    if-eqz v0, :cond_0

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    .line 485
    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateWallpaperOffsets()V

    .line 492
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 495
    :cond_2
    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    .line 497
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v0, :cond_3

    .line 498
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->resume()V

    .line 501
    :cond_3
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v0, :cond_5

    .line 502
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mLightEffectAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_4

    .line 503
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mLightEffectAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 506
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mLightEffectImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 507
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mLightEffectImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    :cond_5
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 586
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 587
    .local v2, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/android/launcher2/HomeView$SavedState;

    invoke-direct {v1, v2}, Lcom/android/launcher2/HomeView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 589
    .local v1, ss:Lcom/android/launcher2/HomeView$SavedState;
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->currentScreen:I

    .line 593
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 594
    .local v0, folderBundle:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->saveOpenFolderState(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 595
    iput-object v0, v1, Lcom/android/launcher2/HomeView$SavedState;->folderBundle:Landroid/os/Bundle;

    .line 599
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v6, v3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v6, -0x1

    if-le v3, v6, :cond_1

    iget-boolean v3, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    if-eqz v3, :cond_1

    .line 601
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v6, v3, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v6, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddContainer:J

    .line 602
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddScreen:I

    .line 603
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellX:I

    .line 604
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellY:I

    .line 605
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanX:I

    .line 606
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanY:I

    .line 607
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-boolean v3, v3, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSecretItem:I

    .line 608
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v3, v3, Lcom/android/launcher2/HomeItem;->dropPos:[I

    if-eqz v3, :cond_1

    .line 609
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v3, v3, Lcom/android/launcher2/HomeItem;->dropPos:[I

    aget v3, v3, v5

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPosX:I

    .line 610
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v3, v3, Lcom/android/launcher2/HomeItem;->dropPos:[I

    aget v3, v3, v4

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPoxY:I

    .line 614
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 615
    iput-boolean v4, v1, Lcom/android/launcher2/HomeView$SavedState;->inQuickView:Z

    .line 616
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->getDeletePageIndex()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->quickViewDeleteIndex:I

    .line 618
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 619
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->darkenLayerVisibility:I

    .line 621
    :cond_3
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    .line 622
    return-object v1

    :cond_4
    move v3, v5

    .line 607
    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 462
    const-string v0, "Launcher.HomeView"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->setWallpaperDimension()V

    .line 478
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 514
    const-string v0, "Launcher.HomeView"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 516
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onStop()V

    .line 517
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 518
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 2195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    .line 2196
    const/4 v0, 0x0

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    const/4 v2, 0x0

    .line 4138
    if-ne p1, p0, :cond_1

    .line 4139
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 4140
    .local v0, hidden:Z
    :goto_0
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    .line 4141
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iput-boolean v2, v1, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    .line 4142
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 4143
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->setTransitionToAllApps(Z)V

    .line 4146
    .end local v0           #hidden:Z
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 4139
    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1509
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    .line 1510
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    if-nez v0, :cond_0

    .line 1518
    :goto_0
    return-void

    .line 1512
    :cond_0
    if-nez p1, :cond_1

    .line 1513
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowBuilder;->draw()V

    goto :goto_0

    .line 1515
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowBuilder;->clear()V

    goto :goto_0
.end method

.method openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V
    .locals 11
    .parameter "ss"
    .parameter "drawOpenAnimation"

    .prologue
    .line 3163
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v8, :cond_1

    .line 3320
    :cond_0
    :goto_0
    return-void

    .line 3167
    :cond_1
    sget-boolean v8, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v8, :cond_0

    .line 3171
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    .line 3176
    .local v5, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isTransitioningToShowAllApps()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->isAnimating()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3180
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mMagazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;

    if-eqz v8, :cond_2

    .line 3181
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mMagazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/launcher2/HomeMagazineSoftKey;->setVisibility(I)V

    .line 3183
    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3184
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 3194
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/launcher2/QuickViewWorkspace;->setSecretQuickViewMode(Z)V

    .line 3197
    if-eqz p2, :cond_4

    .line 3198
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickViewWorkspace;->drawOpenAnimation()V

    .line 3200
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v4

    .line 3201
    .local v4, l:Lcom/android/launcher2/AnimationLayer;
    new-instance v6, Lcom/android/launcher2/HomeView$19;

    invoke-direct {v6, p0, v4}, Lcom/android/launcher2/HomeView$19;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/AnimationLayer;)V

    .line 3249
    .local v6, listener:Landroid/animation/AnimatorListenerAdapter;
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v8, :cond_c

    .line 3250
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    const/4 v9, 0x2

    sget-object v10, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3251
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3258
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v8, :cond_6

    .line 3259
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    const/4 v9, 0x2

    sget-object v10, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3260
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3263
    :cond_6
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3264
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    const/4 v9, 0x2

    sget-object v10, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3265
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3269
    :cond_7
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    if-eqz v8, :cond_8

    .line 3270
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    const/4 v9, 0x2

    sget-object v10, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3271
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3275
    :cond_8
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 3276
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 3281
    :cond_9
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Workspace;->setHideItems(Z)V

    .line 3282
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Workspace;->hidePageIndicator(Z)V

    .line 3283
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 3285
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3287
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->clearAccessibilityFocus()V

    .line 3289
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickViewWorkspace;->bringToFront()V

    .line 3290
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8, p0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 3291
    if-eqz p1, :cond_a

    .line 3292
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    iget v9, p1, Lcom/android/launcher2/HomeView$SavedState;->quickViewDeleteIndex:I

    invoke-virtual {v8, v9}, Lcom/android/launcher2/QuickViewWorkspace;->setDeletePageIndex(I)V

    .line 3294
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 3296
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 3306
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_e

    .line 3307
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3308
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 3309
    .local v1, clChildren:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_d

    .line 3310
    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3311
    .local v7, v:Landroid/view/View;
    instance-of v8, v7, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v8, :cond_b

    move-object v8, v7

    .line 3312
    check-cast v8, Lcom/android/launcher2/SurfaceWidgetView;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Lcom/android/launcher2/SurfaceWidgetView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 3309
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3253
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v1           #clChildren:Lcom/android/launcher2/CellLayoutChildren;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v7           #v:Landroid/view/View;
    :cond_c
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 3254
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_1

    .line 3306
    .restart local v0       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v1       #clChildren:Lcom/android/launcher2/CellLayoutChildren;
    .restart local v2       #i:I
    .restart local v3       #j:I
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3317
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v1           #clChildren:Lcom/android/launcher2/CellLayoutChildren;
    .end local v3           #j:I
    :cond_e
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickViewWorkspace;->open()V

    .line 3319
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v9, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    goto/16 :goto_0
.end method

.method processItemDropToNewFolder(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "componentName"

    .prologue
    .line 1796
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    .line 1797
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const-wide/16 v2, -0x64

    iput-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 1798
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1799
    .local v0, createItemIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1800
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeView;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1801
    return-void
.end method

.method processShortcutFromDrop(Lcom/android/launcher2/HomePendingItem;JI[I[I)V
    .locals 4
    .parameter "pendingItem"
    .parameter "container"
    .parameter "screen"
    .parameter "cell"
    .parameter "loc"

    .prologue
    const/4 v3, 0x1

    .line 1778
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    .line 1779
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-wide p2, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 1780
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput p4, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 1781
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-object p6, v1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 1785
    if-eqz p5, :cond_0

    .line 1786
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v2, 0x0

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1787
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    aget v2, p5, v3

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1790
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1791
    .local v0, createShortcutIntent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1792
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/HomeView;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1793
    return-void
.end method

.method public refreshQuickViewWorkspace(Z)V
    .locals 2
    .parameter "isSecret"

    .prologue
    .line 3387
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3397
    :goto_0
    return-void

    .line 3390
    :cond_0
    if-eqz p1, :cond_1

    .line 3391
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setSecretQuickViewMode(Z)V

    .line 3396
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    goto :goto_0

    .line 3393
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setSecretQuickViewMode(Z)V

    goto :goto_1
.end method

.method public removeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 1
    .parameter "launcherInfo"

    .prologue
    .line 1607
    iget-object v0, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    .line 1608
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1609
    return-void
.end method

.method removeFolder(Lcom/android/launcher2/HomeFolderItem;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 2077
    sget-object v0, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    return-void
.end method

.method removePage()V
    .locals 1

    .prologue
    .line 3519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    .line 3520
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->removeScreen()V

    .line 3521
    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1
    .parameter "hostView"

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    .line 1604
    :cond_0
    return-void
.end method

.method public removehelpAppPage()V
    .locals 1

    .prologue
    .line 3784
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    if-eqz v0, :cond_0

    .line 3791
    :goto_0
    return-void

    .line 3787
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    .line 3788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    .line 3789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    goto :goto_0
.end method

.method public resetPanelViewport()V
    .locals 3

    .prologue
    .line 2846
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2847
    sget-object v0, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 2849
    :cond_0
    return-void
.end method

.method public restoreOpenFolder(Landroid/os/Bundle;)Z
    .locals 12
    .parameter "bundle"

    .prologue
    const/4 v8, 0x0

    .line 2906
    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v9, :cond_1

    .line 2930
    :cond_0
    :goto_0
    return v8

    .line 2909
    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2910
    .local v7, v:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 2913
    const-string v9, "launcher.workspace_open_folder_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2914
    .local v3, openFolderId:J
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v3, v4}, Lcom/android/launcher2/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v2

    .line 2915
    .local v2, openFolder:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v2, :cond_0

    .line 2918
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9, v2}, Lcom/android/launcher2/Workspace;->restoreOpenFolder(Lcom/android/launcher2/HomeFolderItem;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2919
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 2920
    .local v1, folder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_0

    .line 2921
    const-string v8, "launcher.workspace_pending_folder_edit_text"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2922
    .local v0, editText:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2923
    const-string v8, "launcher.workspace_pending_folder_edit_text_selection_start"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2924
    .local v6, selStart:I
    const-string v8, "launcher.workspace_pending_folder_edit_text_selection_end"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2925
    .local v5, selEnd:I
    invoke-virtual {v1, v0, v6, v5}, Lcom/android/launcher2/Folder;->restoreText(Ljava/lang/String;II)Z

    .line 2927
    .end local v5           #selEnd:I
    .end local v6           #selStart:I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public saveCurrentPageOrder()V
    .locals 0

    .prologue
    .line 3718
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    .line 3719
    return-void
.end method

.method public saveOpenFolderState(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 2888
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v3, :cond_1

    .line 2902
    :cond_0
    :goto_0
    return v2

    .line 2891
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2892
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 2895
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2896
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v1

    .line 2897
    .local v1, text:Landroid/widget/EditText;
    const-string v2, "launcher.workspace_pending_folder_edit_text"

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    const-string v2, "launcher.workspace_pending_folder_edit_text_selection_start"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2899
    const-string v2, "launcher.workspace_pending_folder_edit_text_selection_end"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2901
    .end local v1           #text:Landroid/widget/EditText;
    :cond_2
    const-string v2, "launcher.workspace_open_folder_id"

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2902
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveScreenInfo()V
    .locals 4

    .prologue
    .line 3492
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 3500
    :goto_0
    return-void

    .line 3493
    :cond_0
    const/4 v0, 0x0

    .line 3494
    .local v0, secretChildCount:I
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v2, :cond_1

    .line 3495
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getSecretPageManager()Lcom/android/launcher2/SecretPageManager;

    move-result-object v1

    .line 3496
    .local v1, spMgr:Lcom/android/launcher2/SecretPageManager;
    invoke-virtual {v1}, Lcom/android/launcher2/SecretPageManager;->getSecretPageCount()I

    move-result v0

    .line 3497
    invoke-virtual {v1}, Lcom/android/launcher2/SecretPageManager;->printWorkspaceInfo()V

    .line 3499
    .end local v1           #spMgr:Lcom/android/launcher2/SecretPageManager;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public saveSecretScreenInfo()V
    .locals 3

    .prologue
    .line 3503
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 3511
    :goto_0
    return-void

    .line 3505
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getSecretPageManager()Lcom/android/launcher2/SecretPageManager;

    move-result-object v1

    .line 3506
    .local v1, spMgr:Lcom/android/launcher2/SecretPageManager;
    invoke-virtual {v1}, Lcom/android/launcher2/SecretPageManager;->getSecretPageCount()I

    move-result v0

    .line 3510
    .local v0, secretChildCount:I
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherApplication;->setSecretScreenCount(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 3966
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    .line 3967
    return-void
.end method

.method public setCurrentResizeWidgetItem(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 3958
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

    .line 3959
    return-void
.end method

.method public setDarkenViewAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 3884
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3885
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    .line 3887
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 3888
    return-void
.end method

.method public setDummyPanelProperties()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/high16 v11, 0x3f80

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 4575
    iget v7, p0, Lcom/android/launcher2/HomeView;->mPanelBackgroundAlpha:F

    .line 4576
    .local v7, v:F
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    .line 4578
    .local v8, w:Lcom/android/launcher2/Workspace;
    if-eqz v8, :cond_1

    .line 4579
    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v1

    .line 4581
    .local v1, d:F
    sget v9, Lcom/android/launcher2/Workspace;->sPanelBaseEditDarkenAmount:F

    sub-float v10, v11, v7

    invoke-static {v9, v1, v10}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v0

    .line 4582
    .local v0, baseDarken:F
    invoke-virtual {v8, v0, v12}, Lcom/android/launcher2/Workspace;->setDummyPanelProperties(FI)V

    .line 4584
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    .line 4585
    .local v6, m:Lcom/android/launcher2/MenuAppsGrid;
    if-eqz v6, :cond_0

    .line 4586
    sub-float v9, v11, v7

    mul-float/2addr v9, v1

    invoke-virtual {v6, v9, v12}, Lcom/android/launcher2/MenuAppsGrid;->setDummyPanelProperties(FI)V

    .line 4600
    .end local v0           #baseDarken:F
    .end local v1           #d:F
    .end local v6           #m:Lcom/android/launcher2/MenuAppsGrid;
    :cond_0
    :goto_0
    return-void

    .line 4592
    :cond_1
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v11, :cond_2

    move v5, v9

    .line 4593
    .local v5, isWorkspaceNull:Z
    :goto_1
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v11, :cond_3

    move v4, v9

    .line 4594
    .local v4, isHotseatNull:Z
    :goto_2
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;

    if-nez v11, :cond_4

    move v2, v9

    .line 4595
    .local v2, isAllAppsIconNull:Z
    :goto_3
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    if-nez v11, :cond_5

    move v3, v9

    .line 4596
    .local v3, isHomeContainerNull:Z
    :goto_4
    const-string v9, "Launcher.HomeView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CRR: isWorkspaceNull = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isHotseatNull = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isAllAppsIconNull = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isHomeContainerNull = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .end local v2           #isAllAppsIconNull:Z
    .end local v3           #isHomeContainerNull:Z
    .end local v4           #isHotseatNull:Z
    .end local v5           #isWorkspaceNull:Z
    :cond_2
    move v5, v10

    .line 4592
    goto :goto_1

    .restart local v5       #isWorkspaceNull:Z
    :cond_3
    move v4, v10

    .line 4593
    goto :goto_2

    .restart local v4       #isHotseatNull:Z
    :cond_4
    move v2, v10

    .line 4594
    goto :goto_3

    .restart local v2       #isAllAppsIconNull:Z
    :cond_5
    move v3, v10

    .line 4595
    goto :goto_4
.end method

.method public setEditBar(Lcom/android/launcher2/HomeEditBar;)V
    .locals 0
    .parameter "editBar"

    .prologue
    .line 2503
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    .line 2504
    return-void
.end method

.method public setHomeEditItem(Landroid/view/MenuItem;)V
    .locals 0
    .parameter "homeEditItem"

    .prologue
    .line 3480
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mHomeEditItem:Landroid/view/MenuItem;

    .line 3481
    return-void
.end method

.method public setHomeScreenAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3515
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    .line 3516
    return-void
.end method

.method public setHotseat(Lcom/android/launcher2/Hotseat;)V
    .locals 1
    .parameter "hotSeat"

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 2530
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/HomeView;)V

    .line 2531
    return-void
.end method

.method public setMagazineSoftKey(Lcom/android/launcher2/HomeMagazineSoftKey;)V
    .locals 0
    .parameter "magazineSoftKey"

    .prologue
    .line 4668
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mMagazineSoftKey:Lcom/android/launcher2/HomeMagazineSoftKey;

    .line 4669
    return-void
.end method

.method public setPanelBackgroundAlpha(F)V
    .locals 0
    .parameter "v"

    .prologue
    .line 4567
    iput p1, p0, Lcom/android/launcher2/HomeView;->mPanelBackgroundAlpha:F

    .line 4568
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->setDummyPanelProperties()V

    .line 4569
    return-void
.end method

.method public setPanelViewport(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2852
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2853
    sget-object v0, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 2855
    :cond_0
    return-void
.end method

.method public setQuickLaunch(Lcom/android/launcher2/QuickLaunch;)V
    .locals 1
    .parameter "quickLaunch"

    .prologue
    .line 2519
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    .line 2520
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickLaunch;->setup(Lcom/android/launcher2/HomeView;)V

    .line 2521
    return-void
.end method

.method public setQuickLaunchCamera(Lcom/android/launcher2/QuickLaunch;)V
    .locals 1
    .parameter "quickLaunch"

    .prologue
    .line 2524
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    .line 2525
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickLaunch;->setup(Lcom/android/launcher2/HomeView;)V

    .line 2526
    return-void
.end method

.method public setWorkspaceLoading()V
    .locals 1

    .prologue
    .line 3917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    .line 3918
    return-void
.end method

.method public setupCameraCut(I)V
    .locals 2
    .parameter "currentOrientation"

    .prologue
    .line 4603
    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    .line 4604
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4605
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4609
    :goto_0
    return-void

    .line 4607
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method showAllApps()V
    .locals 1

    .prologue
    .line 2633
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 2634
    :cond_0
    return-void
.end method

.method public showCameraCut(ZZ)V
    .locals 3
    .parameter "isShow"
    .parameter "withTransition"

    .prologue
    .line 4612
    if-eqz p2, :cond_1

    .line 4613
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_0

    const v1, 0x7f040004

    :goto_0
    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4615
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4619
    .end local v0           #animation:Landroid/view/animation/Animation;
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4620
    return-void

    .line 4613
    :cond_0
    const v1, 0x7f040005

    goto :goto_0

    .line 4617
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_1

    .line 4619
    :cond_2
    const/4 v1, 0x4

    goto :goto_2
.end method

.method public showDeleteWorkScreen()V
    .locals 1

    .prologue
    .line 3530
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3535
    :goto_0
    return-void

    .line 3533
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    .line 3534
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method showHotseat(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    const/high16 v1, 0x3f80

    .line 2610
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 2611
    if-eqz p1, :cond_1

    .line 2612
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2617
    :cond_0
    :goto_0
    return-void

    .line 2614
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method showOutOfSpaceMessage()V
    .locals 1

    .prologue
    .line 1612
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage(Landroid/content/Context;)V

    .line 1613
    return-void
.end method

.method showWorkspace(Z)V
    .locals 5
    .parameter "animated"

    .prologue
    .line 2581
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2582
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2584
    .local v1, stagger:I
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v1, v4}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 2587
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    .line 2590
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2592
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    .line 2593
    return-void
.end method

.method showWorkspaceEditmode(Z)V
    .locals 5
    .parameter "animated"

    .prologue
    .line 2597
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2598
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2600
    .local v1, stagger:I
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 2602
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 2603
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v1, v4}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 2604
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 4318
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    .line 4319
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    .line 4320
    return-void
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const v3, 0x7f0e0002

    const/4 v2, 0x0

    .line 2300
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/HomeView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2309
    :goto_0
    return-void

    .line 2301
    :catch_0
    move-exception v0

    .line 2302
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2303
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 2304
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2305
    const-string v1, "Launcher.HomeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "componentName"

    .prologue
    .line 2254
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2255
    .local v1, packageName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2257
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2258
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2259
    return-void
.end method

.method startApplicationUninstallActivity(Lcom/android/launcher2/AppItem;)V
    .locals 6
    .parameter "app"

    .prologue
    .line 2262
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 2263
    iget-boolean v4, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v4, :cond_1

    .line 2266
    const v2, 0x7f0e0057

    .line 2267
    .local v2, messageId:I
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2278
    .end local v2           #messageId:I
    :cond_0
    :goto_0
    return-void

    .line 2269
    :cond_1
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2270
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2271
    .local v0, className:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    const-string v5, "package"

    invoke-static {v5, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2273
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2275
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startBinding()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2733
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2735
    .local v5, workspace:Lcom/android/launcher2/Workspace;
    if-nez v5, :cond_1

    .line 2775
    :cond_0
    :goto_0
    return-void

    .line 2740
    :cond_1
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->abortConfigChanges()V

    .line 2741
    iput-boolean v7, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    .line 2744
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->isFavoritesInNormalMode()Z

    move-result v1

    .line 2745
    .local v1, currentFavoritesModeIsNormal:Z
    iget-boolean v6, p0, Lcom/android/launcher2/HomeView;->mFavoritesModeIsNormal:Z

    if-eq v1, v6, :cond_7

    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2746
    iput-boolean v1, p0, Lcom/android/launcher2/HomeView;->mFavoritesModeIsNormal:Z

    .line 2747
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 2748
    .local v2, folder:Lcom/android/launcher2/Folder;
    if-eqz v2, :cond_3

    .line 2749
    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2750
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 2751
    :cond_2
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 2753
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    .line 2754
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    .line 2755
    iput-boolean v7, v5, Lcom/android/launcher2/Workspace;->mFirstLayout:Z

    .line 2756
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->createWorkspaceChildren()V

    .line 2766
    .end local v2           #folder:Lcom/android/launcher2/Folder;
    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v6, :cond_5

    .line 2767
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 2769
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v6, :cond_6

    .line 2770
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v6}, Lcom/android/launcher2/QuickLaunch;->resetLayout()V

    .line 2772
    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v6, :cond_0

    .line 2773
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v6}, Lcom/android/launcher2/QuickLaunch;->resetLayout()V

    goto :goto_0

    .line 2758
    :cond_7
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 2759
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 2761
    invoke-virtual {v5, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 2762
    .local v4, layoutParent:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 2759
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method startWallpaper(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 2081
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 2082
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2084
    .local v2, pickWallpaper:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 2085
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "sec.android.launcher2.intent.action.CHOOSER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2086
    .local v0, chooser:Landroid/content/Intent;
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2087
    const-string v3, "mode"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2088
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_0

    .line 2089
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    .line 2095
    :goto_0
    return-void

    .line 2093
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/HomeView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public updateGlobalSearchIcon()Z
    .locals 1

    .prologue
    .line 3638
    const/4 v0, 0x0

    return v0
.end method

.method protected updateRunning()V
    .locals 11

    .prologue
    const-wide/16 v1, 0x4e20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1528
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    .line 1529
    .local v0, autoAdvanceRunning:Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_0

    .line 1530
    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceRunning:Z

    .line 1531
    if-eqz v0, :cond_3

    .line 1532
    iget-wide v3, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1533
    .local v1, delay:J
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/HomeView;->sendAdvanceMessage(J)V

    .line 1543
    .end local v1           #delay:J
    :cond_0
    :goto_2
    return-void

    .end local v0           #autoAdvanceRunning:Z
    :cond_1
    move v0, v4

    .line 1528
    goto :goto_0

    .line 1532
    .restart local v0       #autoAdvanceRunning:Z
    :cond_2
    iget-wide v1, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    .line 1535
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1536
    const-wide/16 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceSentTime:J

    sub-long/2addr v7, v9

    sub-long v7, v1, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    .line 1539
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1540
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method public updateWallpaperOffsets()V
    .locals 1

    .prologue
    .line 3892
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 3893
    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/high16 v2, 0x10

    .line 2572
    if-eqz p1, :cond_1

    move v1, v2

    .line 2573
    .local v1, wpflags:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    .line 2575
    .local v0, curflags:I
    if-eq v1, v0, :cond_0

    .line 2576
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 2578
    :cond_0
    return-void

    .line 2572
    .end local v0           #curflags:I
    .end local v1           #wpflags:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wallpaperHack()V
    .locals 2

    .prologue
    .line 3750
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 3751
    return-void
.end method
