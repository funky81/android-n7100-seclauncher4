.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/ActivityGroup;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/launcher2/LauncherModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$17;,
        Lcom/android/launcher2/Launcher$ActivityResultCallback;,
        Lcom/android/launcher2/Launcher$WidgetAddInfo;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$StateAnimatorProvider;,
        Lcom/android/launcher2/Launcher$HardwareKeys;
    }
.end annotation


# static fields
.field private static final ACTION_HOME_MODE:Ljava/lang/String; = "com.android.launcher.action.HOME_MODE_CHANGE"

.field private static final ACTION_HOME_RESTORE:Ljava/lang/String; = "com.android.launcher.action.ACTION_HOME_RESTORE"

.field private static final ACTION_STATUSBAR_COLLAPSE:Ljava/lang/String; = "com.android.systemui.statusbar.COLLAPSED"

.field private static final ACTION_STATUSBAR_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field static final ADD_TOAST_POPUP_DISMISSED_KEY:Ljava/lang/String; = "add.toast.popup.dismissed.key"

.field public static CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z = false

.field public static CSCFEATURE_LAUNCHER_DISABLETILTEFFECT:Z = false

.field public static CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z = false

.field public static CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z = false

.field public static CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z = false

.field public static CSCFEATURE_LAUNCHER_THEME_ENABLE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final DEBUG_ADD_WIDGET_VIA_INTENT:Z = false

.field private static final DEBUG_ADD_WIDGET_VIA_INTENT_TAG:Ljava/lang/String; = "Launcher.AddWidgetViaIntent"

.field private static final EXTRA_HOME_VIEW_HIDDEN:Ljava/lang/String; = "extra_home_view_hidden"

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field private static final HELP_ACTIVITY_TYPE:Ljava/lang/String; = "help_activity_type"

.field public static final HELP_HUB_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.helphub.provider/help_page_status/"

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field private static final LAUNCHER_ACTION_ALL_APPS_FROM_MAGAGINE:Ljava/lang/String; = "com.android.launcher2.ALL_APPS_FROM_MAGAZINE"

.field private static final LAUNCHER_ACTION_IDLE:Ljava/lang/String; = "com.android.launcher2.IDLE"

.field public static final MOTION_DIALOG_ON_OFF_PREF:Ljava/lang/String; = "MotionDialogOnOff"

.field static final PREFERENCES:Ljava/lang/String; = "com.android.launcher2.prefs"

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field public static SHOW_ALL_APPS_TRANSITION_DURATION:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "Launcher"

.field public static UseDisableTranslucencyFeature:Z = false

.field public static UseLauncherHighPriority:Z = false

.field public static UseQwertyKeypad:Z = false

.field public static UseUserCustomHomeFeature:Z = false

.field static final VIBRATE_DURATION:I = 0x23

.field static final WIDGET_RESIZE_UPDATE_PAUSE:Ljava/lang/String; = "com.sec.android.intent.action.HOME_PAUSE"

.field static final WIDGET_RESIZE_UPDATE_RESUME:Ljava/lang/String; = "com.sec.android.intent.action.HOME_RESUME"

.field public static changeWallpaperStatus:I

.field public static isExitingFromHelp:Z

.field public static isExitingFromWallpaperActivity:Z

.field public static isHelpAppRunning:Z

.field public static isHomescreenRestoring:Z

.field public static isMotionDialogLaunching:Z

.field public static isSystemAppDisable:Z

.field static mBackupPageCount:I

.field static mBackupScreenIndex:I

.field private static mEasyStateForHelpApp:Z

.field public static mIsExpandStatusBar:Z

.field public static mNonDisableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPendingIntent:Landroid/content/Intent;

.field private static volatile sHelpHubAvailable:Ljava/lang/Boolean;

.field private static sHwPopupMenuShowing:Z

.field public static sInComingIntentHelpHub:Landroid/content/Intent;

.field public static sIsEditFromHome:Z

.field private static sIsHomeEditMode:Z

.field private static sIsHomeRemoveMode:Z

.field public static sIsSecretModeOn:Z

.field static sMenuBgDarkenAmountNormal:F

.field private static sPopupMenuShowing:Z

.field public static sViewLayerPaint:Landroid/graphics/Paint;

.field public static wasWidgetsTabShown:Z


# instance fields
.field private isEnteredFromMagazine:Z

.field public isStartFromCustomHome:Z

.field private mActivityCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/launcher2/Launcher$ActivityResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityName:Landroid/content/ComponentName;

.field private mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

.field private mAppMarketIntent:Landroid/content/Intent;

.field private mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

.field public mAttached:Z

.field private mAutoRestart:Z

.field private mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDarkenView:Landroid/view/View;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mExitingAllApps:Z

.field private mFactoryModeString:Ljava/lang/String;

.field private mHasMenuKey:Z

.field mHomeView:Lcom/android/launcher2/HomeView;

.field mInMenu:Z

.field private mIsDestroyed:Z

.field private mIsExternalHelpActivity:Z

.field private mIsFactoryMode:Z

.field private mMarketLabelName:Ljava/lang/CharSequence;

.field private mMenuButtonView:Landroid/view/View;

.field private mMenuView:Lcom/android/launcher2/MenuView;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mOnResumeNeedsLoad:Z

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPaused:Z

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

.field private mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

.field private mPrevOrientationHelp:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoring:Z

.field private mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

.field private mSecretPageManager:Lcom/android/launcher2/SecretPageManager;

.field private mShowEmptyPageMsg:Z

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mStateAnimatorProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$StateAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

.field private mTransitionAnimator:Landroid/animation/Animator;

.field private mTransitioningToAllApps:Z

.field private mWidgetAddInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$WidgetAddInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    .line 173
    sput v1, Lcom/android/launcher2/Launcher;->mBackupPageCount:I

    .line 174
    sput v1, Lcom/android/launcher2/Launcher;->mBackupScreenIndex:I

    .line 175
    sput-boolean v2, Lcom/android/launcher2/Launcher;->isHomescreenRestoring:Z

    .line 181
    sput-boolean v2, Lcom/android/launcher2/Launcher;->mIsExpandStatusBar:Z

    .line 185
    sput-boolean v3, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    .line 191
    sput-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    .line 192
    sput-boolean v2, Lcom/android/launcher2/Launcher;->wasWidgetsTabShown:Z

    .line 193
    sput-boolean v2, Lcom/android/launcher2/Launcher;->isExitingFromWallpaperActivity:Z

    .line 194
    sput-boolean v2, Lcom/android/launcher2/Launcher;->isMotionDialogLaunching:Z

    .line 195
    sput v1, Lcom/android/launcher2/Launcher;->changeWallpaperStatus:I

    .line 215
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 216
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 253
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    .line 254
    sput-boolean v2, Lcom/android/launcher2/Launcher;->mEasyStateForHelpApp:Z

    .line 255
    const-wide/16 v0, 0xe6

    sput-wide v0, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    .line 277
    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    .line 278
    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLETILTEFFECT:Z

    .line 279
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    .line 280
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    .line 281
    sput-boolean v3, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    .line 282
    sput-boolean v3, Lcom/android/launcher2/Launcher;->UseDisableTranslucencyFeature:Z

    .line 283
    sput-boolean v2, Lcom/android/launcher2/Launcher;->UseQwertyKeypad:Z

    .line 286
    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    .line 287
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    .line 289
    sput-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    .line 290
    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z

    .line 292
    sput-boolean v2, Lcom/android/launcher2/Launcher;->isExitingFromHelp:Z

    .line 294
    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    .line 298
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    .line 300
    sput-boolean v2, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    .line 310
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    .line 311
    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 312
    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 313
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 317
    invoke-direct {p0, v1}, Landroid/app/ActivityGroup;-><init>(Z)V

    .line 182
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    .line 196
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIsExternalHelpActivity:Z

    .line 201
    new-instance v0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 211
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 219
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 222
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 271
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mActivityCallbacks:Landroid/util/SparseArray;

    .line 296
    iput v1, p0, Lcom/android/launcher2/Launcher;->mPrevOrientationHelp:I

    .line 301
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->isStartFromCustomHome:Z

    .line 882
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    .line 959
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    .line 971
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 1097
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    .line 1707
    new-instance v0, Lcom/android/launcher2/Launcher$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$5;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    .line 318
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher ctor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method private AllWidgetCount()I
    .locals 2

    .prologue
    .line 1745
    new-instance v0, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    invoke-direct {v1, p0}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-direct {v1, p0}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;

    invoke-direct {v1, p0}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 1391
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1393
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishShowAllApps()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishExitAllApps()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/Launcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->AllWidgetCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    sput-boolean p0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    return p0
.end method

.method private addNonDisableAppToList()V
    .locals 7

    .prologue
    .line 3375
    const-string v0, "nondisableapps"

    .line 3376
    .local v0, TAG_APPORDER:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3377
    .local v4, resParser:Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x0

    .line 3378
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 3380
    :try_start_0
    const-string v5, "nondisableapps"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3388
    :goto_0
    move-object v3, v4

    .line 3390
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 3391
    .local v2, eventType:I
    :goto_1
    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    .line 3392
    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    .line 3393
    sget-object v5, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3395
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    goto :goto_1

    .line 3381
    .end local v2           #eventType:I
    :catch_0
    move-exception v1

    .line 3383
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 3384
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 3386
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3397
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 3399
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 3405
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    return-void

    .line 3400
    :catch_3
    move-exception v1

    .line 3402
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private buildWidgetMap(Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 814
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    .line 815
    .local v4, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    .line 818
    .local v3, screenCount:I
    const/4 v2, 0x0

    .local v2, screen:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 819
    invoke-virtual {v4, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 820
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 822
    .local v1, clc:Lcom/android/launcher2/CellLayoutChildren;
    new-instance v5, Lcom/android/launcher2/Launcher$1;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;Ljava/util/HashMap;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->iterateBaseItems(Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;Ljava/lang/Object;)V

    .line 818
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 836
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v1           #clc:Lcom/android/launcher2/CellLayoutChildren;
    :cond_0
    return-void
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1669
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1670
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1671
    return-void
.end method

.method private exitWidgetResizeMode()V
    .locals 2

    .prologue
    .line 2051
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 2052
    .local v0, workspace:Lcom/android/launcher2/Workspace;
    if-eqz v0, :cond_0

    .line 2053
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 2054
    :cond_0
    return-void
.end method

.method private fillInHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/Launcher$WidgetAddInfo;[I)V
    .locals 4
    .parameter "homeInfo"
    .parameter "addInfo"
    .parameter "span"

    .prologue
    const/4 v1, -0x1

    .line 680
    iget v0, p2, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    :goto_0
    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 681
    iget v0, p2, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    aget v0, p3, v0

    :goto_1
    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 682
    const-wide/16 v2, -0x64

    iput-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    .line 683
    iput v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 684
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 685
    return-void

    :cond_0
    move v0, v1

    .line 680
    goto :goto_0

    :cond_1
    move v0, v1

    .line 681
    goto :goto_1
.end method

.method private finishExitAllApps()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1186
    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    .line 1187
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->onFinishExitAllApps()V

    .line 1188
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1189
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1190
    .local v2, transaction:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 1191
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    .line 1192
    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v3, :cond_1

    .line 1193
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1196
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1197
    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 1198
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_0

    const-string v3, "create_folder"

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-eqz v3, :cond_0

    .line 1201
    const/4 v1, 0x0

    .line 1202
    .local v1, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v1, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v1           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-direct {v1, p0}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    .line 1203
    .restart local v1       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v1, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v1           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v1}, Lcom/android/launcher2/guide/CreateFolderGuider;->showHelpDialog_step3()V

    .line 1206
    :cond_0
    return-void

    .line 1195
    :cond_1
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private finishShowAllApps()V
    .locals 3

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1087
    .local v0, transaction:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    .line 1088
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->clearAccessibilityFocus()V

    .line 1089
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 1090
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 1091
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1092
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1095
    :goto_0
    return-void

    .line 1094
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private getLaunchIntentForHelpHub()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 2010
    const/4 v1, 0x0

    .line 2011
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->mIsExternalHelpActivity:Z

    if-eqz v4, :cond_1

    .line 2013
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2014
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :try_start_1
    const-string v4, "helphub:section"

    const-string v5, "homescreen"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2015
    const/high16 v4, 0x1020

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2016
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mIsExternalHelpActivity:Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v2

    .line 2041
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v1

    .line 2018
    :catch_0
    move-exception v0

    .line 2019
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :goto_1
    sget-boolean v4, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 2020
    const-string v4, "Launcher"

    const-string v5, "Unable to launch  intent= com.samsung.helphub.HELP"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2026
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v5, 0x258

    if-ge v4, v5, :cond_2

    .line 2031
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2032
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :try_start_3
    const-string v4, "com.samsung.helphub"

    const-string v5, "com.samsung.helphub.HelpHubSecondDepthActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2033
    const/high16 v4, 0x1020

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 2028
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2029
    .local v3, pm:Landroid/content/pm/PackageManager;
    const-string v4, "com.samsung.helphub"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .line 2030
    goto :goto_0

    .line 2036
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v0

    .line 2037
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    :goto_2
    sget-boolean v4, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 2038
    const-string v4, "Launcher"

    const-string v5, "Unable to launch HelpHub Activity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2036
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 2018
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "c"
    .parameter "pkg"

    .prologue
    .line 3273
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3274
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 3276
    .local v1, hasPkg:Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3281
    :goto_0
    return v1

    .line 3277
    :catch_0
    move-exception v0

    .line 3278
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 3279
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAvailableEasyMode1()Z
    .locals 2

    .prologue
    .line 3248
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3249
    .local v0, mProductName:Ljava/lang/String;
    const-string v1, "baffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "s2vep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "s2vexx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

.method private isFactoryMode()Z
    .locals 3

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2634
    const-string v0, "/efs/FactoryApp/factorymode"

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    .line 2635
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    .line 2636
    sget-boolean v0, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 2637
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFactoryMode string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFactoryMode returns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    return v0

    .line 2635
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFactorySim()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 2591
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 2594
    .local v6, tm:Landroid/telephony/TelephonyManager;
    const-string v8, "KOR"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2595
    const-string v8, "ro.product.model"

    const-string v9, "Unknown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2596
    .local v0, DEVICE_NAME:Ljava/lang/String;
    const-string v8, "SHW-M250S"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "SHW-M250K"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2597
    :cond_0
    const/4 v4, 0x0

    .line 2598
    .local v4, currentIMSI:Ljava/lang/String;
    const-string v8, "ril.DS"

    const-string v9, "Default"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2600
    sget-boolean v8, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v8, :cond_1

    const-string v8, "Launcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isFactorySim() imsi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    :cond_1
    if-eqz v4, :cond_8

    const-string v8, "true"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2602
    sget-boolean v8, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v8, :cond_2

    const-string v8, "Launcher"

    const-string v9, "isFactorySim() : true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    .end local v0           #DEVICE_NAME:Ljava/lang/String;
    .end local v4           #currentIMSI:Ljava/lang/String;
    :cond_2
    :goto_0
    return v7

    .line 2606
    .restart local v0       #DEVICE_NAME:Ljava/lang/String;
    :cond_3
    const-string v8, "SHW-M250L"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2607
    const-string v2, "357858010034783"

    .line 2608
    .local v2, IMSI1:Ljava/lang/String;
    const-string v3, "004400152020002"

    .line 2609
    .local v3, IMSI2:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 2610
    .local v5, imsi:Ljava/lang/String;
    sget-boolean v8, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v8, :cond_4

    const-string v8, "Launcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isFactorySim() imsi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :cond_4
    if-eqz v5, :cond_8

    const-string v8, "357858010034783"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "004400152020002"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2612
    :cond_5
    sget-boolean v8, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v8, :cond_2

    const-string v8, "Launcher"

    const-string v9, "isFactorySim() : true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2617
    .end local v0           #DEVICE_NAME:Ljava/lang/String;
    .end local v2           #IMSI1:Ljava/lang/String;
    .end local v3           #IMSI2:Ljava/lang/String;
    .end local v5           #imsi:Ljava/lang/String;
    :cond_6
    const-string v1, "999999999999999"

    .line 2618
    .local v1, IMSI:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    .line 2619
    .restart local v5       #imsi:Ljava/lang/String;
    sget-boolean v8, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v8, :cond_7

    const-string v8, "Launcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isFactorySim() imsi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_7
    if-eqz v5, :cond_8

    const-string v8, "999999999999999"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2621
    sget-boolean v8, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v8, :cond_2

    const-string v8, "Launcher"

    const-string v9, "isFactorySim() : true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2625
    .end local v1           #IMSI:Ljava/lang/String;
    .end local v5           #imsi:Ljava/lang/String;
    :cond_8
    sget-boolean v7, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v7, :cond_9

    const-string v7, "Launcher"

    const-string v8, "isFactorySim() : false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method static isHomeEditMode()Z
    .locals 1

    .prologue
    .line 3137
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    return v0
.end method

.method static isHomeRemoveMode()Z
    .locals 1

    .prologue
    .line 3147
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    return v0
.end method

.method private isMotionSettingOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3048
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isOptionMenuShowing()Z
    .locals 1

    .prologue
    .line 2929
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPopupMenuShowing()Z
    .locals 1

    .prologue
    .line 2925
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    return v0
.end method

.method private processAsAndroidAppWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z
    .locals 8
    .parameter "info"

    .prologue
    const/4 v7, 0x0

    .line 752
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 757
    .local v3, wdgtInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 761
    new-instance v2, Lcom/android/launcher2/HomePendingWidget;

    invoke-direct {v2, v3, v7, v7}, Lcom/android/launcher2/HomePendingWidget;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 762
    .local v2, w:Lcom/android/launcher2/HomePendingWidget;
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget v5, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iget v6, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForAppWidget(Landroid/appwidget/AppWidgetProviderInfo;II[I)[I

    move-result-object v1

    .line 763
    .local v1, span:[I
    invoke-direct {p0, v2, p1, v1}, Lcom/android/launcher2/Launcher;->fillInHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/Launcher$WidgetAddInfo;[I)V

    .line 764
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/HomeView;->addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;)V

    .line 765
    const/4 v4, 0x1

    .line 768
    .end local v1           #span:[I
    .end local v2           #w:Lcom/android/launcher2/HomePendingWidget;
    .end local v3           #wdgtInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private processAsSamsungSurfaceWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z
    .locals 7
    .parameter "info"

    .prologue
    const/4 v6, 0x0

    .line 718
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    iget-object v4, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v2

    .line 719
    .local v2, widgetInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    if-nez v2, :cond_0

    .line 720
    const/4 v3, 0x0

    .line 731
    :goto_0
    return v3

    .line 727
    :cond_0
    new-instance v1, Lcom/android/launcher2/HomePendingSurfaceWidget;

    invoke-direct {v1, v2}, Lcom/android/launcher2/HomePendingSurfaceWidget;-><init>(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V

    .line 728
    .local v1, w:Lcom/android/launcher2/HomePendingSurfaceWidget;
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget v4, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iget v5, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForSurfaceWidget(II[I)[I

    move-result-object v0

    .line 729
    .local v0, span:[I
    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher2/Launcher;->fillInHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/Launcher$WidgetAddInfo;[I)V

    .line 730
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/HomeView;->addSurfaceWidgetFromDrop(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z

    .line 731
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private processAsSamsungWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z
    .locals 9
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 692
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    iget-object v1, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher2/SamsungWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/launcher2/SamsungWidgetProviderInfo;

    move-result-object v8

    .line 693
    .local v8, widgetInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;
    if-nez v8, :cond_0

    .line 694
    const/4 v0, 0x0

    .line 704
    :goto_0
    return v0

    .line 700
    :cond_0
    new-instance v7, Lcom/android/launcher2/HomePendingSamsungWidget;

    invoke-direct {v7, v8}, Lcom/android/launcher2/HomePendingSamsungWidget;-><init>(Lcom/android/launcher2/SamsungWidgetProviderInfo;)V

    .line 701
    .local v7, w:Lcom/android/launcher2/HomePendingSamsungWidget;
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget v1, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iget v2, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    iget v3, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iget v4, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForSamsungWidget(IIII[I)[I

    move-result-object v6

    .line 702
    .local v6, span:[I
    invoke-direct {p0, v7, p1, v6}, Lcom/android/launcher2/Launcher;->fillInHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/Launcher$WidgetAddInfo;[I)V

    .line 703
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v7}, Lcom/android/launcher2/HomeView;->addSamsungWidgetFromDrop(Lcom/android/launcher2/HomePendingSamsungWidget;)Z

    .line 704
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filepath"

    .prologue
    .line 2671
    const-string v6, ""

    .line 2672
    .local v6, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2673
    .local v0, buf:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 2675
    .local v4, fr:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2676
    .end local v4           #fr:Ljava/io/FileReader;
    .local v5, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x1fa0

    invoke-direct {v1, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 2677
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v6

    .line 2686
    if-eqz v5, :cond_0

    .line 2687
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 2688
    :cond_0
    if-eqz v1, :cond_1

    .line 2689
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .line 2695
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    if-nez v6, :cond_7

    .line 2696
    const-string v6, ""

    .line 2699
    :goto_1
    return-object v6

    .line 2690
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 2691
    .local v2, e:Ljava/io/IOException;
    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .line 2694
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_0

    .line 2678
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 2679
    .local v3, ex:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v7, "Launcher"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2686
    if-eqz v4, :cond_3

    .line 2687
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 2688
    :cond_3
    if-eqz v0, :cond_2

    .line 2689
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 2690
    :catch_2
    move-exception v2

    .line 2691
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2681
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 2682
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v7, "Launcher"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2686
    if-eqz v4, :cond_4

    .line 2687
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 2688
    :cond_4
    if-eqz v0, :cond_2

    .line 2689
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 2690
    :catch_4
    move-exception v2

    .line 2691
    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2685
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 2686
    :goto_4
    if-eqz v4, :cond_5

    .line 2687
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 2688
    :cond_5
    if-eqz v0, :cond_6

    .line 2689
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 2693
    :cond_6
    :goto_5
    throw v7

    .line 2690
    :catch_5
    move-exception v2

    .line 2691
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "Launcher"

    const-string v9, "IOException close()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2698
    .end local v2           #e:Ljava/io/IOException;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    goto :goto_1

    .line 2685
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_4

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 2681
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3

    .line 2678
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_9
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private releaseShadows()V
    .locals 2

    .prologue
    .line 3096
    const-string v0, "Launcher"

    const-string v1, "releaseShadows called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->releaseShadows()V

    .line 3098
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->releaseShadows()V

    .line 3100
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->releaseShadows()V

    .line 3101
    return-void
.end method

.method public static requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "type"
    .parameter "context"

    .prologue
    .line 3285
    move-object v0, p1

    .line 3286
    .local v0, c:Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0e0047

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e00e2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/launcher2/Launcher$8;

    invoke-direct {v3, v0}, Lcom/android/launcher2/Launcher$8;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3305
    return-void
.end method

.method static setHomeEditMode(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 3142
    sput-boolean p0, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    .line 3143
    return-void
.end method

.method static setHomeRemoveMode(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 3152
    sput-boolean p0, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    .line 3153
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 7

    .prologue
    .line 1692
    const/16 v3, 0x1400

    .line 1693
    .local v3, visibility:I
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1695
    const v5, 0x7f070073

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1696
    .local v2, indicatorBg:Landroid/widget/ImageView;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1698
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1699
    .local v4, wmLp:Landroid/view/WindowManager$LayoutParams;
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0xc00

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1701
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1702
    .local v1, indiHeight:I
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v5}, Lcom/android/launcher2/AnimationLayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1703
    .local v0, aniLp:Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1704
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v5, v0}, Lcom/android/launcher2/AnimationLayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1705
    return-void
.end method

.method private setMarketLabel()V
    .locals 6

    .prologue
    const v5, 0x7f0e0029

    .line 975
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 976
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 977
    .local v1, marketAppInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    .end local v1           #marketAppInfo:Landroid/content/pm/ActivityInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 983
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    .line 985
    :cond_1
    :goto_0
    return-void

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 982
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 983
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 982
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    .line 983
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    :cond_2
    throw v2
.end method

.method public static setRestorePageCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 3365
    sput p0, Lcom/android/launcher2/Launcher;->mBackupPageCount:I

    .line 3366
    return-void
.end method

.method public static setRestoreScreenIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 3369
    sput p0, Lcom/android/launcher2/Launcher;->mBackupScreenIndex:I

    .line 3370
    return-void
.end method

.method private setupOptionsMenu(Landroid/view/Menu;)Z
    .locals 36
    .parameter "menu"

    .prologue
    .line 2301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v32

    .line 2302
    .local v32, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/AnimationLayer;->areTouchEventsBlocked()Z

    move-result v33

    if-nez v33, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/16 v33, 0x0

    .line 2496
    :goto_0
    return v33

    .line 2304
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0e002d

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2306
    .local v19, mDisableText:Ljava/lang/String;
    const v33, 0x7f0700c2

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    .line 2307
    .local v20, market:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2308
    const v33, 0x7f0700c3

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 2309
    .local v7, edit:Landroid/view/MenuItem;
    const v33, 0x7f0700cb

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    .line 2310
    .local v23, search:Landroid/view/MenuItem;
    const v33, 0x7f0700cd

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    .line 2311
    .local v29, uninstall:Landroid/view/MenuItem;
    const v33, 0x7f0700ce

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2312
    .local v4, downloaded:Landroid/view/MenuItem;
    const v33, 0x7f0700cc

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v30

    .line 2313
    .local v30, viewType:Landroid/view/MenuItem;
    const v33, 0x7f0700cf

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    .line 2314
    .local v27, shareApp:Landroid/view/MenuItem;
    const v33, 0x7f0700d0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    .line 2315
    .local v24, selAppsToHide:Landroid/view/MenuItem;
    const v33, 0x7f0700d1

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    .line 2316
    .local v25, selAppsToUnHide:Landroid/view/MenuItem;
    const v33, 0x7f0700d3

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    .line 2317
    .local v21, moveToSecretBox:Landroid/view/MenuItem;
    const v33, 0x7f0700d4

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    .line 2318
    .local v22, removeFromSecretBox:Landroid/view/MenuItem;
    const v33, 0x7f0700c5

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2319
    .local v3, createFolder:Landroid/view/MenuItem;
    const v33, 0x7f0700c4

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 2320
    .local v11, homeAddWidget:Landroid/view/MenuItem;
    const v33, 0x7f0700c6

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 2321
    .local v10, homeAddWallpaper:Landroid/view/MenuItem;
    const v33, 0x7f0700c9

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 2322
    .local v8, homeAddCustomPage:Landroid/view/MenuItem;
    const v33, 0x7f0700ca

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 2324
    .local v15, homeSearchViaSFinder:Landroid/view/MenuItem;
    const v33, 0x7f0700d6

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 2325
    .local v14, homeSearch:Landroid/view/MenuItem;
    const v33, 0x7f0700c8

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 2326
    .local v12, homeEdit:Landroid/view/MenuItem;
    const v33, 0x7f0700d7

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 2327
    .local v17, homeSettings:Landroid/view/MenuItem;
    const v33, 0x7f0700d8

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 2328
    .local v13, homeHelp:Landroid/view/MenuItem;
    const v33, 0x7f0700d2

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    .line 2329
    .local v26, selappstoenable:Landroid/view/MenuItem;
    const v33, 0x7f0700c7

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 2331
    .local v16, homeSetTheme:Landroid/view/MenuItem;
    const v33, 0x7f0700d5

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 2332
    .local v9, homeAddPage:Landroid/view/MenuItem;
    sget-object v33, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v5

    .line 2335
    .local v5, downloadedApp:Z
    const/16 v33, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2336
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2337
    const/16 v33, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2338
    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2339
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2340
    const/16 v33, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2341
    const/16 v33, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2342
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2343
    const/16 v33, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2344
    const/16 v33, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2345
    const/16 v33, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2346
    const/16 v33, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2347
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2348
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2349
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2350
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2351
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2354
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2355
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2356
    const/16 v33, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2357
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2358
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2361
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_f

    .line 2364
    sget-boolean v33, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    if-eqz v33, :cond_2

    .line 2365
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2368
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    const-string v34, "com.sec.feature.findo"

    invoke-virtual/range {v33 .. v34}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 2369
    .local v18, isEnableFindoFeature:Z
    if-eqz v18, :cond_b

    .line 2374
    :goto_1
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2376
    sget-boolean v33, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v33, :cond_4

    .line 2377
    if-eqz v12, :cond_3

    .line 2378
    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v33

    if-nez v33, :cond_c

    .line 2379
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2380
    const v33, 0x7f0e0044

    move/from16 v0, v33

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2385
    :cond_3
    :goto_2
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2389
    :cond_4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "easy_mode_switch"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-nez v33, :cond_d

    const/16 v33, 0x1

    :goto_3
    sput-boolean v33, Lcom/android/launcher2/Launcher;->mEasyStateForHelpApp:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2396
    :cond_5
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isHelpAppAvailable()Z

    move-result v33

    if-eqz v33, :cond_6

    .line 2398
    sget-boolean v33, Lcom/android/launcher2/Launcher;->mEasyStateForHelpApp:Z

    if-eqz v33, :cond_e

    .line 2400
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2406
    :cond_6
    :goto_5
    const/16 v33, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2407
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2408
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2409
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2411
    sget-boolean v33, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v33, :cond_7

    .line 2412
    const/16 v33, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2485
    .end local v18           #isEnableFindoFeature:Z
    :cond_7
    :goto_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Launcher_DisableGoogleOption"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 2487
    const/16 v33, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2488
    const/16 v33, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2491
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    move-object/from16 v33, v0

    if-eqz v33, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    move-object/from16 v33, v0

    const-string v34, "com.android.vending"

    invoke-virtual/range {v33 .. v34}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    move-object/from16 v33, v0

    const-string v34, "com.google.android.finsky"

    invoke-virtual/range {v33 .. v34}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_a

    .line 2493
    :cond_9
    const/16 v33, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2496
    :cond_a
    const/16 v33, 0x1

    goto/16 :goto_0

    .line 2372
    .restart local v18       #isEnableFindoFeature:Z
    :cond_b
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 2382
    :cond_c
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 2389
    :cond_d
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 2390
    :catch_0
    move-exception v6

    .line 2392
    .local v6, e:Ljava/lang/Exception;
    sget-boolean v33, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v33, :cond_5

    const-string v33, "Launcher"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Stuck to help app because of indicated Easymode now   Error="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2403
    .end local v6           #e:Ljava/lang/Exception;
    :cond_e
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 2414
    .end local v18           #isEnableFindoFeature:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v33

    if-eqz v33, :cond_7

    .line 2415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v33

    if-eqz v33, :cond_11

    .line 2417
    const/16 v33, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2418
    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v31

    .line 2420
    .local v31, widgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v31, :cond_10

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/MenuWidgets;->hasUninstallableWidgets()Z

    move-result v33

    if-eqz v33, :cond_10

    const/16 v33, 0x1

    :goto_7
    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_10
    const/16 v33, 0x0

    goto :goto_7

    .line 2425
    .end local v31           #widgets:Lcom/android/launcher2/MenuWidgets;
    :cond_11
    sget-object v33, Lcom/android/launcher2/Launcher$17;->$SwitchMap$com$android$launcher2$MenuView$ViewType:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/MenuView$ViewType;->ordinal()I

    move-result v34

    aget v33, v33, v34

    packed-switch v33, :pswitch_data_0

    goto/16 :goto_6

    .line 2429
    :pswitch_0
    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2430
    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2433
    sget-object v33, Lcom/android/launcher2/Launcher$17;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v34

    aget v33, v33, v34

    packed-switch v33, :pswitch_data_1

    goto/16 :goto_6

    .line 2435
    :pswitch_1
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2436
    sget-object v33, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v2

    .line 2437
    .local v2, _tmp:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_12

    const/16 v33, 0x1

    :goto_8
    move/from16 v0, v33

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2440
    const/16 v33, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2441
    const/16 v33, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2442
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2443
    sget-object v33, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v28

    .line 2444
    .local v28, topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v28, :cond_14

    .line 2445
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_13

    const/16 v33, 0x1

    :goto_9
    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2449
    :goto_a
    const/16 v33, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2450
    sget-object v33, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/MenuAppModel;->hasHiddenApps()Z

    move-result v33

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2451
    sget-boolean v33, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v33, :cond_7

    .line 2452
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2453
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2454
    const/16 v33, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2455
    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2456
    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2457
    const/16 v33, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2458
    sget-object v33, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/MenuAppModel;->isDisableAppListEmpty()Z

    move-result v33

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 2437
    .end local v28           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_12
    const/16 v33, 0x0

    goto/16 :goto_8

    .line 2445
    .restart local v28       #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_13
    const/16 v33, 0x0

    goto :goto_9

    .line 2447
    :cond_14
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_a

    .line 2479
    .end local v2           #_tmp:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v28           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :pswitch_2
    const/16 v33, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2480
    const/16 v33, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 2425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2433
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private showMagazineCling()V
    .locals 14

    .prologue
    .line 3408
    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewStub;

    .line 3409
    .local v7, magazine_cling_message:Landroid/view/ViewStub;
    const/4 v0, 0x3

    new-array v6, v0, [Landroid/widget/ImageView;

    .line 3410
    .local v6, mHelpStartNowImage:[Landroid/widget/ImageView;
    const/4 v0, 0x3

    new-array v4, v0, [Landroid/graphics/drawable/AnimationDrawable;

    .line 3411
    .local v4, mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;
    const-string v0, "com.android.launcher2.prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 3412
    .local v11, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 3414
    .local v3, edit:Landroid/content/SharedPreferences$Editor;
    if-eqz v7, :cond_4

    .line 3415
    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 3417
    .local v5, m_cling:Landroid/widget/RelativeLayout;
    if-eqz v5, :cond_0

    .line 3418
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3421
    :cond_0
    const/4 v1, 0x0

    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v6, v1

    .line 3422
    const/4 v1, 0x1

    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v6, v1

    .line 3423
    const/4 v1, 0x2

    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v6, v1

    .line 3425
    const/4 v1, 0x0

    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v4, v1

    .line 3426
    const/4 v1, 0x1

    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v4, v1

    .line 3427
    const/4 v1, 0x2

    const/4 v0, 0x2

    aget-object v0, v6, v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v4, v1

    .line 3429
    const/4 v0, 0x0

    aget-object v0, v6, v0

    new-instance v1, Lcom/android/launcher2/Launcher$10;

    invoke-direct {v1, p0, v4}, Lcom/android/launcher2/Launcher$10;-><init>(Lcom/android/launcher2/Launcher;[Landroid/graphics/drawable/AnimationDrawable;)V

    const-wide/16 v12, 0x190

    invoke-virtual {v0, v1, v12, v13}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3431
    const/4 v0, 0x1

    aget-object v0, v6, v0

    new-instance v1, Lcom/android/launcher2/Launcher$11;

    invoke-direct {v1, p0, v4}, Lcom/android/launcher2/Launcher$11;-><init>(Lcom/android/launcher2/Launcher;[Landroid/graphics/drawable/AnimationDrawable;)V

    const-wide/16 v12, 0xc8

    invoke-virtual {v0, v1, v12, v13}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3433
    const/4 v0, 0x2

    aget-object v0, v6, v0

    new-instance v1, Lcom/android/launcher2/Launcher$12;

    invoke-direct {v1, p0, v4}, Lcom/android/launcher2/Launcher$12;-><init>(Lcom/android/launcher2/Launcher;[Landroid/graphics/drawable/AnimationDrawable;)V

    const-wide/16 v12, 0x0

    invoke-virtual {v0, v1, v12, v13}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3437
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 3438
    .local v2, magazine_cling_message_checkbox_check:Landroid/widget/CheckBox;
    if-eqz v2, :cond_1

    .line 3439
    new-instance v0, Lcom/android/launcher2/Launcher$13;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$13;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3445
    :cond_1
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 3446
    .local v10, magazine_cling_message_checkbox_text:Landroid/widget/TextView;
    if-eqz v10, :cond_2

    .line 3447
    new-instance v0, Lcom/android/launcher2/Launcher$14;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher2/Launcher$14;-><init>(Lcom/android/launcher2/Launcher;Landroid/widget/CheckBox;)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3454
    :cond_2
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 3455
    .local v8, magazine_cling_message_button_help:Landroid/widget/Button;
    if-eqz v8, :cond_3

    .line 3456
    new-instance v0, Lcom/android/launcher2/Launcher$15;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Launcher$15;-><init>(Lcom/android/launcher2/Launcher;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;[Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3475
    :cond_3
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 3476
    .local v9, magazine_cling_message_button_ok:Landroid/widget/Button;
    if-eqz v9, :cond_4

    .line 3477
    new-instance v0, Lcom/android/launcher2/Launcher$16;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Launcher$16;-><init>(Lcom/android/launcher2/Launcher;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;[Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3492
    .end local v2           #magazine_cling_message_checkbox_check:Landroid/widget/CheckBox;
    .end local v5           #m_cling:Landroid/widget/RelativeLayout;
    .end local v8           #magazine_cling_message_button_help:Landroid/widget/Button;
    .end local v9           #magazine_cling_message_button_ok:Landroid/widget/Button;
    .end local v10           #magazine_cling_message_checkbox_text:Landroid/widget/TextView;
    :cond_4
    return-void
.end method

.method public static startDrag(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 2933
    new-instance v0, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v0

    return v0
.end method

.method public static startDrag(Landroid/view/View;F)Z
    .locals 1
    .parameter "v"
    .parameter "shrinkfactor"

    .prologue
    .line 2936
    new-instance v0, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;F)V

    invoke-static {p0, v0}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v0

    return v0
.end method

.method private static final startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/launcher2/ShadowBuilder;Lcom/android/launcher2/DragState;I)Z
    .locals 27
    .parameter "inst"
    .parameter "data"
    .parameter "shadowBuilder"
    .parameter "myLocalState"
    .parameter "flags"

    .prologue
    .line 2944
    const-string v5, "Launcher"

    const-string v6, "Drag started"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    const/16 v23, 0x0

    .line 2947
    .local v23, okay:Z
    new-instance v25, Landroid/graphics/Point;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Point;-><init>()V

    .line 2948
    .local v25, shadowSize:Landroid/graphics/Point;
    new-instance v26, Landroid/graphics/Point;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Point;-><init>()V

    .line 2949
    .local v26, shadowTouchPoint:Landroid/graphics/Point;
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2951
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v5, :cond_0

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_1

    :cond_0
    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_2

    .line 2952
    :cond_1
    const-string v5, "Launcher"

    const-string v6, "Drag shadow touch point must not be negative"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    const/4 v5, 0x0

    .line 3024
    :goto_0
    return v5

    .line 2955
    :cond_2
    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_3

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_4

    .line 2956
    :cond_3
    const-string v5, "Launcher"

    const-string v6, "Drag shadow dimensions must not be negative"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    const/4 v5, 0x0

    goto :goto_0

    .line 2960
    :cond_4
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    .line 2962
    .local v8, surface:Landroid/view/Surface;
    :try_start_0
    const-class v5, Landroid/view/View;

    const-string v6, "mAttachInfo"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v20

    .line 2963
    .local v20, f:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2964
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 2966
    .local v18, _mAttachInfo:Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mWindow"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v20

    .line 2967
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2968
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/IWindow;

    .line 2970
    .local v4, _mWindow:Landroid/view/IWindow;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mSession"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v20

    .line 2971
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2972
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/IWindowSession;

    .line 2974
    .local v3, _mSession:Landroid/view/IWindowSession;
    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v25

    iget v7, v0, Landroid/graphics/Point;->y:I

    move/from16 v5, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v11

    .line 2976
    .local v11, token:Landroid/os/IBinder;
    if-eqz v11, :cond_7

    .line 2977
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/launcher2/ShadowBuilder;->setSurface(Landroid/view/Surface;)V

    .line 2978
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/ShadowBuilder;->draw()V

    .line 2980
    const-class v5, Landroid/view/View;

    const-string v6, "getViewRootImpl"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 2981
    .local v21, m:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2982
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/ViewRootImpl;

    .line 2985
    .local v24, root:Landroid/view/ViewRootImpl;
    const-class v5, Landroid/view/ViewRootImpl;

    const-string v6, "setLocalDragState"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/Object;

    aput-object v10, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 2986
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2987
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2990
    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 2992
    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v12, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v13, v5

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v14, v5

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v15, v5

    const v17, 0x3f350481

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v16, p1

    invoke-interface/range {v9 .. v17}, Landroid/view/IWindowSession;->performDragAlpha(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;F)Z

    move-result v23

    .line 2996
    if-nez v23, :cond_7

    .line 2997
    const-string v5, "Launcher"

    const-string v6, "performDrag() return false."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_5

    .line 3002
    const/16 v22, 0x0

    .line 3003
    .local v22, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v22, Lcom/android/launcher2/guide/RemoveItemsGuider;

    .end local v22           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    .line 3004
    .restart local v22       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v22, Lcom/android/launcher2/guide/RemoveItemsGuider;

    .end local v22           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    .line 3005
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-static {v5}, Lcom/android/launcher2/guide/GuideFragment;->showWrongActionDialog(Landroid/app/Activity;)V

    .line 3007
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v5, :cond_6

    .line 3008
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3010
    :cond_6
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/Object;

    aput-object v5, v6, v7

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3011
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3019
    .end local v3           #_mSession:Landroid/view/IWindowSession;
    .end local v4           #_mWindow:Landroid/view/IWindow;
    .end local v11           #token:Landroid/os/IBinder;
    .end local v18           #_mAttachInfo:Ljava/lang/Object;
    .end local v20           #f:Ljava/lang/reflect/Field;
    .end local v21           #m:Ljava/lang/reflect/Method;
    .end local v24           #root:Landroid/view/ViewRootImpl;
    :cond_7
    :goto_1
    if-eqz v23, :cond_8

    .line 3020
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragState;->setShadow(Lcom/android/launcher2/ShadowBuilder;)V

    .line 3021
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/DragState;->onDragStartedSuccessfully()V

    .line 3023
    :cond_8
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start Drag result "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v5, v23

    .line 3024
    goto/16 :goto_0

    .line 3014
    :catch_0
    move-exception v19

    .line 3015
    .local v19, e:Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v5, :cond_9

    const-string v5, "Launcher"

    const-string v6, "Unable to initiate drag"

    move-object/from16 v0, v19

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3016
    :cond_9
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    goto :goto_1
.end method

.method public static startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z
    .locals 4
    .parameter "v"
    .parameter "shadow"

    .prologue
    .line 2939
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher2/DragState;

    invoke-direct {v2, p0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/launcher2/ShadowBuilder;Lcom/android/launcher2/DragState;I)Z

    move-result v0

    return v0
.end method

.method private tryQueueWidgetAddViaIntent(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 8
    .parameter "intent"
    .parameter "overwriteAction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1810
    if-eqz p1, :cond_4

    .line 1811
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1816
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.sec.launcher.action.INSTALL_WIDGET"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1817
    if-eqz p2, :cond_0

    .line 1818
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1820
    :cond_0
    const-string v7, "com.sec.launcher.intent.extra.COMPONENT"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1821
    .local v2, compName:Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    .line 1825
    new-instance v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v7}, Lcom/android/launcher2/Launcher$WidgetAddInfo;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    .line 1826
    .local v1, addInfo:Lcom/android/launcher2/Launcher$WidgetAddInfo;
    iput-object v2, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    .line 1827
    const-string v7, "com.sec.launcher.intent.extra.DUPLICATE"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mAllowDuplicate:Z

    .line 1829
    const-string v7, "com.sec.launcher.intent.extra.sizeX"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1830
    .local v3, sizeX:I
    if-ge v3, v6, :cond_1

    move v3, v5

    .end local v3           #sizeX:I
    :cond_1
    iput v3, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    .line 1831
    const-string v7, "com.sec.launcher.intent.extra.sizeY"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1832
    .local v4, sizeY:I
    if-ge v4, v6, :cond_3

    :goto_0
    iput v5, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    .line 1833
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1           #addInfo:Lcom/android/launcher2/Launcher$WidgetAddInfo;
    .end local v4           #sizeY:I
    :cond_2
    move v5, v6

    .line 1838
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #compName:Landroid/content/ComponentName;
    :goto_1
    return v5

    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #addInfo:Lcom/android/launcher2/Launcher$WidgetAddInfo;
    .restart local v2       #compName:Landroid/content/ComponentName;
    .restart local v4       #sizeY:I
    :cond_3
    move v5, v4

    .line 1832
    goto :goto_0

    .line 1838
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #addInfo:Lcom/android/launcher2/Launcher$WidgetAddInfo;
    .end local v2           #compName:Landroid/content/ComponentName;
    .end local v4           #sizeY:I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public RestoreHomeScreen()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 3331
    sput-boolean v8, Lcom/android/launcher2/Launcher;->isHomescreenRestoring:Z

    .line 3332
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 3334
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v3

    .line 3336
    .local v3, oldScreenCount:I
    sget v5, Lcom/android/launcher2/Launcher;->mBackupPageCount:I

    if-ne v5, v7, :cond_0

    .line 3337
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v4

    .line 3341
    .local v4, screenCount:I
    :goto_0
    sub-int v2, v4, v3

    .line 3342
    .local v2, difference:I
    if-lez v2, :cond_1

    .line 3343
    const/4 v1, 0x0

    .local v1, count:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 3344
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->addPage()V

    .line 3343
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3339
    .end local v1           #count:I
    .end local v2           #difference:I
    .end local v4           #screenCount:I
    :cond_0
    sget v4, Lcom/android/launcher2/Launcher;->mBackupPageCount:I

    .restart local v4       #screenCount:I
    goto :goto_0

    .line 3346
    .restart local v2       #difference:I
    :cond_1
    if-gez v2, :cond_2

    .line 3347
    const/4 v1, 0x0

    .restart local v1       #count:I
    :goto_2
    mul-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_2

    .line 3348
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    .line 3347
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3352
    .end local v1           #count:I
    :cond_2
    sget v5, Lcom/android/launcher2/Launcher;->mBackupScreenIndex:I

    if-eq v5, v7, :cond_3

    sget v5, Lcom/android/launcher2/Launcher;->mBackupScreenIndex:I

    if-ge v5, v4, :cond_3

    .line 3353
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    sget v6, Lcom/android/launcher2/Launcher;->mBackupScreenIndex:I

    invoke-virtual {v5, v6}, Lcom/android/launcher2/HomeView;->setHomeScreenAt(I)V

    .line 3355
    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/launcher2/LauncherModel;->setRefreshRequired(Z)V

    .line 3356
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/launcher2/Launcher$9;

    invoke-direct {v6, p0, v0}, Lcom/android/launcher2/Launcher$9;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/LauncherApplication;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3362
    return-void
.end method

.method public addAnyPendingWidgetsToWorkspace()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 778
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 779
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->buildWidgetMap(Ljava/util/HashMap;)V

    .line 780
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    .line 781
    .local v6, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    .line 783
    .local v0, currentScreen:I
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v7

    if-nez v7, :cond_4

    .line 784
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;

    .line 785
    .local v1, info:Lcom/android/launcher2/Launcher$WidgetAddInfo;
    iget-boolean v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mAllowDuplicate:Z

    if-nez v7, :cond_1

    .line 786
    iget-object v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 787
    .local v5, screen:Ljava/lang/Integer;
    if-eqz v5, :cond_1

    .line 788
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 789
    const v7, 0x7f0e001e

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher2/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 790
    .local v3, msg:Ljava/lang/String;
    invoke-static {p0, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 794
    .end local v3           #msg:Ljava/lang/String;
    .end local v5           #screen:Ljava/lang/Integer;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->processAsSamsungWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z

    move-result v4

    .line 795
    .local v4, processed:Z
    if-nez v4, :cond_2

    .line 796
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->processAsSamsungSurfaceWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z

    move-result v4

    .line 798
    :cond_2
    if-nez v4, :cond_3

    .line 799
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->processAsAndroidAppWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z

    move-result v4

    .line 801
    :cond_3
    if-eqz v4, :cond_0

    iget-object v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 808
    iget-object v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 811
    .end local v1           #info:Lcom/android/launcher2/Launcher$WidgetAddInfo;
    .end local v4           #processed:Z
    :cond_4
    return-void
.end method

.method public addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    return-void
.end method

.method public bindAllAppsSecretMode()V
    .locals 1

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->bindMenuSecretMode()V

    .line 2904
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 2905
    return-void
.end method

.method public bindAppsLoaded()V
    .locals 1

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->appModelLoaded()V

    .line 2853
    return-void
.end method

.method public bindBadgeUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2856
    .local p1, appItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .local p2, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2857
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher2/HomeView;->bindHomeItemsUpdated(Ljava/util/List;Z)V

    .line 2859
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2860
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuView;->appBadgeUpdated(Ljava/util/List;)V

    .line 2862
    :cond_1
    return-void
.end method

.method public bindHomeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2829
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2830
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    .line 2831
    return-void
.end method

.method public bindHomeBegin()V
    .locals 1

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->startBinding()V

    .line 2802
    return-void
.end method

.method public bindHomeDeleteSecretPage()V
    .locals 2

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 2896
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 2897
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->bindHomeDeleteSecretPage()V

    .line 2898
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->refreshQuickViewWorkspace(Z)V

    .line 2899
    return-void
.end method

.method public bindHomeEnd()V
    .locals 3

    .prologue
    .line 2815
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2816
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->finishBindingItems()V

    .line 2818
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    .line 2819
    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    .line 2820
    .local v1, oldGMode:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    .line 2821
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    .line 2822
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2823
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "homescreen:guide_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2824
    invoke-static {p0, v0}, Lcom/android/launcher2/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2826
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #oldGMode:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bindHomeFolders(Ljava/util/Map;)V
    .locals 1
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
    .line 2810
    .local p1, folders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2811
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindFolders(Ljava/util/Map;)V

    .line 2812
    return-void
.end method

.method public bindHomeInsertSecretPage()V
    .locals 2

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 2885
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 2886
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSecretPageManager:Lcom/android/launcher2/SecretPageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/SecretPageManager;->getSecretPageCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2891
    :goto_0
    return-void

    .line 2889
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->bindHomeInsertSecretPage()V

    .line 2890
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->refreshQuickViewWorkspace(Z)V

    goto :goto_0
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
    .line 2870
    .local p1, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindHomeItemsRemoved(Ljava/util/List;)V

    .line 2871
    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;)V
    .locals 2
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
    .line 2874
    .local p1, updated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/HomeView;->bindHomeItemsUpdated(Ljava/util/List;Z)V

    .line 2875
    return-void
.end method

.method public bindHomeSamsungWidget(Lcom/android/launcher2/SamsungWidgetItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 2834
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2835
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindSamsungWidget(Lcom/android/launcher2/SamsungWidgetItem;)V

    .line 2836
    return-void
.end method

.method public bindHomeShortcuts(Ljava/util/List;II)V
    .locals 1
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
    .line 2805
    .local p1, shortcuts:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2806
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/HomeView;->bindItems(Ljava/util/List;II)V

    .line 2807
    return-void
.end method

.method public bindHomeSurfaceWidget(Lcom/android/launcher2/SurfaceWidgetItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 2846
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2847
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindSurfaceWidget(Lcom/android/launcher2/SurfaceWidgetItem;)V

    .line 2848
    return-void
.end method

.method public bindHotseatItems(Ljava/util/List;)V
    .locals 2
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
    .line 2839
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    const-string v0, "Launcher"

    const-string v1, "bindHotseatItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2841
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindHotseat(Ljava/util/List;)V

    .line 2842
    return-void
.end method

.method public bindModeChange()V
    .locals 1

    .prologue
    .line 2796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    .line 2797
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->finish()V

    .line 2798
    return-void
.end method

.method public bindPackagesChanged(Z)V
    .locals 1
    .parameter "appModelUpdated"

    .prologue
    .line 2865
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->forceReload()V

    .line 2866
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuView;->packagesChanged(Z)V

    .line 2867
    return-void
.end method

.method public bindSearchablesChanged()V
    .locals 1

    .prologue
    .line 3054
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->updateGlobalSearchIcon()Z

    .line 3055
    return-void
.end method

.method public bindSecretModeChange(Z)V
    .locals 0
    .parameter "isSecretMode"

    .prologue
    .line 2879
    sput-boolean p1, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    .line 2880
    return-void
.end method

.method public bindWidgetsAfterConfigChange()V
    .locals 1

    .prologue
    .line 2789
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    if-nez v0, :cond_0

    .line 2790
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->bindWidgetsAfterConfigChange()V

    .line 2792
    :cond_0
    return-void
.end method

.method public checkFactoryMode()Z
    .locals 1

    .prologue
    .line 2666
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closePopupMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1595
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    .line 1598
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 1600
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeOptionsMenu()V

    .line 1601
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 1602
    return-void
.end method

.method public createPopupMenu(Landroid/view/View;)V
    .locals 3
    .parameter "popupAnchorView"

    .prologue
    .line 2248
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setMarketLabel()V

    .line 2249
    if-nez p1, :cond_0

    .line 2250
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find anchor for menu button."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2252
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    .line 2253
    new-instance v0, Lcom/android/launcher2/popup/PopupMenu;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/popup/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    .line 2254
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    new-instance v1, Lcom/android/launcher2/Launcher$6;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$6;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/PopupMenu;->setOnDismissListener(Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;)V

    .line 2261
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    .line 2262
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f10

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2263
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/PopupMenu;->setOnMenuItemClickListener(Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;)V

    .line 2264
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)Z

    .line 2265
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const v8, 0x7f0700a0

    const v7, 0x7f07008a

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 1398
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_7

    .line 1399
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1557
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    :cond_1
    :goto_1
    return v4

    .line 1402
    :sswitch_0
    sget v5, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    if-eq v5, v4, :cond_2

    sget v5, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    :cond_2
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_4

    .line 1404
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_3

    const-string v4, "CHN"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    move v4, v0

    .line 1408
    goto :goto_1

    .line 1410
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1414
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1415
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v4, :cond_0

    move v4, v0

    .line 1416
    goto :goto_1

    .line 1422
    :sswitch_1
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_1

    move v4, v0

    .line 1423
    goto :goto_1

    :sswitch_2
    move v4, v0

    .line 1428
    goto :goto_1

    .line 1430
    :sswitch_3
    const-string v5, "debug.launcher2.dumpstate"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1431
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->dumpState()V

    goto :goto_1

    .line 1439
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1443
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isEmptyPage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1444
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1445
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    goto :goto_1

    .line 1453
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1457
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isEmptyPage()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1458
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1459
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    goto/16 :goto_1

    .line 1465
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    .line 1466
    .local v1, menuWidgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v1, :cond_0

    .line 1467
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/PagedViewWidget;

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/SearchView$SearchAutoComplete;

    if-nez v5, :cond_6

    move v0, v4

    .line 1468
    .local v0, allowFocus:Z
    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v5, v6, :cond_0

    if-eqz v0, :cond_0

    .line 1469
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v6, 0x7f0700ad

    invoke-virtual {v5, v6}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1470
    .local v2, searchInput:Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 1471
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    goto/16 :goto_1

    .end local v0           #allowFocus:Z
    .end local v1           #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    .end local v2           #searchInput:Landroid/view/ViewGroup;
    :sswitch_6
    move v4, v0

    .line 1478
    goto/16 :goto_1

    .line 1480
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 1481
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_0

    .line 1490
    :sswitch_7
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_1

    move v4, v0

    .line 1491
    goto/16 :goto_1

    .line 1484
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 1497
    :sswitch_9
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_8

    move v4, v0

    .line 1498
    goto/16 :goto_1

    .line 1501
    :cond_8
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-nez v5, :cond_10

    .line 1502
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    .line 1503
    .restart local v1       #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v1, :cond_9

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v5, v6, :cond_9

    move v4, v0

    .line 1504
    goto/16 :goto_1

    .line 1506
    :cond_9
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_a

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_a

    move v4, v0

    .line 1507
    goto/16 :goto_1

    .line 1509
    :cond_a
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_b

    move v4, v0

    .line 1510
    goto/16 :goto_1

    .line 1513
    :cond_b
    const/4 v3, 0x0

    .line 1514
    .local v3, v:Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_e

    .line 1515
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v7, :cond_d

    .line 1516
    :cond_c
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1517
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    .line 1526
    :cond_d
    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v5}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)Z

    .line 1527
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    .line 1528
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    .line 1529
    sput-boolean v4, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    goto/16 :goto_1

    .line 1520
    :cond_e
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v8, :cond_d

    .line 1521
    :cond_f
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1522
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    goto :goto_2

    .line 1540
    .end local v1           #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    .end local v3           #v:Landroid/view/View;
    :cond_10
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v5, v6, :cond_1

    move v4, v0

    .line 1542
    goto/16 :goto_1

    .line 1549
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 1399
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_0
        0x19 -> :sswitch_3
        0x42 -> :sswitch_0
        0x52 -> :sswitch_2
        0xe1 -> :sswitch_6
    .end sparse-switch

    .line 1481
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_7
        0x13 -> :sswitch_a
        0x14 -> :sswitch_a
        0x15 -> :sswitch_a
        0x16 -> :sswitch_a
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
        0x52 -> :sswitch_9
    .end sparse-switch
.end method

.method public exitAllApps()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1103
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    .line 1104
    return-void
.end method

.method public exitAllApps(ZZ)V
    .locals 12
    .parameter "withDrag"
    .parameter "immediate"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f80

    .line 1113
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eqz v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1183
    :cond_1
    :goto_0
    return-void

    .line 1117
    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->onExitAllApps()V

    .line 1118
    sget-boolean v8, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "add_widgets"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1120
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    .line 1122
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v8, :cond_4

    .line 1123
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->cancel()V

    .line 1126
    :cond_4
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    .line 1127
    .local v6, workspace:Lcom/android/launcher2/Workspace;
    if-eqz v6, :cond_5

    .line 1128
    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 1130
    :cond_5
    if-eqz p2, :cond_7

    .line 1133
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 1134
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/HomeView;->setAlpha(F)V

    .line 1135
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/HomeView;->setScaleX(F)V

    .line 1136
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/HomeView;->setScaleY(F)V

    .line 1137
    if-eqz v6, :cond_6

    .line 1138
    const/4 v1, 0x0

    .line 1139
    .local v1, darkenAmount:F
    invoke-virtual {v6, v1}, Lcom/android/launcher2/Workspace;->setBackgroundDarken(F)V

    .line 1141
    .end local v1           #darkenAmount:F
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishExitAllApps()V

    goto :goto_0

    .line 1145
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    .local v0, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    .line 1147
    .local v4, provider:Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    invoke-interface {v4, v0}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectExitAllAppsAnimators(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1149
    .end local v4           #provider:Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    :cond_8
    if-eqz v6, :cond_9

    .line 1150
    if-eqz p1, :cond_a

    .line 1151
    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->onFadeStart()V

    .line 1159
    :cond_9
    :goto_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    .line 1160
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 1162
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1163
    .local v5, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1164
    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1165
    new-instance v8, Lcom/android/launcher2/Launcher$4;

    invoke-direct {v8, p0}, Lcom/android/launcher2/Launcher$4;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1179
    iput-object v5, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    .line 1180
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 1182
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    goto/16 :goto_0

    .line 1153
    .end local v5           #set:Landroid/animation/AnimatorSet;
    :cond_a
    const v7, 0x7f050009

    .line 1154
    .local v7, xmlID:I
    invoke-static {p0, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 1155
    .local v2, darkenAnimator:Landroid/animation/Animator;
    invoke-virtual {v2, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1156
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public exitHelp(Z)V
    .locals 7
    .parameter "isBackPressed"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1957
    sput-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    .line 1959
    sget-boolean v3, Lcom/android/launcher2/Launcher;->wasWidgetsTabShown:Z

    if-eqz v3, :cond_1

    .line 1960
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    .line 1961
    .local v2, menuWidgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v2, :cond_0

    .line 1962
    const-string v3, "Launcher - exitHelp"

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 1964
    :cond_0
    sput-boolean v5, Lcom/android/launcher2/Launcher;->wasWidgetsTabShown:Z

    .line 1967
    .end local v2           #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    :cond_1
    invoke-static {}, Lcom/android/launcher2/guide/GuideFragment;->removeWrongActionDialog()V

    .line 1968
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->removehelpAppPage()V

    .line 1969
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iput-boolean v5, v3, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    .line 1970
    sput-boolean v5, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    .line 1971
    sget-boolean v3, Lcom/android/launcher2/HomeScreenDialogFragment;->isHomeScreenDialogVisible:Z

    if-eqz v3, :cond_2

    .line 1972
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 1974
    :cond_2
    sget-boolean v3, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->isWallpaperChooserFragmentVisible:Z

    if-eqz v3, :cond_3

    .line 1975
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 1977
    :cond_3
    sput-boolean v5, Lcom/android/launcher2/CellLayout;->isWidgetResized:Z

    .line 1978
    sput-boolean v5, Lcom/android/launcher2/Launcher;->isExitingFromWallpaperActivity:Z

    .line 1979
    sput-boolean v6, Lcom/android/launcher2/AddToHomescreenDialogFragment;->setWallpaperSelected:Z

    .line 1980
    sput-boolean v6, Lcom/android/launcher2/HomeScreenDialogFragment;->homescreenSelected:Z

    .line 1982
    sget-object v3, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 1983
    sget-object v3, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-eqz v3, :cond_4

    .line 1984
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    .line 1986
    :cond_4
    sget-object v3, Lcom/android/launcher2/MenuView;->oldState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    if-eq v3, v4, :cond_5

    .line 1987
    sget-object v3, Lcom/android/launcher2/MenuView;->oldState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eqz v3, :cond_5

    .line 1988
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuView;->oldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1992
    :cond_5
    iget v3, p0, Lcom/android/launcher2/Launcher;->mPrevOrientationHelp:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 1993
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    .line 1994
    sput-boolean v6, Lcom/android/launcher2/Launcher;->isExitingFromHelp:Z

    .line 1995
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1996
    .local v1, intentExitHelp:Landroid/content/Intent;
    const-string v3, "homescreen:guide_mode"

    const-string v4, "onBackPressed"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1997
    const-string v3, "currentGmode"

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1998
    invoke-static {p0, v1}, Lcom/android/launcher2/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1999
    sput-boolean v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isWidgetToBeAdded:Z

    .line 2000
    sput v6, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 2001
    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    .line 2002
    if-eqz p1, :cond_6

    .line 2003
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getLaunchIntentForHelpHub()Landroid/content/Intent;

    move-result-object v0

    .line 2004
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_6

    .line 2005
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2007
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    return-void
.end method

.method public finishWallpaperGuide(Z)V
    .locals 5
    .parameter "isSuccess"

    .prologue
    const/4 v3, 0x0

    .line 3202
    if-eqz p1, :cond_1

    .line 3203
    const/4 v2, 0x0

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 3204
    .local v1, t:Landroid/widget/Toast;
    const v2, 0x7f03000f

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 3205
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3206
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3207
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v2, Lcom/android/launcher2/Launcher$7;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Launcher$7;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3218
    .end local v0           #mHandler:Landroid/os/Handler;
    .end local v1           #t:Landroid/widget/Toast;
    :cond_0
    :goto_0
    return-void

    .line 3215
    :cond_1
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    .line 3216
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    goto :goto_0
.end method

.method public getAnimationLayer()Lcom/android/launcher2/AnimationLayer;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    return-object v0
.end method

.method public getDisplayOrientation()I
    .locals 3

    .prologue
    .line 2720
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2721
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 2723
    .local v1, rotation:I
    packed-switch v1, :pswitch_data_0

    .line 2730
    :pswitch_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 2726
    :pswitch_1
    const/4 v2, 0x2

    goto :goto_0

    .line 2723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getHomeView()Lcom/android/launcher2/HomeView;
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    return-object v0
.end method

.method public getLauncherModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getMenuView()Lcom/android/launcher2/MenuView;
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method public getQuickViewWorkspaceOpen()Z
    .locals 1

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3105
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    .line 3107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    return-object v0
.end method

.method public getSecretPageManager()Lcom/android/launcher2/SecretPageManager;
    .locals 1

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSecretPageManager:Lcom/android/launcher2/SecretPageManager;

    return-object v0
.end method

.method public getShowEmptyPageMessagePref()Z
    .locals 1

    .prologue
    .line 3058
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    return v0
.end method

.method public getSurfaceWidgetPackageManager()Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    return-object v0
.end method

.method public getTransitionToAllApps()Z
    .locals 1

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public getmModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 3327
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public isAddToScreenDialogShowing()Z
    .locals 1

    .prologue
    .line 2068
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v0

    return v0
.end method

.method public isDialogChecked()Z
    .locals 3

    .prologue
    .line 3176
    const-string v1, "com.android.launcher2.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3178
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "add.toast.popup.dismissed.key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isEmptyPage()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1561
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1562
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 1563
    .local v4, workspace:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/CellLayoutChildren;

    if-nez v6, :cond_1

    .line 1581
    .end local v4           #workspace:Lcom/android/launcher2/CellLayout;
    :cond_0
    :goto_0
    return v5

    .line 1566
    .restart local v4       #workspace:Lcom/android/launcher2/CellLayout;
    :cond_1
    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    .line 1567
    .local v3, parent:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v0, 0x0

    .line 1569
    .local v0, countAppIcon:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 1570
    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1571
    .local v1, countItem:Landroid/view/View;
    instance-of v6, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v6, :cond_2

    .line 1572
    add-int/lit8 v0, v0, 0x1

    .line 1569
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1576
    .end local v1           #countItem:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    if-nez v0, :cond_0

    .line 1577
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isExitingAllApps()Z
    .locals 1

    .prologue
    .line 1099
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    return v0
.end method

.method public isHelpAppAvailable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2754
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2755
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2756
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2758
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public isHelpHubAvailable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2737
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2738
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    .line 2750
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2739
    :cond_1
    sget-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2741
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2742
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "displayed"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2743
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 2744
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    goto :goto_0

    .line 2746
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2747
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public isKeyStringBlocked()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2645
    const/4 v1, 0x0

    .line 2646
    .local v1, imeiBlocked:Ljava/lang/String;
    const-string v3, "KOR"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2647
    const-string v3, "ro.product.model"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2648
    .local v0, DEVICE_NAME:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2649
    const-string v3, "SHV-E110"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SHV-E120"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SHV-E160"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2652
    :cond_0
    const-string v3, "/efs/imei/keystr"

    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2653
    const-string v3, "ON"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2661
    .end local v0           #DEVICE_NAME:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 2656
    .restart local v0       #DEVICE_NAME:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isLauncherDestroyed()Z
    .locals 1

    .prologue
    .line 899
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    return v0
.end method

.method public isMotionDialogAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3040
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    .line 3044
    :goto_0
    return v0

    .line 3043
    :cond_0
    const-string v1, "com.android.launcher2.prefs"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MotionDialogOnOff"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->isMotionDialogLaunching:Z

    .line 3044
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isMotionDialogLaunching:Z

    goto :goto_0
.end method

.method public isPageEdit()Z
    .locals 3

    .prologue
    .line 1585
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    .line 1586
    .local v0, menuWidget:Lcom/android/launcher2/MenuWidgets;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v1, v2, :cond_1

    .line 1589
    :cond_0
    const/4 v1, 0x1

    .line 1591
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 3036
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    return v0
.end method

.method public isTransitioningRunning()Z
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    const/4 v0, 0x1

    .line 1006
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransitioningToShowAllApps()Z
    .locals 1

    .prologue
    .line 996
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    :cond_0
    const/4 v0, 0x1

    .line 999
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public menuWidgetsUpdated(Z)V
    .locals 3
    .parameter "hasUninstallable"

    .prologue
    .line 2916
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isOptionMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2917
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0700cd

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2918
    .local v0, uninstall:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2919
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2922
    .end local v0           #uninstall:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3184
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mActivityCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher$ActivityResultCallback;

    .line 3185
    .local v0, callback:Lcom/android/launcher2/Launcher$ActivityResultCallback;
    if-eqz v0, :cond_0

    .line 3186
    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher2/Launcher$ActivityResultCallback;->onActivityResult(IILandroid/content/Intent;)V

    .line 3187
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mActivityCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3189
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    .line 3190
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    .line 3191
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    .line 3195
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1753
    const-string v1, "Launcher"

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    invoke-super {p0}, Landroid/app/ActivityGroup;->onAttachedToWindow()V

    .line 1757
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1758
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1759
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1761
    const-string v1, "android.intent.action.REQUEST_HOME_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1762
    const-string v1, "android.intent.action.REQUEST_WIDGET_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1766
    const-string v1, "com.android.launcher.action.ACTION_HOME_RESTORE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1769
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v1, :cond_0

    .line 1770
    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1771
    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1774
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1776
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1777
    sget-object v1, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 1780
    sget-object v1, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->onNewIntent(Landroid/content/Intent;)V

    .line 1782
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    .line 1783
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1607
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->handleResizeWidget()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1611
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    .line 1630
    :cond_0
    :goto_0
    return-void

    .line 1615
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eqz v0, :cond_4

    .line 1616
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1617
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeOptionsMenu()V

    .line 1619
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    if-eqz v0, :cond_3

    .line 1620
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->startMagazineApp(Z)V

    .line 1621
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    goto :goto_0

    .line 1623
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    goto :goto_0

    .line 1628
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->onBackPressed()Z

    goto :goto_0
.end method

.method public onClickAppMarketButton()V
    .locals 2

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2525
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    const-string v1, "app market"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 2527
    :cond_0
    return-void
.end method

.method public onClickAppMarketButton(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2515
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onClickAppMarketButton()V

    .line 2516
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2521
    :goto_0
    return-void

    .line 2518
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 2516
    nop

    :pswitch_data_0
    .packed-switch 0x7f07008b
        :pswitch_0
    .end packed-switch
.end method

.method public onClickDownloadedButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->onOptionSelectedDownload()V

    .line 2531
    return-void
.end method

.method public onClickPopupMenuButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-eqz v0, :cond_1

    .line 2282
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 2293
    :cond_0
    :goto_0
    return-void

    .line 2285
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2288
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    .line 2290
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    .line 2291
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    .line 324
    .local v1, app:Lcom/android/launcher2/LauncherApplication;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 325
    invoke-virtual {v1, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 327
    :cond_0
    const-string v11, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreate. savedInstanceState: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez p1, :cond_12

    const-string v10, "null"

    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", Launcher: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 349
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 351
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 352
    .local v7, res:Landroid/content/res/Resources;
    const/high16 v10, 0x7f0b

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v7, v10, v11, v12}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    sput v10, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    .line 354
    invoke-static {v7}, Lcom/android/launcher2/FolderIconHelper;->initFolderResources(Landroid/content/res/Resources;)V

    .line 356
    sget-boolean v10, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    if-eqz v10, :cond_1

    .line 357
    const/4 v10, -0x4

    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v10

    if-nez v10, :cond_14

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v10

    if-nez v10, :cond_14

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "device_provisioned"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 364
    .local v0, IsProvisioned:Z
    if-eqz v0, :cond_13

    .line 365
    const-string v10, "Launcher"

    const-string v11, "Set device_provisioned: 1"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "device_provisioned"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 368
    const-string v10, "Launcher"

    const-string v11, "Confirm device_provisioned: 1"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v0           #IsProvisioned:Z
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Launcher_HomeScreenEditMode"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 382
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    .line 384
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Launcher_DisableTiltEffect"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 385
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLETILTEFFECT:Z

    .line 387
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Launcher_ReplaceHotseatAreaInEditMode"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 388
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    .line 389
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    .line 392
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Launcher_DisableHelpUI"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 393
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    .line 394
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Launcher_DynamicCSCFeature"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 395
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z

    .line 398
    :cond_7
    const-string v10, "Launcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DYNAMICCSCFEATURE="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z

    if-eqz v10, :cond_8

    .line 400
    if-nez p1, :cond_8

    .line 401
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.CSC_UPDATE_LAUNCHER_READY"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v5, launcherReady:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 403
    const-string v10, "DYNAMIC_CSC"

    const-string v11, "Launcher Ready intent BroadCasted"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v5           #launcherReady:Landroid/content/Intent;
    :cond_8
    sget-boolean v10, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v10, :cond_9

    const-string v10, "Launcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HOMESCREENEDITMODE="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " REPLACEHOTSEATAREAINEDITMODE="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.feature.custom_home"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    .line 416
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_15

    const/4 v10, 0x1

    :goto_2
    sput-boolean v10, Lcom/android/launcher2/Launcher;->UseQwertyKeypad:Z

    .line 417
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    .line 419
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 420
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v10, p0}, Lcom/android/launcher2/LauncherModel;->initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V

    .line 421
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 422
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    .line 425
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherModel;->hasLocaleChanged()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    if-eqz v10, :cond_a

    .line 426
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v10}, Lcom/android/launcher2/PkgResCache;->clear()V

    .line 429
    :cond_a
    const-string v10, "com.android.launcher2.prefs"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 430
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v10, "SHOW_EMPTY_PAGE_MSG"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    .line 432
    const v10, 0x7f03002d

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    .line 434
    sget-object v10, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    .line 435
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v10}, Lcom/android/launcher2/SamsungWidgetPackageManager;->loadIfNeeded()V

    .line 437
    sget-object v10, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 438
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    invoke-virtual {v10, p0}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->loadIfNeeded(Landroid/content/Context;)V

    .line 440
    const v10, 0x7f07005e

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/HomeView;

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 441
    const v10, 0x7f070098

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/MenuView;

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    .line 442
    const v10, 0x7f070072

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    .line 445
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 446
    .local v8, transaction:Landroid/app/FragmentTransaction;
    if-eqz p1, :cond_17

    .line 447
    const-string v10, "extra_home_view_hidden"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 448
    .local v9, wasHomeHidden:Z
    if-eqz v9, :cond_16

    .line 449
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    .line 450
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 451
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 452
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    sget v11, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    .line 463
    .end local v9           #wasHomeHidden:Z
    :goto_3
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commit()I

    .line 465
    iget-boolean v10, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v10, :cond_b

    .line 466
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    sget-boolean v11, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    invoke-virtual {v10, v11}, Lcom/android/launcher2/LauncherModel;->startLoader(Z)V

    .line 468
    :cond_b
    new-instance v3, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v3, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 469
    .local v3, filter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v3}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 472
    invoke-static {p0}, Lcom/android/launcher2/BadgeCountReceiver;->initialize(Landroid/content/Context;)Lcom/android/launcher2/BadgeCountReceiver;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

    .line 481
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 482
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 485
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "android.intent.category.APP_MARKET"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 488
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    .line 489
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    if-eqz v10, :cond_c

    .line 490
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 493
    :cond_c
    const v10, 0x7f070071

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AnimationLayer;

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    .line 495
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setIndicatorTransparency()V

    .line 497
    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v10, :cond_18

    .line 499
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 500
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 508
    :goto_4
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v11, 0x258

    if-ge v10, v11, :cond_19

    .line 512
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 514
    :goto_5
    sget-boolean v10, Lcom/android/launcher2/Launcher;->UseQwertyKeypad:Z

    if-eqz v10, :cond_d

    .line 515
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 518
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {p0, v10, v11}, Lcom/android/launcher2/Launcher;->tryQueueWidgetAddViaIntent(Landroid/content/Intent;Ljava/lang/String;)Z

    .line 534
    sget-boolean v10, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v10, :cond_e

    .line 535
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/launcher2/Launcher;->mIsExpandStatusBar:Z

    .line 538
    :cond_e
    sget-boolean v10, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v10, :cond_f

    .line 539
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->addNonDisableAppToList()V

    .line 542
    :cond_f
    sget-boolean v10, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v10, :cond_10

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "SHOW_MAGAZINE_CLING_MSG"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 544
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->showMagazineCling()V

    .line 547
    :cond_10
    const-string v10, "enterprise_policy"

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 549
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v10, :cond_11

    .line 550
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    .line 553
    :cond_11
    return-void

    .line 327
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #prefs:Landroid/content/SharedPreferences;
    .end local v7           #res:Landroid/content/res/Resources;
    .end local v8           #transaction:Landroid/app/FragmentTransaction;
    :cond_12
    const-string v10, "not null"

    goto/16 :goto_0

    .line 371
    .restart local v0       #IsProvisioned:Z
    .restart local v7       #res:Landroid/content/res/Resources;
    :cond_13
    :try_start_1
    const-string v10, "Launcher"

    const-string v11, "database error"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 373
    .end local v0           #IsProvisioned:Z
    :catch_0
    move-exception v2

    .line 374
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "Launcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error Setting device_provisioned: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 378
    .end local v2           #e:Ljava/lang/Exception;
    :cond_14
    const-string v10, "Launcher"

    const-string v11, "FactoryMode"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 416
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 454
    .restart local v6       #prefs:Landroid/content/SharedPreferences;
    .restart local v8       #transaction:Landroid/app/FragmentTransaction;
    .restart local v9       #wasHomeHidden:Z
    :cond_16
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 455
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    .line 456
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3

    .line 460
    .end local v9           #wasHomeHidden:Z
    :cond_17
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 461
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    goto/16 :goto_3

    .line 502
    .restart local v3       #filter:Landroid/content/IntentFilter;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_18
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    .line 503
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 504
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    goto/16 :goto_4

    .line 510
    :cond_19
    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1219
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1220
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-eqz v1, :cond_0

    .line 1222
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1223
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1225
    .end local v0           #menuInflater:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 906
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    .line 907
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    .line 910
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->onDestroy()V

    .line 915
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    .line 916
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy, Launcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 918
    invoke-static {}, Lcom/android/launcher2/Utilities;->onDestroy()V

    .line 920
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z

    if-nez v2, :cond_1

    .line 921
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2, v6}, Lcom/android/launcher2/LauncherModel;->initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V

    .line 922
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 924
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v2, :cond_2

    .line 926
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 927
    .local v1, tempPopupStatus:Z
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    .line 928
    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    .line 929
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 932
    .end local v1           #tempPopupStatus:Z
    :cond_2
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v2}, Lcom/sec/dtl/launcher/Talk;->shutdown()V

    .line 935
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

    invoke-virtual {v2}, Lcom/android/launcher2/BadgeCountReceiver;->unregister()V

    .line 938
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    if-eqz v2, :cond_3

    .line 939
    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    .line 940
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 941
    .local v0, home:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 945
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    const/high16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 947
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 949
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 951
    .end local v0           #home:Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ShadowGen;->onDestroy()V

    .line 952
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1787
    const-string v0, "Launcher"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDetachedFromWindow()V

    .line 1789
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 1791
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1793
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1795
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    .line 1796
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1321
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v7

    .line 1322
    .local v7, uniChar:I
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 1323
    .local v3, handled:Z
    if-lez v7, :cond_2

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v5, 0x1

    .line 1324
    .local v5, isKeyNotWhitespace:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1326
    .local v0, config:Landroid/content/res/Configuration;
    iget v9, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    .line 1327
    const/4 v9, 0x7

    if-lt p1, v9, :cond_5

    const/16 v9, 0x12

    if-gt p1, v9, :cond_5

    .line 1328
    const/4 v6, 0x0

    .line 1329
    .local v6, myIntentDial:Landroid/content/Intent;
    const/4 v9, 0x7

    if-lt p1, v9, :cond_3

    const/16 v9, 0x10

    if-gt p1, v9, :cond_3

    .line 1330
    new-instance v6, Landroid/content/Intent;

    .end local v6           #myIntentDial:Landroid/content/Intent;
    const-string v9, "android.intent.action.DIAL"

    const-string v10, "tel:"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1341
    .restart local v6       #myIntentDial:Landroid/content/Intent;
    :goto_1
    const-string v9, "CHN"

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1342
    const-string v9, "isKeyTone"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1343
    const-string v9, "firstKeycode"

    invoke-virtual {v6, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1346
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1347
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    .line 1388
    .end local v3           #handled:Z
    .end local v6           #myIntentDial:Landroid/content/Intent;
    :cond_1
    :goto_2
    return v3

    .line 1323
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v5           #isKeyNotWhitespace:Z
    .restart local v3       #handled:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1332
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v5       #isKeyNotWhitespace:Z
    .restart local v6       #myIntentDial:Landroid/content/Intent;
    :cond_3
    const/16 v9, 0x12

    if-ne p1, v9, :cond_4

    .line 1333
    new-instance v6, Landroid/content/Intent;

    .end local v6           #myIntentDial:Landroid/content/Intent;
    const-string v9, "android.intent.action.DIAL"

    const-string v10, "tel:"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1335
    .restart local v6       #myIntentDial:Landroid/content/Intent;
    const-string v9, "isPoundKey"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 1337
    :cond_4
    new-instance v6, Landroid/content/Intent;

    .end local v6           #myIntentDial:Landroid/content/Intent;
    const-string v9, "android.intent.action.DIAL"

    const-string v10, "tel:"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v6       #myIntentDial:Landroid/content/Intent;
    goto :goto_1

    .line 1350
    .end local v6           #myIntentDial:Landroid/content/Intent;
    :cond_5
    const/16 v9, 0x1b

    if-ne p1, v9, :cond_7

    .line 1351
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1352
    .local v4, intent:Landroid/content/Intent;
    const/high16 v9, 0x400

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1353
    const/high16 v9, 0x1000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1354
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1369
    .end local v4           #intent:Landroid/content/Intent;
    :cond_6
    :goto_3
    if-nez v3, :cond_8

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v9

    if-eqz v9, :cond_8

    if-eqz v5, :cond_8

    .line 1370
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, v10, v11, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 1372
    .local v2, gotKey:Z
    if-eqz v2, :cond_8

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_8

    .line 1379
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v3

    goto :goto_2

    .line 1355
    .end local v2           #gotKey:Z
    :cond_7
    const/16 v9, 0x43

    if-ne p1, v9, :cond_6

    .line 1356
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    .line 1357
    .local v8, workspace:Lcom/android/launcher2/Workspace;
    if-eqz v8, :cond_6

    sget-boolean v9, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v9, :cond_6

    .line 1358
    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 1359
    .local v1, folder:Lcom/android/launcher2/Folder;
    if-nez v1, :cond_6

    .line 1361
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1362
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    goto :goto_3

    .line 1384
    .end local v1           #folder:Lcom/android/launcher2/Folder;
    .end local v8           #workspace:Lcom/android/launcher2/Workspace;
    :cond_8
    const/16 v9, 0x52

    if-ne p1, v9, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1385
    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2506
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/high16 v13, 0x40

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1843
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 1844
    sput-object p1, Lcom/android/launcher2/Launcher;->sInComingIntentHelpHub:Landroid/content/Intent;

    .line 1849
    const-string v9, "android.intent.action.MAIN"

    invoke-direct {p0, p1, v9}, Lcom/android/launcher2/Launcher;->tryQueueWidgetAddViaIntent(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v7

    .line 1850
    .local v7, widgetAdded:Z
    iget-boolean v9, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-nez v9, :cond_0

    .line 1855
    sput-object p1, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    .line 1952
    :goto_0
    return-void

    .line 1858
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 1860
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->setIntent(Landroid/content/Intent;)V

    .line 1861
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1862
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1863
    const/4 v4, 0x0

    .line 1865
    .local v4, notiID:I
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_6

    const-string v9, "homescreen:guide_mode"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1866
    sget-boolean v9, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v9, :cond_1

    .line 1867
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    .line 1870
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getRequestedOrientation()I

    move-result v9

    iput v9, p0, Lcom/android/launcher2/Launcher;->mPrevOrientationHelp:I

    .line 1877
    const-string v9, "help_activity_type"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1878
    .local v2, helpActivityName:Ljava/lang/String;
    const-string v9, "ExternalHelpActivity"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1879
    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mIsExternalHelpActivity:Z

    .line 1880
    :cond_2
    invoke-static {p0, p1}, Lcom/android/launcher2/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1881
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher2/CreateFolderDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1883
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher2/CreateFolderDialog;->dismiss(Landroid/app/FragmentManager;)V

    .line 1885
    :cond_3
    sput-boolean v10, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    .line 1887
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9, v10}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    .line 1942
    .end local v2           #helpActivityName:Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 1944
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-boolean v9, v9, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    if-eqz v9, :cond_13

    .line 1945
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/HomeView;->closeSystemDialogs(Ljava/lang/Boolean;)V

    .line 1948
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher2/CreateFolderDialog;->dismiss(Landroid/app/FragmentManager;)V

    .line 1951
    .end local v4           #notiID:I
    :cond_5
    iput-boolean v11, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    goto :goto_0

    .line 1889
    .restart local v4       #notiID:I
    :cond_6
    sget-boolean v9, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v12, "start_from_customhome"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1890
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v12, "show_menu"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1891
    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->isStartFromCustomHome:Z

    .line 1892
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    goto :goto_1

    .line 1894
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v12, "page"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1895
    .local v5, page:I
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    .line 1897
    .local v8, workspace:Lcom/android/launcher2/Workspace;
    if-eqz v8, :cond_4

    .line 1898
    if-nez v5, :cond_8

    .line 1899
    invoke-virtual {v8, v11}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_1

    .line 1900
    :cond_8
    if-ne v5, v10, :cond_4

    .line 1901
    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_1

    .line 1905
    .end local v5           #page:I
    .end local v8           #workspace:Lcom/android/launcher2/Workspace;
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v9

    and-int/2addr v9, v13

    if-eq v9, v13, :cond_f

    .line 1907
    const-string v9, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_a

    .line 1908
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1909
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-nez v7, :cond_b

    move v9, v10

    :goto_3
    invoke-virtual {v12, v9}, Lcom/android/launcher2/MenuView;->onHomePressed(Z)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1910
    const-string v9, "streetlife"

    const-string v12, "onNewIntent exitAllApps"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    .line 1921
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v6

    .line 1922
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1923
    const-string v9, "input_method"

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1925
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v3, v9, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_1

    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v6           #v:Landroid/view/View;
    :cond_b
    move v9, v11

    .line 1909
    goto :goto_3

    .line 1914
    :cond_c
    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-nez v9, :cond_d

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v9

    sget-object v12, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v9, v12, :cond_a

    .line 1915
    :cond_d
    if-nez v4, :cond_a

    .line 1916
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-nez v7, :cond_e

    move v9, v10

    :goto_5
    invoke-virtual {v12, v9}, Lcom/android/launcher2/HomeView;->onHomePressed(Z)Z

    goto :goto_4

    :cond_e
    move v9, v11

    goto :goto_5

    .line 1928
    :cond_f
    const-string v9, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1929
    const-string v9, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1930
    .local v1, extra:Ljava/lang/String;
    const-string v9, "com.android.launcher2.IDLE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1931
    invoke-virtual {p0, v11, v10}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    goto/16 :goto_1

    .line 1933
    :cond_10
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishExitAllApps()V

    goto/16 :goto_1

    .line 1936
    .end local v1           #extra:Ljava/lang/String;
    :cond_11
    sget-boolean v9, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v9, :cond_12

    .line 1937
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    .line 1939
    :cond_12
    invoke-virtual {p0, v11, v10}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    goto/16 :goto_1

    .line 1947
    :cond_13
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/HomeView;->closeSystemDialogs(Ljava/lang/Boolean;)V

    goto/16 :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 19
    .parameter "item"

    .prologue
    .line 2073
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 2074
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->invalidateOptionsMenu()V

    .line 2076
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2231
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 2078
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->onClickAppMarketButton()V

    .line 2079
    const/4 v3, 0x1

    goto :goto_0

    .line 2081
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2082
    const/4 v3, 0x1

    goto :goto_0

    .line 2084
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->onOptionSelectedSearch()V

    .line 2085
    const/4 v3, 0x1

    goto :goto_0

    .line 2087
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->onOptionSelectedUninstall()V

    .line 2088
    const/4 v3, 0x1

    goto :goto_0

    .line 2090
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->onOptionSelectedDownload()V

    .line 2091
    const/4 v3, 0x1

    goto :goto_0

    .line 2093
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->chooseViewType()V

    .line 2094
    const/4 v3, 0x1

    goto :goto_0

    .line 2096
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2097
    const/4 v3, 0x1

    goto :goto_0

    .line 2099
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_HIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2100
    const/4 v3, 0x1

    goto :goto_0

    .line 2102
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_UNHIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2103
    const/4 v3, 0x1

    goto :goto_0

    .line 2105
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_ENABLE:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2106
    const/4 v3, 0x1

    goto :goto_0

    .line 2108
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->MOVE_TO_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2109
    const/4 v3, 0x1

    goto :goto_0

    .line 2111
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FROM_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2112
    const/4 v3, 0x1

    goto :goto_0

    .line 2116
    :pswitch_c
    const-string v3, "search"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 2117
    .local v2, searchManager:Landroid/app/SearchManager;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 2118
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2121
    .end local v2           #searchManager:Landroid/app/SearchManager;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    .line 2122
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2125
    :pswitch_e
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_0

    .line 2126
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 2127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeView;->showWorkspaceEditmode(Z)V

    .line 2131
    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2129
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    goto :goto_1

    .line 2133
    :pswitch_f
    new-instance v15, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2134
    .local v15, i:Landroid/content/Intent;
    const/high16 v3, 0x1020

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2135
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2136
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2137
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2140
    .end local v15           #i:Landroid/content/Intent;
    :pswitch_10
    :try_start_0
    const-string v3, "com.samsung.helpplugin"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/launcher2/Launcher;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2142
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/android/launcher2/Launcher;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    .line 2143
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2145
    :cond_1
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2146
    .local v16, intent:Landroid/content/Intent;
    const/high16 v3, 0x1020

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2147
    const-string v3, "helphub:section"

    const-string v4, "homescreen"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2148
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2156
    .end local v16           #intent:Landroid/content/Intent;
    :cond_2
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2150
    :catch_0
    move-exception v14

    .line 2151
    .local v14, e:Landroid/content/ActivityNotFoundException;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_2

    .line 2152
    const-string v3, "Launcher"

    const-string v4, "Unable to launch  intent= com.samsung.helphub.HELP"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2158
    .end local v14           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v18

    .line 2159
    .local v18, workspace:Lcom/android/launcher2/Workspace;
    if-eqz v18, :cond_3

    .line 2160
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 2162
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v7, -0x66

    .line 2165
    .local v7, container:J
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static/range {v3 .. v12}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    .line 2167
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2162
    .end local v7           #container:J
    :cond_4
    const-wide/16 v7, -0x64

    goto :goto_3

    .line 2197
    .end local v18           #workspace:Lcom/android/launcher2/Workspace;
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 2198
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->shouldToastRepeat()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2199
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->createAndShow(Landroid/app/FragmentManager;)V

    .line 2202
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2201
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e001f

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 2204
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/HomeScreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    .line 2205
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2208
    :pswitch_14
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 2209
    .restart local v16       #intent:Landroid/content/Intent;
    const-string v3, "com.samsung.android.app.galaxyfinder"

    const-string v4, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2210
    new-instance v13, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.launcher"

    const-string v4, "com.android.launcher2.Launcher"

    invoke-direct {v13, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    .local v13, component:Landroid/content/ComponentName;
    const-string v3, "componentname"

    invoke-virtual {v13}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2212
    const-string v3, "callername"

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2213
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 2214
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2217
    .end local v13           #component:Landroid/content/ComponentName;
    .end local v16           #intent:Landroid/content/Intent;
    :pswitch_15
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->startCustomHome(Z)V

    .line 2218
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2222
    :pswitch_16
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v3, :cond_6

    .line 2223
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 2224
    .local v17, intentTheme:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.themechooser"

    const-string v4, "com.sec.android.app.themechooser.ThemeListActivity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2225
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2227
    .end local v17           #intentTheme:Landroid/content/Intent;
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2076
    :pswitch_data_0
    .packed-switch 0x7f0700c2
        :pswitch_0
        :pswitch_1
        :pswitch_12
        :pswitch_11
        :pswitch_13
        :pswitch_16
        :pswitch_e
        :pswitch_15
        :pswitch_14
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1309
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1310
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->invalidateOptionsMenu()V

    .line 1311
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 1312
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 587
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause, Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->onPause()V

    .line 589
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 590
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 592
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 595
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 596
    .local v0, pauseIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.HOME_PAUSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 598
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->pauseSensor()V

    .line 599
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1230
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1232
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return v3

    .line 1235
    :cond_1
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v5, :cond_0

    .line 1241
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_2

    .line 1242
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1246
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1248
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    .line 1249
    .local v4, workspace:Lcom/android/launcher2/Workspace;
    if-eqz v4, :cond_3

    .line 1250
    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1251
    .local v0, folder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_3

    .line 1252
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1255
    invoke-virtual {v0, v3, v3}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 1290
    .end local v0           #folder:Lcom/android/launcher2/Folder;
    .end local v4           #workspace:Lcom/android/launcher2/Workspace;
    :cond_3
    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eq v5, v7, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    if-eq v5, v7, :cond_0

    .line 1293
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setMarketLabel()V

    .line 1300
    const/4 v3, 0x1

    .line 1301
    .local v3, res:Z
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-eqz v5, :cond_4

    .line 1302
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    .line 1303
    :cond_4
    sput-boolean v3, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    goto :goto_0

    .line 1261
    .end local v3           #res:Z
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1262
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    .line 1263
    .local v2, menuWidgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v2, :cond_3

    .line 1264
    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v5, v6, :cond_3

    goto :goto_0

    .line 1269
    .end local v2           #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_0

    .line 1274
    :cond_7
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_3

    .line 1275
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    .line 1276
    .local v1, menuGrid:Lcom/android/launcher2/MenuAppsGrid;
    if-eqz v1, :cond_3

    .line 1277
    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1278
    .restart local v0       #folder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_3

    .line 1279
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1282
    invoke-virtual {v0, v3, v3}, Lcom/android/launcher2/Folder;->close(ZZ)V

    goto :goto_1
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 574
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestart, Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    .line 576
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "change_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isExitingFromWallpaperActivity:Z

    if-eqz v0, :cond_0

    .line 577
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->isExitingFromWallpaperActivity:Z

    .line 578
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    .line 582
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onRestart()V

    .line 583
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 604
    const-string v4, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume, Launcher: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 606
    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 611
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->onResume()V

    .line 612
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    .line 614
    invoke-static {p0}, Lcom/android/launcher2/Utilities;->broadcastStkIntent(Landroid/content/Context;)V

    .line 615
    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v4, :cond_1

    .line 616
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    invoke-virtual {v4, v6}, Lcom/android/launcher2/LauncherModel;->startLoader(Z)V

    .line 617
    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 618
    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v4, :cond_1

    .line 619
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v4}, Lcom/android/launcher2/SamsungWidgetPackageManager;->loadIfNeeded()V

    .line 620
    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 625
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 626
    .local v1, homeMode:Landroid/content/Intent;
    const-string v4, "com.android.launcher.action.HOME_MODE_CHANGE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v4, "currentMode"

    const-string v6, "twlauncher"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 631
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 633
    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v4, :cond_6

    const-string v4, "com.android.launcher2.ALL_APPS_FROM_MAGAZINE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    .line 634
    const-string v4, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    if-eqz v4, :cond_3

    .line 635
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v4, :cond_7

    .line 636
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    .line 637
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 642
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 646
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 647
    .local v3, resumeIntent:Landroid/content/Intent;
    const-string v4, "com.sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 650
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iput-boolean v5, v4, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    .line 651
    sput-boolean v5, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 653
    sget-object v4, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v4, p0}, Lcom/sec/dtl/launcher/Talk;->onResume(Landroid/content/Context;)V

    .line 655
    sget-boolean v4, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v4, :cond_5

    .line 656
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 657
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 658
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resumed Orientation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resumed small width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resumed density : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->addAnyPendingWidgetsToWorkspace()V

    .line 663
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->resumeSensor()V

    .line 664
    return-void

    .end local v3           #resumeIntent:Landroid/content/Intent;
    :cond_6
    move v4, v5

    .line 633
    goto/16 :goto_0

    .line 638
    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 639
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    goto/16 :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 3029
    const-string v1, "extra_home_view_hidden"

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3030
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3031
    return-void

    .line 3029
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1634
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1636
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    .line 1637
    return v2
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 567
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart, Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 569
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->onStart()V

    .line 570
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 862
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop, Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_1

    .line 865
    sget-boolean v1, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    if-nez v1, :cond_0

    const-string v1, "resize_widgets"

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    if-eqz v1, :cond_1

    .line 867
    :cond_0
    invoke-static {}, Lcom/android/launcher2/guide/GuideFragment;->removeWrongActionDialog()V

    .line 868
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    .line 872
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->onStop()V

    .line 873
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 875
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 876
    .local v0, priority:I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    if-eqz v1, :cond_2

    .line 877
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 879
    :cond_2
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 3067
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory. Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    sparse-switch p1, :sswitch_data_0

    .line 3093
    :goto_0
    :sswitch_0
    return-void

    .line 3072
    :sswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->releaseShadows()V

    goto :goto_0

    .line 3079
    :sswitch_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->releaseShadows()V

    goto :goto_0

    .line 3068
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x3c -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public removeStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 967
    return-void
.end method

.method public restorePopupMenu()Z
    .locals 4

    .prologue
    .line 843
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-eqz v2, :cond_2

    .line 844
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-nez v2, :cond_0

    .line 845
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_1

    .line 846
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v3, 0x7f07008a

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 847
    .local v0, downloadPopupButton:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    .line 854
    .end local v0           #downloadPopupButton:Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    .line 855
    const/4 v2, 0x1

    .line 857
    :goto_1
    return v2

    .line 849
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v3, 0x7f0700a0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 851
    .local v1, popupButton:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    goto :goto_0

    .line 857
    .end local v1           #popupButton:Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public saveToastPopup(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "mIsRepeat"

    .prologue
    .line 3162
    const-string v2, "com.android.launcher2.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3164
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3165
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "add.toast.popup.dismissed.key"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3167
    return-void
.end method

.method public setEnableMenuButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2271
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2273
    :cond_0
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2779
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2780
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 2785
    :goto_0
    return v0

    .line 2783
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    if-eqz v0, :cond_1

    .line 2784
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->loadIfNeeded()V

    .line 2785
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowEmptyPageMessagePref(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 3062
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    .line 3063
    return-void
.end method

.method public setTransitionToAllApps(Z)V
    .locals 0
    .parameter "stat"

    .prologue
    .line 988
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    .line 989
    return-void
.end method

.method public shouldToastRepeat()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3170
    const-string v2, "com.android.launcher2.prefs"

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3172
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "add.toast.popup.dismissed.key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public showAllApps()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1010
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->updateRunning()V

    .line 1014
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 1015
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->onPreShowAllApps()V

    .line 1016
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    .line 1017
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 1022
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->onShowAllApps()V

    .line 1023
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v8, :cond_2

    .line 1024
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->cancel()V

    .line 1026
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    .local v0, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    .line 1028
    .local v6, provider:Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    invoke-interface {v6, v0}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectShowAllAppsAnimators(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1030
    .end local v6           #provider:Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v8, v9, :cond_4

    .line 1031
    const v8, 0x7f050006

    invoke-static {p0, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 1032
    .local v1, darkenAnimator:Landroid/animation/Animator;
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1033
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    .end local v1           #darkenAnimator:Landroid/animation/Animator;
    :cond_4
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    .line 1037
    sget-wide v2, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    .line 1038
    .local v2, duration:J
    iget-boolean v8, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    if-eqz v8, :cond_5

    .line 1039
    const-wide/16 v2, 0x0

    .line 1040
    :cond_5
    sget-boolean v8, Lcom/android/launcher2/Launcher;->UseUserCustomHomeFeature:Z

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/android/launcher2/Launcher;->isStartFromCustomHome:Z

    if-eqz v8, :cond_6

    .line 1041
    iput-boolean v11, p0, Lcom/android/launcher2/Launcher;->isStartFromCustomHome:Z

    .line 1042
    const-wide/16 v2, 0x0

    .line 1044
    :cond_6
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1045
    .local v7, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1046
    invoke-virtual {v7, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1047
    new-instance v8, Lcom/android/launcher2/Launcher$2;

    invoke-direct {v8, p0}, Lcom/android/launcher2/Launcher$2;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1063
    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    .line 1064
    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 1065
    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    .line 1066
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 1069
    sget-boolean v8, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v8, :cond_0

    .line 1070
    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "view_all_apps"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1072
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 1073
    .local v5, mHandler:Landroid/os/Handler;
    new-instance v8, Lcom/android/launcher2/Launcher$3;

    invoke-direct {v8, p0}, Lcom/android/launcher2/Launcher$3;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v9, 0x3e8

    invoke-virtual {v5, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"
    .parameter "callback"

    .prologue
    .line 3231
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mActivityCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3232
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3233
    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 2570
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 9
    .parameter "intent"
    .parameter "tag"

    .prologue
    const v8, 0x7f0e0002

    const/4 v5, 0x0

    .line 2534
    const/high16 v6, 0x1000

    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2536
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2538
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v6, 0xc

    invoke-direct {v0, p0, v6}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    .line 2539
    .local v0, dvfsHelper:Landroid/os/DVFSHelper;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/DVFSHelper;->onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2541
    .end local v0           #dvfsHelper:Landroid/os/DVFSHelper;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2542
    const/4 v5, 0x1

    .line 2566
    :cond_1
    :goto_0
    return v5

    .line 2543
    :catch_0
    move-exception v1

    .line 2545
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 2547
    .local v3, restore_cn:Landroid/content/ComponentName;
    if-eqz v3, :cond_2

    .line 2548
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2549
    .local v4, restore_intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2550
    .local v2, packageName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "market://details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2551
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2557
    .end local v2           #packageName:Ljava/lang/String;
    .end local v4           #restore_intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-static {p0, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2558
    sget-boolean v6, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v6, :cond_1

    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to launch. tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2559
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #restore_cn:Landroid/content/ComponentName;
    :catch_1
    move-exception v1

    .line 2560
    .local v1, e:Ljava/lang/SecurityException;
    invoke-static {p0, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2561
    sget-boolean v6, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v6, :cond_1

    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launcher does not have the permission to launch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "or use the exported attribute for this activity. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2553
    .local v1, e:Landroid/content/ActivityNotFoundException;
    .restart local v3       #restore_cn:Landroid/content/ComponentName;
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public startActivityWithTransition(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 3241
    const-string v0, "from_right"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3242
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;)Z

    .line 3243
    const v0, 0x7f040004

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    .line 3244
    return-void
.end method

.method public startCustomHome(Z)V
    .locals 3
    .parameter "fromLastPage"

    .prologue
    .line 3308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3309
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.samsung.android.customhome"

    const-string v2, "com.samsung.android.customhome.home.CustomHomeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3310
    if-eqz p1, :cond_0

    .line 3311
    const-string v1, "page"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3316
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;)Z

    .line 3318
    if-eqz p1, :cond_1

    .line 3319
    const v1, 0x7f040001

    const v2, 0x7f040002

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    .line 3323
    :goto_1
    return-void

    .line 3313
    :cond_0
    const-string v1, "page"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 3321
    :cond_1
    const/high16 v1, 0x7f04

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    goto :goto_1
.end method

.method public startMagazineApp(Z)V
    .locals 5
    .parameter "is3DAni"

    .prologue
    .line 3255
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.launcher.action.ENTER_MAGAZINE_APP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3256
    .local v2, intentBr:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 3258
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3259
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3260
    const-string v3, "sstream.app"

    const-string v4, "sstream.app.activities.StreamActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3261
    const/high16 v3, 0x1020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3262
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 3264
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3265
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->overridePendingTransition(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3270
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intentBr:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 3267
    :catch_0
    move-exception v0

    .line 3268
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "Launcher"

    const-string v4, "S Stream Activity not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1649
    if-nez p1, :cond_0

    .line 1651
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 1653
    :cond_0
    if-nez p3, :cond_1

    .line 1654
    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1655
    .restart local p3
    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    :cond_1
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1660
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1662
    return-void
.end method
