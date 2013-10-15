.class public final Lcom/android/launcher2/MenuAppsGrid;
.super Lcom/android/launcher2/SmoothPagedView;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/MenuView$AppModelNotifications;
.implements Lcom/android/launcher2/Folder$FolderNameChangeListener;
.implements Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;,
        Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;,
        Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;,
        Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;,
        Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;,
        Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;,
        Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;,
        Lcom/android/launcher2/MenuAppsGrid$StateUninstall;,
        Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;,
        Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;,
        Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;,
        Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;,
        Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;,
        Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;,
        Lcom/android/launcher2/MenuAppsGrid$StateEdit;,
        Lcom/android/launcher2/MenuAppsGrid$StateNormal;,
        Lcom/android/launcher2/MenuAppsGrid$StateObj;,
        Lcom/android/launcher2/MenuAppsGrid$State;,
        Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;
    }
.end annotation


# static fields
.field static final ADD_MOVETOSECRET_POPUP_DISMISSED_KEY:Ljava/lang/String; = "add.movetosecret.popup.dismissed.key"

#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final DL_APPS_SAVED_INDEX_KEY:Ljava/lang/String; = "DLAppsSavedIndexKey"

.field private static final OPEN_FOLDER_ID:Ljava/lang/String; = "openFolderId"

.field private static final PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder; = null

.field private static final PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder; = null

.field private static final PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder; = null

.field private static final PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder; = null

.field private static final PENDING_FOLDER_EDIT_TEXT:Ljava/lang/String; = "pendingFolderEditText"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_END:Ljava/lang/String; = "pending_folder_edit_text_selection_end"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_START:Ljava/lang/String; = "pending_folder_edit_text_selection_start"

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "SuperStateKey"

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuAppsGrid"

.field private static final TRANSITION_MAX_ROTATION:F = 16.0f

.field private static final TRANSITION_PIVOT:F = 0.5f

.field private static mAlphabeticalMenuSecretPageCnt:I

.field public static mChangeMenuModeForSecretBox:Z

.field private static mCreateFoldertoAddButton:Z

.field private static mEmptyFoldertoAddButton:Z

.field public static mExitingSelectableState:Z

.field private static mFolderTitletoAddButton:Ljava/lang/String;

.field public static mSnapping:Z

.field private static mStartEditNormalPage:Z

.field private static mStartNormalPage:Z

.field static final sPanelDrawer:Lcom/android/launcher2/PanelDrawer;


# instance fields
.field private mAppPackageNameGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentOrientation:I

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDragInProgress:Z

.field private mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

.field private final mEditModeShrinkFactor:F

.field private mEnterEditModeAnimator:Landroid/animation/Animator;

.field private mExitEditModeAnimator:Landroid/animation/Animator;

.field private mFading:Z

.field private mFolder:Lcom/android/launcher2/Folder;

.field private mFolderLocation:[I

.field private mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

.field private mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

.field private mPendingAppModelUpdated:Z

.field private mPendingFolderBundle:Landroid/os/Bundle;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrevFolderOnCreateFolder:Lcom/android/launcher2/Folder;

.field private mRecycledViews:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedOrientation:I

.field private mSecretMasking:Landroid/graphics/drawable/Drawable;

.field private mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

.field private mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

.field private mStateMoveToSecretBox:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

.field private mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateRemoveFromSecretBox:Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;

.field private mStateSelAppsToEnable:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;

.field private mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

.field private mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

.field private mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

.field private mViewType:Lcom/android/launcher2/MenuView$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z

    .line 101
    new-instance v0, Lcom/android/launcher2/PanelDrawer;

    invoke-direct {v0}, Lcom/android/launcher2/PanelDrawer;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    .line 124
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mSnapping:Z

    .line 125
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mExitingSelectableState:Z

    .line 129
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mChangeMenuModeForSecretBox:Z

    .line 130
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mStartNormalPage:Z

    .line 131
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mStartEditNormalPage:Z

    .line 132
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->mFolderTitletoAddButton:Ljava/lang/String;

    .line 134
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z

    .line 135
    sput v3, Lcom/android/launcher2/MenuAppsGrid;->mAlphabeticalMenuSecretPageCnt:I

    .line 1165
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v1, v4, [F

    aput v5, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

    .line 1166
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v1, v4, [F

    const v2, 0x3f666666

    aput v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder;

    .line 1167
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    aput v5, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

    .line 1168
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    const/4 v2, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

    .line 1169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuAppsGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    .line 114
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    .line 118
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    .line 224
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolderLocation:[I

    .line 404
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$2;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$2;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    .line 547
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    .line 813
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$3;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$3;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 1249
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateNormal;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 1251
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateEdit;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateEdit;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 1253
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 1255
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 1257
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 1259
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    .line 1261
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    .line 1263
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    .line 1265
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToEnable:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;

    .line 1267
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateMoveToSecretBox:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    .line 1269
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateRemoveFromSecretBox:Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;

    .line 1271
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 1272
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    .line 3076
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    .line 3357
    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mPrevFolderOnCreateFolder:Lcom/android/launcher2/Folder;

    .line 148
    const-string v2, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    .line 149
    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;

    .line 151
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 153
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->MenuAppsGrid:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 157
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setSaveEnabled(Z)V

    .line 160
    const v2, 0x7f05000f

    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mEnterEditModeAnimator:Landroid/animation/Animator;

    .line 161
    const v2, 0x7f050010

    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mExitEditModeAnimator:Landroid/animation/Animator;

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 165
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditModeShrinkFactor:F

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateMoveToSecretBox:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateRemoveFromSecretBox:Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToEnable:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    return-object v0
.end method

.method static synthetic access$3100()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z

    return v0
.end method

.method static synthetic access$3102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput-boolean p0, Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mEnterEditModeAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mExitEditModeAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$3800()Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method static synthetic access$3900()Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    return v0
.end method

.method static synthetic access$4402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput-boolean p0, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    return p0
.end method

.method static synthetic access$4500(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/ItemViewBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getRealatedApps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuStateAnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Lcom/android/launcher2/FolderItem;Ljava/util/List;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/MenuAppsGrid;->animateSelectedToFolder(Ljava/util/List;Lcom/android/launcher2/FolderItem;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/launcher2/MenuAppsGrid;ZLjava/lang/Iterable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/launcher2/MenuAppsGrid;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/launcher2/MenuAppsGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->isConfirmDialogOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method private addAppItem(Lcom/android/launcher2/AppItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 758
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageForItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v0

    .line 760
    .local v0, page:Lcom/android/launcher2/CellLayoutMenu;
    if-nez v0, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-boolean v1, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v1, :cond_2

    .line 763
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setPageType(I)V

    .line 765
    :cond_2
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 766
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutMenu;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0
.end method

.method private animatePageZoomOut(Ljava/util/List;Z)V
    .locals 3
    .parameter
    .parameter "immediately"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3066
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p2, :cond_0

    .line 3067
    const v0, 0x3f666666

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->setPageZoom(F)V

    .line 3068
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->setPageBackgroundAlpha(F)V

    .line 3074
    :goto_0
    return-void

    .line 3070
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private animateSelectedToFolder(Ljava/util/List;Lcom/android/launcher2/FolderItem;Ljava/util/List;I)V
    .locals 14
    .parameter
    .parameter "folderItem"
    .parameter
    .parameter "pageIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher2/FolderItem;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-interface/range {p2 .. p2}, Lcom/android/launcher2/FolderItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, -0x8000

    move/from16 v0, p4

    if-eq v2, v0, :cond_2

    .line 195
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout;

    .line 196
    .local v13, page:Lcom/android/launcher2/CellLayout;
    if-eqz v13, :cond_2

    .line 197
    invoke-virtual {v13}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    check-cast p2, Lcom/android/launcher2/BaseItem;

    .end local p2
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppIconView;

    .line 198
    .local v4, folderView:Lcom/android/launcher2/AppIconView;
    if-eqz v4, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    .line 200
    .local v1, l:Lcom/android/launcher2/AnimationLayer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 202
    .local v11, child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v11

    .line 204
    check-cast v2, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 206
    .local v5, b:Landroid/graphics/Bitmap;
    invoke-virtual {v1, v11, v5}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v6

    .line 208
    .local v6, from:[I
    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe6

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher2/AnimationLayer;->animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    .line 210
    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 212
    .end local v5           #b:Landroid/graphics/Bitmap;
    .end local v6           #from:[I
    .end local v11           #child:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppIconView;->setVisibility(I)V

    .line 216
    .end local v1           #l:Lcom/android/launcher2/AnimationLayer;
    .end local v4           #folderView:Lcom/android/launcher2/AppIconView;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #page:Lcom/android/launcher2/CellLayout;
    :cond_2
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$1;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    const-wide/16 v7, 0x1f4

    invoke-virtual {p0, v2, v7, v8}, Lcom/android/launcher2/MenuAppsGrid;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    return-void
.end method

.method private changeOrientationIfRequired(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    .line 3671
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuView;->getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v4

    .line 3672
    .local v4, qv:Lcom/android/launcher2/QuickViewMainMenu;
    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    iget v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->isShown()Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v4, :cond_1

    .line 3706
    :cond_0
    :goto_0
    return-void

    .line 3672
    :cond_1
    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3677
    :cond_2
    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    iput v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    .line 3678
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3682
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->handleScrollOnOrientationChange()V

    .line 3683
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3687
    .local v5, r:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->clear()V

    .line 3689
    const v6, 0x7f0c0088

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3690
    .local v2, marginTop:I
    const v6, 0x7f0c0089

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3691
    .local v1, cellWidth:I
    const v6, 0x7f0c008a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3693
    .local v0, cellHeight:I
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 3694
    .local v3, oldCountX:I
    const v6, 0x7f0a0023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 3695
    const v6, 0x7f0a0024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 3696
    const v6, 0x7f0c008b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    .line 3697
    const v6, 0x7f0c008c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    .line 3698
    const v6, 0x7f0c0050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    .line 3700
    const v6, 0x7f0c008e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0c008d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/MenuAppsGrid;->updateIndicator(II)V

    .line 3702
    invoke-direct {p0, v2, v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->updateGridSize(III)V

    .line 3703
    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->updatePageLayout(I)V

    .line 3705
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->requestLayout()V

    goto :goto_0
.end method

.method private createPage()Lcom/android/launcher2/CellLayoutMenu;
    .locals 5

    .prologue
    .line 802
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03003b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    .line 804
    .local v0, cell:Lcom/android/launcher2/CellLayoutMenu;
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/CellLayoutMenu;->setGridSize(II)V

    .line 805
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->addView(Landroid/view/View;)V

    .line 806
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayoutMenu;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 808
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v2}, Lcom/android/launcher2/PanelDrawer;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 809
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 810
    return-object v0
.end method

.method private getConstructedViews()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v6, views:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppIconView;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v1

    .line 737
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 738
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 739
    .local v5, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    .line 740
    .local v4, l:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 741
    invoke-virtual {v4, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 742
    .local v0, child:Landroid/view/View;
    instance-of v7, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_0

    .line 743
    check-cast v0, Lcom/android/launcher2/AppIconView;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 737
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 747
    .end local v2           #i:I
    .end local v4           #l:Lcom/android/launcher2/CellLayoutChildren;
    .end local v5           #layout:Lcom/android/launcher2/CellLayout;
    :cond_2
    return-object v6
.end method

.method private getOrCreatePageForItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/CellLayoutMenu;
    .locals 5
    .parameter "item"

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v2

    .line 771
    .local v2, pageCount:I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 772
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 773
    .local v3, targetPage:I
    move v0, v2

    .local v0, i:I
    :goto_0
    if-gt v0, v3, :cond_0

    .line 774
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    .line 773
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayoutMenu;

    .line 786
    .end local v0           #i:I
    .end local v3           #targetPage:I
    :goto_1
    return-object v4

    .line 779
    :cond_1
    sget-boolean v4, Lcom/android/launcher2/MenuAppsGrid;->mStartNormalPage:Z

    if-eqz v4, :cond_2

    .line 780
    sput v2, Lcom/android/launcher2/MenuAppsGrid;->mAlphabeticalMenuSecretPageCnt:I

    .line 781
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/MenuAppsGrid;->mStartNormalPage:Z

    .line 782
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v4

    goto :goto_1

    .line 785
    :cond_2
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutMenu;

    .line 786
    .local v1, lastPage:Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCell()Z

    move-result v4

    if-eqz v4, :cond_3

    .end local v1           #lastPage:Lcom/android/launcher2/CellLayoutMenu;
    :goto_2
    move-object v4, v1

    goto :goto_1

    .restart local v1       #lastPage:Lcom/android/launcher2/CellLayoutMenu;
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v1

    goto :goto_2
.end method

.method private getRealatedApps(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3933
    .local p1, selectedApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3936
    .local v5, needtoModifyAppItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    sget-object v8, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppModel;->getAppItems()Ljava/util/Map;

    move-result-object v4

    .line 3938
    .local v4, mAppItems:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 3939
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->parseAppPackageGroup()V

    .line 3941
    const/4 v6, 0x0

    .local v6, position:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 3942
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppItem;

    invoke-virtual {v8}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3943
    .local v0, groupPkgName:Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3944
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mAppPackageNameGroup:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3946
    .local v7, relatedAppId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 3947
    const/4 v3, 0x0

    .line 3948
    .local v3, item:Lcom/android/launcher2/AppItem;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 3949
    .local v2, id:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppItem;

    iget-wide v11, v8, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v8, v9, v11

    if-eqz v8, :cond_0

    .line 3950
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #item:Lcom/android/launcher2/AppItem;
    check-cast v3, Lcom/android/launcher2/AppItem;

    .line 3951
    .restart local v3       #item:Lcom/android/launcher2/AppItem;
    if-eqz v3, :cond_0

    .line 3953
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3941
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #id:Ljava/lang/Long;
    .end local v3           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3961
    .end local v0           #groupPkgName:Ljava/lang/String;
    .end local v6           #position:I
    .end local v7           #relatedAppId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    return-object v5
.end method

.method private isConfirmDialogOpen()Z
    .locals 2

    .prologue
    .line 3430
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3431
    .local v0, fragManager:Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

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

.method private moveToCurrentPage(I)V
    .locals 2
    .parameter "currentPage"

    .prologue
    const/4 v1, 0x0

    .line 690
    sput-boolean v1, Lcom/android/launcher2/MenuAppsGrid;->mChangeMenuModeForSecretBox:Z

    .line 691
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 693
    sput-boolean v1, Lcom/android/launcher2/MenuAppsGrid;->mChangeMenuModeForSecretBox:Z

    .line 694
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPageIfNotSnapping(I)V

    .line 695
    return-void
.end method

.method private openFolderKeyboardIfNeeded(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    .line 3276
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v6, :cond_1

    .line 3291
    :cond_0
    :goto_0
    return-void

    .line 3280
    :cond_1
    const-string v6, "openFolderId"

    const-wide/16 v7, -0x1

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3281
    .local v2, openFolderId:J
    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6, v2, v3}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    .line 3282
    .local v1, item:Lcom/android/launcher2/AppItem;
    if-eqz v1, :cond_0

    instance-of v6, v1, Lcom/android/launcher2/FolderItem;

    if-eqz v6, :cond_0

    .line 3283
    const-string v6, "pendingFolderEditText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3284
    .local v0, editText:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3285
    const-string v6, "pending_folder_edit_text_selection_start"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 3286
    .local v5, selStart:I
    const-string v6, "pending_folder_edit_text_selection_end"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 3288
    .local v4, selEnd:I
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6, v0, v5, v4}, Lcom/android/launcher2/Folder;->restoreText(Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private parseAppPackageGroup()V
    .locals 8

    .prologue
    .line 3909
    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppModel;->getAppItems()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 3910
    .local v0, appItems:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/launcher2/AppItem;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mAppPackageNameGroup:Ljava/util/HashMap;

    .line 3912
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    .line 3914
    .local v4, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {v4}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3915
    .local v1, groupPkgName:Ljava/lang/String;
    iget-wide v6, v4, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3916
    .local v3, id:Ljava/lang/Long;
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mAppPackageNameGroup:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 3918
    .local v5, pkgIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v5, :cond_1

    .line 3919
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #pkgIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3920
    .restart local v5       #pkgIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3927
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mAppPackageNameGroup:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3922
    :cond_1
    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3923
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3929
    .end local v1           #groupPkgName:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/Long;
    .end local v4           #item:Lcom/android/launcher2/AppItem;
    .end local v5           #pkgIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    return-void
.end method

.method private setDragInProgress(Z)V
    .locals 1
    .parameter "dragInProgress"

    .prologue
    .line 3551
    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    .line 3552
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    if-eqz v0, :cond_0

    .line 3553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    .line 3554
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 3556
    :cond_0
    return-void
.end method

.method private setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    .locals 0
    .parameter "isVisible"
    .parameter "item"

    .prologue
    .line 3852
    invoke-virtual {p2, p1}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    .line 3853
    invoke-virtual {p2, p1}, Lcom/android/launcher2/AppIconView;->setDrawShadow(Z)V

    .line 3854
    return-void
.end method

.method private setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V
    .locals 3
    .parameter "isVisible"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3857
    .local p2, items:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    if-nez p2, :cond_0

    .line 3858
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->getConstructedViews()Ljava/util/List;

    move-result-object p2

    .line 3859
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 3860
    .local v1, item:Lcom/android/launcher2/AppIconView;
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V

    goto :goto_0

    .line 3862
    .end local v1           #item:Lcom/android/launcher2/AppIconView;
    :cond_1
    return-void
.end method

.method private updateGridSize(III)V
    .locals 16
    .parameter "marginTop"
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    .line 3601
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 3602
    .local v7, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v6

    .line 3604
    .local v6, childCount:I
    const v14, 0x7f0f0017

    sget-object v15, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v7, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 3606
    .local v2, aivTextView:Landroid/content/res/TypedArray;
    const v14, 0x7f0f0017

    sget-object v15, Landroid/R$styleable;->View:[I

    invoke-virtual {v7, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 3609
    .local v3, aivView:Landroid/content/res/TypedArray;
    const v14, 0x7f0f0018

    sget-object v15, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v7, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 3611
    .local v8, fivTextView:Landroid/content/res/TypedArray;
    const v14, 0x7f0f0018

    sget-object v15, Landroid/R$styleable;->View:[I

    invoke-virtual {v7, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 3615
    .local v9, fivView:Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v6, :cond_3

    .line 3616
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3617
    .local v5, child:Landroid/view/View;
    instance-of v14, v5, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v14, :cond_2

    move-object v4, v5

    .line 3618
    check-cast v4, Lcom/android/launcher2/CellLayoutMenu;

    .line 3619
    .local v4, cellMenu:Lcom/android/launcher2/CellLayoutMenu;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-virtual {v4, v14, v15}, Lcom/android/launcher2/CellLayoutMenu;->setGridSize(II)V

    .line 3620
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setCellSize(II)V

    .line 3621
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    invoke-virtual {v4, v14, v15}, Lcom/android/launcher2/CellLayoutMenu;->setGaps(II)V

    .line 3622
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutMenu;->refreshCellDimension()V

    .line 3624
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 3625
    .local v13, lp:Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, p1

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3626
    invoke-virtual {v4, v13}, Lcom/android/launcher2/CellLayoutMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3628
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutMenu;->getPageChildCount()I

    move-result v14

    if-ge v12, v14, :cond_2

    .line 3629
    invoke-virtual {v4, v12}, Lcom/android/launcher2/CellLayoutMenu;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v10

    .line 3630
    .local v10, grandChild:Landroid/view/View;
    instance-of v14, v10, Lcom/android/launcher2/FolderIconView;

    if-eqz v14, :cond_1

    .line 3631
    invoke-static {v9, v10}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    move-object v14, v10

    .line 3632
    check-cast v14, Landroid/widget/TextView;

    invoke-static {v8, v14}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    .line 3633
    check-cast v10, Lcom/android/launcher2/FolderIconView;

    .end local v10           #grandChild:Landroid/view/View;
    invoke-virtual {v10}, Lcom/android/launcher2/FolderIconView;->refresh()V

    .line 3628
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3634
    .restart local v10       #grandChild:Landroid/view/View;
    :cond_1
    instance-of v14, v10, Lcom/android/launcher2/AppIconView;

    if-eqz v14, :cond_0

    .line 3635
    invoke-static {v3, v10}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    .line 3636
    check-cast v10, Landroid/widget/TextView;

    .end local v10           #grandChild:Landroid/view/View;
    invoke-static {v2, v10}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    goto :goto_2

    .line 3615
    .end local v4           #cellMenu:Lcom/android/launcher2/CellLayoutMenu;
    .end local v12           #j:I
    .end local v13           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3641
    .end local v5           #child:Landroid/view/View;
    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3642
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 3644
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 3645
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 3646
    return-void
.end method

.method private updatePageLayout(I)V
    .locals 3
    .parameter "oldCountX"

    .prologue
    .line 3580
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v1

    .line 3581
    .local v1, pageCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3582
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/CellLayoutMenu;->updateViewToCellLayout(I)V

    .line 3581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3585
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->updateQuickViewMainMenu()V

    .line 3586
    return-void
.end method


# virtual methods
.method protected allowCustomOrdering()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3205
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3206
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->allowCustomizeGrid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3209
    :cond_0
    return v0
.end method

.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3175
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3176
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->appBadgeUpdated(Ljava/util/List;)V

    .line 3178
    :cond_0
    return-void
.end method

.method public appModelLoaded()V
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3103
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 3105
    :cond_0
    return-void
.end method

.method public appModelUpdated()V
    .locals 3

    .prologue
    .line 3109
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3110
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDataIsReady()V

    .line 3114
    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    if-eqz v1, :cond_1

    .line 3115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    .line 3137
    :cond_0
    :goto_0
    return-void

    .line 3118
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    .line 3119
    .local v0, state:Lcom/android/launcher2/MenuAppsGrid$State;
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3121
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3122
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->handleDownloadedAppsStateChange()V

    .line 3126
    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onAppModelUpdated()V

    .line 3130
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    .line 3131
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 3132
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3133
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 3124
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    goto :goto_1
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 13
    .parameter "v"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_HIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_UNHIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_ENABLE:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->MOVE_TO_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FROM_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v12

    .line 483
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    .line 489
    .local v8, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isMenuExiting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    move v12, v11

    .line 495
    goto :goto_0

    .line 499
    :cond_2
    iget v9, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditModeShrinkFactor:F

    .line 500
    .local v9, shrinkfactor:F
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_3

    .line 501
    iget-object v0, v8, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getEditModeShrinkFactor()F

    move-result v9

    .line 503
    :cond_3
    invoke-static {p1, v9}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 505
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_4

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v11, v12}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    .line 524
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 527
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    .line 528
    .local v10, ws:Lcom/android/launcher2/Workspace;
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f0e005d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    move v12, v11

    .line 529
    goto/16 :goto_0

    .line 512
    .end local v10           #ws:Lcom/android/launcher2/Workspace;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->enableRollNavigation()V

    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    .line 515
    .local v7, i:Lcom/android/launcher2/AppItem;
    const/4 v6, 0x0

    .line 516
    .local v6, itemCanBeDisabled:Z
    instance-of v0, v7, Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_5

    .line 517
    const/4 v6, 0x0

    .line 521
    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-object v1, v7, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_7

    move v1, v11

    :goto_3
    iget-boolean v2, v7, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v3

    iget-object v4, v7, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_8

    move v4, v11

    :goto_4
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/MenuTitleBarManager;->showEditBar(ZZZZLcom/android/launcher2/MenuStateAnimatorSet;Z)V

    goto :goto_1

    .line 519
    :cond_5
    sget-object v0, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v6, v11

    :goto_5
    goto :goto_2

    :cond_6
    move v6, v12

    goto :goto_5

    :cond_7
    move v1, v12

    .line 521
    goto :goto_3

    :cond_8
    move v4, v12

    goto :goto_4

    .line 531
    .end local v6           #itemCanBeDisabled:Z
    .end local v7           #i:Lcom/android/launcher2/AppItem;
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    goto/16 :goto_0
.end method

.method public clearLayout(Lcom/android/launcher2/Page;)V
    .locals 6
    .parameter "layout"

    .prologue
    .line 707
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppIconView;>;"
    move-object v5, p1

    .line 709
    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 710
    .local v2, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getHiddenItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 711
    .local v0, dragItem:Lcom/android/launcher2/BaseItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 712
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppIconView;

    .line 713
    .local v3, v:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    instance-of v5, v3, Lcom/android/launcher2/FolderIconView;

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_1

    .line 711
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 717
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/AppIconView;->setVisibility(I)V

    .line 718
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v5, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 720
    .end local v3           #v:Lcom/android/launcher2/AppIconView;
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 722
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    .line 729
    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 730
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->clearLayout(Lcom/android/launcher2/Page;)V

    .line 731
    return-void

    .line 725
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 726
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    goto :goto_2
.end method

.method public closeFolder(ZZ)Z
    .locals 3
    .parameter "commitEdit"
    .parameter "animate"

    .prologue
    const/4 v0, 0x1

    .line 414
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setEnableReOrdering(Z)V

    .line 421
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 422
    const-string v1, "Launcher.MenuAppsGrid"

    const-string v2, "closeFolder : true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public completeMoveSecretItem()V
    .locals 1

    .prologue
    .line 3965
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateMoveToSecretBox:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->moveToSecretBox()V

    .line 3966
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 3523
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 3524
    .local v0, action:I
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    .line 3535
    .local v1, result:Z
    if-ne v0, v2, :cond_1

    .line 3536
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    .line 3541
    :cond_0
    :goto_0
    return v1

    .line 3537
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 3538
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 3546
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3547
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->onDrawComplete(Landroid/graphics/Canvas;)V

    .line 3548
    return-void
.end method

.method protected endDragging()V
    .locals 0

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    .line 538
    return-void
.end method

.method protected findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 6
    .parameter "tag"

    .prologue
    .line 3218
    const/4 v4, 0x0

    .local v4, pageIndex:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3219
    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    .line 3220
    .local v3, page:Lcom/android/launcher2/CellLayoutMenu;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 3221
    .local v2, layout:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 3222
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3223
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 3228
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #layout:Landroid/view/ViewGroup;
    .end local v3           #page:Lcom/android/launcher2/CellLayoutMenu;
    :goto_2
    return-object v0

    .line 3221
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #i:I
    .restart local v2       #layout:Landroid/view/ViewGroup;
    .restart local v3       #page:Lcom/android/launcher2/CellLayoutMenu;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3218
    .end local v0           #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3228
    .end local v1           #i:I
    .end local v2           #layout:Landroid/view/ViewGroup;
    .end local v3           #page:Lcom/android/launcher2/CellLayoutMenu;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getActiveTitleBarForState()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 2945
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getAppsQuickViewState()Z
    .locals 1

    .prologue
    .line 3848
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->isQuickViewOpen()Z

    move-result v0

    return v0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 3419
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3420
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getAssociatedLowerPageBound(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 3425
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    .line 3426
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getAssociatedUpperPageBound(I)I

    move-result v0

    goto :goto_0
.end method

.method public getFolderTitletoAddButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3354
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->mFolderTitletoAddButton:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuSecretPageCnt()I
    .locals 3

    .prologue
    .line 3896
    const/4 v0, 0x0

    .line 3898
    .local v0, menuSecretPagecnt:I
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v1, v2, :cond_0

    .line 3899
    sget v0, Lcom/android/launcher2/MenuAppsGrid;->mAlphabeticalMenuSecretPageCnt:I

    .line 3905
    :goto_0
    return v0

    .line 3902
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getCustomMenuSecretPageCnt()I

    move-result v0

    goto :goto_0
.end method

.method public getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 1

    .prologue
    .line 3294
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method public getOpenFolderId()J
    .locals 3

    .prologue
    .line 3298
    const-wide/16 v0, -0x1

    .line 3299
    .local v0, folderId:J
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    .line 3300
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    .line 3303
    :cond_0
    return-wide v0
.end method

.method getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;
    .locals 4
    .parameter "screen"

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v2

    .line 791
    .local v2, pageCount:I
    if-ge p1, v2, :cond_0

    .line 792
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    .line 798
    :goto_0
    return-object v3

    .line 794
    :cond_0
    const/4 v1, 0x0

    .line 795
    .local v1, page:Lcom/android/launcher2/CellLayoutMenu;
    move v0, v2

    .local v0, i:I
    :goto_1
    if-gt v0, p1, :cond_1

    .line 796
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v1

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 798
    goto :goto_0
.end method

.method public getPageCacheSize()I
    .locals 2

    .prologue
    .line 3792
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    .line 3793
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    .line 3795
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageCacheSize()I

    move-result v0

    goto :goto_0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 2

    .prologue
    .line 3513
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 2

    .prologue
    .line 3518
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getStartEditNormalPage()Z
    .locals 1

    .prologue
    .line 698
    sget-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->mStartEditNormalPage:Z

    return v0
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2950
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    goto :goto_0
.end method

.method getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2955
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    goto :goto_0
.end method

.method getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .parameter "state"

    .prologue
    .line 2958
    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBarHight()I
    .locals 1

    .prologue
    .line 2940
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuTitleBarManager;->getTitleBarHeight()I

    move-result v0

    return v0
.end method

.method protected getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z
    .locals 9
    .parameter "aRect"

    .prologue
    const/4 v3, 0x1

    .line 3141
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v4, v5, :cond_1

    .line 3142
    const/4 v3, 0x0

    .line 3167
    :cond_0
    :goto_0
    return v3

    .line 3144
    :cond_1
    iget v4, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3146
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuTitleBarManager;->getMenuEditBar()Lcom/android/launcher2/MenuEditBar;

    move-result-object v2

    .line 3147
    .local v2, menuEditBar:Lcom/android/launcher2/MenuEditBar;
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuTitleBarManager;->getEditTitleBar()Landroid/view/View;

    move-result-object v1

    .line 3148
    .local v1, editTitleBar:Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuEditBar;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3149
    invoke-virtual {v2}, Lcom/android/launcher2/MenuEditBar;->getBarPosition()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 3161
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 3162
    const v4, 0x7f07008c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3163
    .local v0, bb:Landroid/view/View;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 3151
    .end local v0           #bb:Landroid/view/View;
    :pswitch_0
    invoke-virtual {v2}, Lcom/android/launcher2/MenuEditBar;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 3152
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    if-ge v4, v5, :cond_2

    iget v4, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 3149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getViewType()Lcom/android/launcher2/MenuView$ViewType;
    .locals 1

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object v0
.end method

.method public handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 8
    .parameter "newState"
    .parameter "oldState"

    .prologue
    const/4 v7, 0x1

    .line 2992
    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 2994
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_1

    .line 2995
    :cond_0
    invoke-virtual {p0, v7, v7}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    .line 2996
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    .line 2997
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3001
    .local v2, stateChangeAnimators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    .line 3002
    .local v3, stateObj:Lcom/android/launcher2/MenuAppsGrid$StateObj;
    if-eqz v3, :cond_2

    .line 3003
    invoke-virtual {v3, v2, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3005
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    .line 3006
    if-eqz v3, :cond_3

    .line 3007
    invoke-virtual {v3, v2, p2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3018
    :cond_3
    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v5, :cond_5

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v5, :cond_5

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v5, :cond_5

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p1, v5, :cond_5

    .line 3020
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    .line 3026
    :cond_4
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 3028
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v0

    .line 3029
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 3030
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v5, p1, p2}, Lcom/android/launcher2/CellLayoutMenu;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3029
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3021
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_5
    if-eq p2, p1, :cond_4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v5, :cond_4

    .line 3022
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->getConstructedViews()Ljava/util/List;

    move-result-object v4

    .line 3023
    .local v4, views:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppIconView;>;"
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    .line 3024
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 3032
    .end local v4           #views:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppIconView;>;"
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    .line 3033
    return-void
.end method

.method public hideEditBar(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 3844
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/MenuTitleBarManager;->hideEditBar(Landroid/animation/Animator;Lcom/android/launcher2/MenuStateAnimatorSet;)V

    .line 3845
    return-void
.end method

.method protected invalidatePageData()V
    .locals 3

    .prologue
    .line 572
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->invalidatePageData()V

    .line 573
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDirtyFlags()V

    .line 575
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->updatePageTransforms()V

    .line 576
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    .line 577
    .local v1, info:Lcom/android/launcher2/FolderItem;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .line 578
    .local v0, icon:Lcom/android/launcher2/FolderIconView;
    if-eqz v0, :cond_0

    .line 579
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Folder;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    .line 582
    .end local v0           #icon:Lcom/android/launcher2/FolderIconView;
    .end local v1           #info:Lcom/android/launcher2/FolderItem;
    :cond_0
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 1
    .parameter "currentPage"
    .parameter "immediateAndOnly"

    .prologue
    .line 559
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->invalidatePageData(IZ)V

    .line 564
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->restoreOpenFolderState(Landroid/os/Bundle;)V

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    .line 568
    :cond_0
    return-void
.end method

.method public isDragInProgress()Z
    .locals 1

    .prologue
    .line 3559
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    return v0
.end method

.method public isReminderChecked()Z
    .locals 4

    .prologue
    .line 3987
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    const-string v2, "com.android.launcher2.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3989
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "add.movetosecret.popup.dismissed.key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isSecretPage(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 3891
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    .line 3892
    .local v0, page:Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMenu;->getPageType()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public leaveCurrentState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2962
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    .line 2964
    .local v0, oldState:Lcom/android/launcher2/MenuAppsGrid$State;
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v2, :cond_1

    .line 2965
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    .line 2967
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    .line 2968
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2970
    .local v1, stateChangeAnimators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz v0, :cond_2

    .line 2971
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2979
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    .line 2980
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    .line 2981
    return-void
.end method

.method protected onAddItem(Lcom/android/launcher2/AppIconView;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 541
    invoke-virtual {p1, p0}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    invoke-virtual {p1, p0}, Lcom/android/launcher2/AppIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 543
    sget-object v0, Lcom/android/launcher2/FocusHelper;->MENUAPPGRID_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/AppIconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 544
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 176
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 183
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 184
    .local v0, item:Lcom/android/launcher2/AppItem;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->cancelClicksOnChildrenForCurrentPage()V

    .line 187
    check-cast v0, Lcom/android/launcher2/FolderItem;

    .end local v0           #item:Lcom/android/launcher2/AppItem;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 3666
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    .line 3667
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    .line 3668
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 551
    return-void
.end method

.method public onExitAllApps()V
    .locals 2

    .prologue
    .line 436
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    .line 437
    return-void
.end method

.method onFadeEnd()V
    .locals 4

    .prologue
    .line 3821
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    if-nez v3, :cond_1

    .line 3828
    :cond_0
    return-void

    .line 3822
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    .line 3823
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v1

    .line 3824
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3825
    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3826
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->destroyDummyPanel()V

    .line 3824
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method onFadeStart()V
    .locals 7

    .prologue
    .line 3800
    iget-boolean v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    if-eqz v6, :cond_1

    .line 3818
    :cond_0
    return-void

    .line 3801
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    .line 3802
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v0

    .line 3803
    .local v0, c:I
    add-int/lit8 v4, v0, -0x1

    .line 3804
    .local v4, l:I
    add-int/lit8 v5, v0, 0x1

    .line 3805
    .local v5, r:I
    if-gez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 3806
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v6

    if-lt v5, v6, :cond_3

    const/4 v5, 0x0

    .line 3808
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v2

    .line 3809
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3810
    if-eq v3, v0, :cond_4

    if-eq v3, v4, :cond_4

    if-ne v3, v5, :cond_6

    .line 3811
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3812
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->setupDummyPanel()V

    .line 3813
    if-eq v3, v0, :cond_6

    if-eq v3, v4, :cond_5

    if-ne v3, v5, :cond_6

    .line 3814
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 3809
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V
    .locals 15
    .parameter "childItem"
    .parameter "title"
    .parameter "destinationContainerId"
    .parameter "removeItem"
    .parameter "findNewPosition"
    .parameter "destinationContainerScreen"
    .parameter "destinationContainerCell"

    .prologue
    .line 3716
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v12, v13, :cond_4

    const/4 v5, 0x1

    .line 3717
    .local v5, inEditMode:Z
    :goto_0
    if-nez v5, :cond_0

    .line 3718
    sget-object v12, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 3720
    :cond_0
    sget-object v12, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppModel;->editAddFolder()Lcom/android/launcher2/AppFolderItem;

    move-result-object v7

    .line 3721
    .local v7, newFolder:Lcom/android/launcher2/AppFolderItem;
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 3730
    const/4 v1, -0x1

    .local v1, cell:I
    move v10, v1

    .line 3732
    .local v10, screen:I
    if-eqz p1, :cond_5

    move-object/from16 v6, p1

    .line 3733
    check-cast v6, Lcom/android/launcher2/AppItem;

    .line 3735
    .local v6, item:Lcom/android/launcher2/AppItem;
    move/from16 v10, p7

    .line 3736
    move/from16 v1, p8

    .line 3739
    const/4 v12, -0x1

    iput v12, v6, Lcom/android/launcher2/AppItem;->mCell:I

    .line 3740
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/launcher2/AppFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 3761
    .end local v6           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    :goto_1
    iput v1, v7, Lcom/android/launcher2/AppItem;->mCell:I

    .line 3762
    iput v10, v7, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 3763
    if-nez v5, :cond_2

    .line 3764
    sget-object v12, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 3766
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v2

    .line 3767
    .local v2, currentScreen:I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 3769
    iget-object v12, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v13, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v12, v13, :cond_7

    .line 3771
    iget-wide v12, v7, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {p0, v12, v13}, Lcom/android/launcher2/MenuAppsGrid;->getPageIndexForItemId(J)I

    move-result v9

    .line 3772
    .local v9, pageIndex:I
    const/4 v12, -0x1

    if-eq v9, v12, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v12

    if-eq v9, v12, :cond_3

    .line 3773
    invoke-virtual {p0, v9}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    .line 3780
    .end local v9           #pageIndex:I
    :cond_3
    :goto_2
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 3781
    .local v3, handler:Landroid/os/Handler;
    new-instance v12, Lcom/android/launcher2/MenuAppsGrid$6;

    invoke-direct {v12, p0}, Lcom/android/launcher2/MenuAppsGrid$6;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    const-wide/16 v13, 0x1f4

    invoke-virtual {v3, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3787
    return-void

    .line 3716
    .end local v1           #cell:I
    .end local v2           #currentScreen:I
    .end local v3           #handler:Landroid/os/Handler;
    .end local v5           #inEditMode:Z
    .end local v7           #newFolder:Lcom/android/launcher2/AppFolderItem;
    .end local v10           #screen:I
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 3745
    .restart local v1       #cell:I
    .restart local v5       #inEditMode:Z
    .restart local v7       #newFolder:Lcom/android/launcher2/AppFolderItem;
    .restart local v10       #screen:I
    :cond_5
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v12

    if-ge v4, v12, :cond_1

    .line 3746
    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayoutNoGap;

    .line 3752
    .local v8, page:Lcom/android/launcher2/CellLayoutNoGap;
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v11

    .line 3753
    .local v11, space:I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    .line 3754
    move v1, v11

    .line 3755
    move v10, v4

    .line 3756
    goto :goto_1

    .line 3745
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3775
    .end local v4           #i:I
    .end local v8           #page:Lcom/android/launcher2/CellLayoutNoGap;
    .end local v11           #space:I
    .restart local v2       #currentScreen:I
    :cond_7
    iget v12, v7, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v12, v2, :cond_3

    .line 3776
    iget v12, v7, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {p0, v12}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    goto :goto_2
.end method

.method public onFolderNameChange(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 3437
    sget-object v0, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v0, v1, :cond_0

    .line 3443
    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$5;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->post(Ljava/lang/Runnable;)Z

    .line 3452
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 881
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    .line 882
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Lcom/android/launcher2/PanelDrawer;->hasLoadedResources()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PanelDrawer;->loadResources(Landroid/content/res/Resources;)V

    .line 884
    :cond_0
    if-eqz p1, :cond_1

    .line 885
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->resetPanelViewport()V

    .line 928
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 442
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 471
    :cond_0
    :goto_0
    return v2

    .line 446
    :cond_1
    iget v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v4, :cond_0

    .line 454
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_4

    .line 455
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "add_widgets"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "addapps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "create_folder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 459
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 460
    .local v1, tag:Ljava/lang/Object;
    instance-of v3, v1, Lcom/android/launcher2/AppItem;

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 461
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 462
    .local v0, item:Lcom/android/launcher2/AppItem;
    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_0

    .line 467
    .end local v0           #item:Lcom/android/launcher2/AppItem;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    .line 471
    .end local v1           #tag:Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->beginDragging(Landroid/view/View;)Z

    move-result v2

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 3881
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 3882
    check-cast v0, Landroid/os/Bundle;

    .line 3883
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    const-string v2, "DLAppsSavedIndexKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->setLastPageIndex(I)V

    .line 3884
    const-string v1, "SuperStateKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3888
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 3886
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 3873
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3874
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "SuperStateKey"

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3875
    const-string v2, "DLAppsSavedIndexKey"

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->getLastPageIndex()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3876
    return-object v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "visibility"

    .prologue
    .line 3657
    if-nez p2, :cond_0

    .line 3658
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3659
    .local v0, newConfig:Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    .line 3661
    .end local v0           #newConfig:Landroid/content/res/Configuration;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 3662
    return-void
.end method

.method public openFolder(Lcom/android/launcher2/FolderItem;Z)V
    .locals 8
    .parameter "folderItem"
    .parameter "animateOpen"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 352
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v4

    if-nez v4, :cond_0

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    .line 357
    .local v1, icon:Lcom/android/launcher2/FolderIconView;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 359
    .local v3, parentView:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->clearAccessibilityFocus()V

    .line 361
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v4, v7, :cond_2

    if-eqz v1, :cond_2

    .line 362
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolderLocation:[I

    invoke-virtual {v1, v4}, Lcom/android/launcher2/FolderIconView;->getLocationOnScreen([I)V

    .line 368
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 370
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 371
    invoke-virtual {p0, v5, v5}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    .line 374
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    .line 375
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iput-object p0, v4, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    .line 376
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7, v4}, Lcom/android/launcher2/Folder;->setHomeView(Lcom/android/launcher2/HomeView;)V

    .line 377
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/Folder;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/Folder;->addFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V

    .line 380
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v7, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v4, v7, :cond_a

    move v2, v5

    .line 382
    .local v2, isAlphaGrid:Z
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v4, v4, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-nez v2, :cond_5

    move v6, v5

    :cond_5
    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayoutNoGap;->setEnableReOrdering(Z)V

    .line 383
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v6, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    invoke-direct {v6, p0, v1, p2}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/FolderIconView;Z)V

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Folder;->setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 386
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p1, v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    .line 389
    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    .line 390
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v4

    invoke-virtual {v6, v4, v3, p2}, Lcom/android/launcher2/Folder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    .line 391
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 392
    .local v0, config:Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v4, v5, :cond_7

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 396
    :cond_8
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    .line 399
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    goto/16 :goto_0

    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #isAlphaGrid:Z
    :cond_a
    move v2, v6

    .line 380
    goto :goto_1
.end method

.method public preCreateFolder(Ljava/lang/String;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 8
    .parameter "title"
    .parameter "oldState"

    .prologue
    .line 3307
    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v7, :cond_3

    const/4 v2, 0x1

    .line 3308
    .local v2, inEditMode:Z
    :goto_0
    if-nez v2, :cond_0

    .line 3309
    sget-object v7, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 3312
    :cond_0
    sget-object v7, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppModel;->editAddFolder()Lcom/android/launcher2/AppFolderItem;

    move-result-object v3

    .line 3313
    .local v3, newFolder:Lcom/android/launcher2/AppFolderItem;
    iput-object p1, v3, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 3322
    const/4 v0, -0x1

    .local v0, cell:I
    move v5, v0

    .line 3326
    .local v5, screen:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 3327
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayoutNoGap;

    .line 3332
    .local v4, page:Lcom/android/launcher2/CellLayoutNoGap;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v6

    .line 3333
    .local v6, space:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 3334
    move v0, v6

    .line 3335
    move v5, v1

    .line 3339
    .end local v4           #page:Lcom/android/launcher2/CellLayoutNoGap;
    .end local v6           #space:I
    :cond_1
    iput v0, v3, Lcom/android/launcher2/AppItem;->mCell:I

    .line 3340
    iput v5, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 3341
    if-nez v2, :cond_2

    .line 3342
    sget-object v7, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 3344
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V

    .line 3346
    return-void

    .line 3307
    .end local v0           #cell:I
    .end local v1           #i:I
    .end local v2           #inEditMode:Z
    .end local v3           #newFolder:Lcom/android/launcher2/AppFolderItem;
    .end local v5           #screen:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 3326
    .restart local v0       #cell:I
    .restart local v1       #i:I
    .restart local v2       #inEditMode:Z
    .restart local v3       #newFolder:Lcom/android/launcher2/AppFolderItem;
    .restart local v4       #page:Lcom/android/launcher2/CellLayoutNoGap;
    .restart local v5       #screen:I
    .restart local v6       #space:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method refreshQuickViewMenuGrid(Z)V
    .locals 2
    .parameter "isSecret"

    .prologue
    .line 3595
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    if-eqz v0, :cond_0

    .line 3596
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->refreshQuickView(Z)V

    .line 3598
    :cond_0
    return-void
.end method

.method public releaseShadows()V
    .locals 8

    .prologue
    .line 3564
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v2

    .line 3565
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3566
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3567
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 3569
    .local v5, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 3570
    .local v0, ccout:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 3571
    invoke-virtual {v5, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3572
    .local v6, v:Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_0

    .line 3573
    check-cast v6, Lcom/android/launcher2/AppIconView;

    .end local v6           #v:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    .line 3570
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3565
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3577
    .end local v0           #ccout:I
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v4           #j:I
    .end local v5           #l:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    return-void
.end method

.method protected repositionOpenFolder()V
    .locals 1

    .prologue
    .line 3650
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 3651
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->repositionOpenFolder()V

    .line 3653
    :cond_0
    return-void
.end method

.method public resetPanelViewport()V
    .locals 4

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 863
    .local v0, rootView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 866
    :cond_0
    return-void
.end method

.method public restoreOpenFolderState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .line 3253
    if-nez p1, :cond_1

    .line 3273
    :cond_0
    :goto_0
    return-void

    .line 3255
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3262
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->isDataReady()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3263
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 3267
    :cond_2
    const-string v3, "openFolderId"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 3268
    .local v1, openFolderId:J
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 3269
    .local v0, item:Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/android/launcher2/FolderItem;

    if-eqz v3, :cond_0

    .line 3270
    check-cast v0, Lcom/android/launcher2/FolderItem;

    .end local v0           #item:Lcom/android/launcher2/AppItem;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    .line 3271
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->openFolderKeyboardIfNeeded(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public revertEditChanges()V
    .locals 1

    .prologue
    .line 3091
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->editRevert()V

    .line 3092
    return-void
.end method

.method public saveEditChanges()V
    .locals 5

    .prologue
    .line 3079
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v3, v4, :cond_0

    .line 3080
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v2

    .line 3081
    .local v2, topLevelItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v2, :cond_0

    .line 3082
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 3083
    .local v0, i:Lcom/android/launcher2/AppItem;
    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->editRevertCell()V

    goto :goto_0

    .line 3087
    .end local v0           #i:Lcom/android/launcher2/AppItem;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #topLevelItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_0
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 3088
    return-void
.end method

.method public saveOpenFolderState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 3239
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v1, :cond_1

    .line 3250
    :cond_0
    :goto_0
    return-void

    .line 3240
    :cond_1
    const-string v1, "openFolderId"

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolderId()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3242
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3243
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v0

    .line 3244
    .local v0, text:Landroid/widget/EditText;
    const-string v1, "pendingFolderEditText"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    const-string v1, "pending_folder_edit_text_selection_start"

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3247
    const-string v1, "pending_folder_edit_text_selection_end"

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public saveSecretNoti(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "mIsRepeat"

    .prologue
    .line 3973
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    const-string v3, "com.android.launcher2.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3975
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3976
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "add.movetosecret.popup.dismissed.key"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3977
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3978
    return-void
.end method

.method public setCreateFolderAddButtonState(Lcom/android/launcher2/BaseItem;)V
    .locals 4
    .parameter "childItem"

    .prologue
    .line 3366
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    .line 3367
    if-eqz p1, :cond_2

    .line 3369
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3370
    .local v0, page:Lcom/android/launcher2/CellLayout;
    const/4 v1, 0x0

    .line 3372
    .local v1, view:Lcom/android/launcher2/AppIconView;
    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3374
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mPrevFolderOnCreateFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    .line 3375
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mPrevFolderOnCreateFolder:Lcom/android/launcher2/Folder;

    move-object v2, p1

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-object v2, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget v2, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #view:Lcom/android/launcher2/AppIconView;
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 3382
    .restart local v1       #view:Lcom/android/launcher2/AppIconView;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3383
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    check-cast p1, Lcom/android/launcher2/AppItem;

    .end local p1
    invoke-virtual {v2, p1, v1}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V

    .line 3390
    .end local v0           #page:Lcom/android/launcher2/CellLayout;
    .end local v1           #view:Lcom/android/launcher2/AppIconView;
    :goto_1
    return-void

    .line 3379
    .restart local v0       #page:Lcom/android/launcher2/CellLayout;
    .restart local v1       #view:Lcom/android/launcher2/AppIconView;
    .restart local p1
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    .end local v1           #view:Lcom/android/launcher2/AppIconView;
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .restart local v1       #view:Lcom/android/launcher2/AppIconView;
    goto :goto_0

    .line 3388
    .end local v0           #page:Lcom/android/launcher2/CellLayout;
    .end local v1           #view:Lcom/android/launcher2/AppIconView;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_1
.end method

.method protected setDataIsReady()V
    .locals 0

    .prologue
    .line 3096
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->setDataIsReady()V

    .line 3097
    return-void
.end method

.method setDummyPanelProperties(FI)V
    .locals 6
    .parameter "baseDarken"
    .parameter "alpha"

    .prologue
    .line 3833
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v2

    .line 3835
    .local v2, darkenAmount:F
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v1

    .line 3836
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 3837
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3838
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    sget v4, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    invoke-virtual {v0, v4, p2}, Lcom/android/launcher2/CellLayout;->setDummyPanelProperties(FI)V

    .line 3839
    iget v4, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 3836
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3841
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public setFolderTitletoAddButton(Ljava/lang/String;)V
    .locals 0
    .parameter "folderTitle"

    .prologue
    .line 3349
    sput-object p1, Lcom/android/launcher2/MenuAppsGrid;->mFolderTitletoAddButton:Ljava/lang/String;

    .line 3350
    return-void
.end method

.method public setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    .line 171
    return-void
.end method

.method public setPanelViewport(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 869
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 872
    :cond_0
    return-void
.end method

.method public setPrevFolderOnCreateFolder(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3360
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPrevFolderOnCreateFolder:Lcom/android/launcher2/Folder;

    .line 3362
    return-void
.end method

.method public setStartEditNormalPage(Z)V
    .locals 0
    .parameter "startEditNormalPage"

    .prologue
    .line 702
    sput-boolean p1, Lcom/android/launcher2/MenuAppsGrid;->mStartEditNormalPage:Z

    .line 703
    return-void
.end method

.method public setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 3201
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v1

    #setter for: Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->access$5802(Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;J)J

    .line 3202
    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 2
    .parameter "tabHost"

    .prologue
    .line 3041
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;

    .line 3042
    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    .line 3043
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->setEditBarClickListener(Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;)V

    .line 3044
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    if-nez v0, :cond_0

    .line 3045
    new-instance v0, Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-direct {v0}, Lcom/android/launcher2/MenuStateAnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    .line 3046
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$4;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->setListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    .line 3058
    :cond_0
    return-void
.end method

.method public setViewType(Lcom/android/launcher2/MenuView$ViewType;)V
    .locals 4
    .parameter "viewType"

    .prologue
    .line 3181
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-eq v2, p1, :cond_1

    .line 3182
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 3184
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    .line 3185
    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 3186
    .local v0, enableReOrdering:Z
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setEnabled(Z)V

    .line 3189
    .end local v0           #enableReOrdering:Z
    :cond_0
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    .line 3190
    .local v1, topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3191
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDataIsReady()V

    .line 3192
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    .line 3195
    .end local v1           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_1
    return-void

    .line 3185
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldSecretNotiRepeat()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3981
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3983
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "add.movetosecret.popup.dismissed.key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public syncPageItems(IZ)V
    .locals 2
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 752
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    .line 753
    .local v0, l:Lcom/android/launcher2/CellLayoutMenu;
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setAlpha(F)V

    .line 754
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->buildViews()V

    .line 755
    return-void
.end method

.method public syncPages()V
    .locals 8

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v6, v6, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v6, v6, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v6, v7, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    .line 590
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 591
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Page;

    invoke-virtual {p0, v6}, Lcom/android/launcher2/MenuAppsGrid;->clearLayout(Lcom/android/launcher2/Page;)V

    .line 590
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 594
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    .line 595
    .local v2, fading:Z
    iget-boolean v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    if-eqz v6, :cond_2

    .line 596
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->onFadeEnd()V

    .line 598
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->removeAllViews()V

    .line 605
    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v7, :cond_3

    .line 607
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    .line 609
    :cond_3
    const/4 v0, 0x0

    .line 610
    .local v0, appsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 611
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->getAppsList()Ljava/util/List;

    move-result-object v0

    .line 613
    :cond_4
    if-nez v0, :cond_6

    .line 641
    :cond_5
    :goto_1
    return-void

    .line 632
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    .line 633
    .local v5, item:Lcom/android/launcher2/AppItem;
    invoke-direct {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->addAppItem(Lcom/android/launcher2/AppItem;)V

    goto :goto_2

    .line 637
    .end local v5           #item:Lcom/android/launcher2/AppItem;
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v1

    .line 638
    .local v1, currentPage:I
    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->moveToCurrentPage(I)V

    .line 640
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->onFadeStart()V

    goto :goto_1
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 13
    .parameter "v"
    .parameter "scrollProgress"

    .prologue
    .line 934
    if-nez p1, :cond_0

    .line 993
    :goto_0
    return-void

    .line 938
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 940
    const/4 v7, 0x0

    .line 941
    .local v7, translationX:F
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a001c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v8, v9

    .line 942
    .local v8, vtransition_rotation_max:F
    const/4 v1, 0x0

    .line 943
    .local v1, fixedPosition:Z
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->isLoopingEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 944
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 945
    .local v2, i:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 946
    .local v5, pageWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 951
    .local v4, pageHeight:I
    const/high16 v9, 0x3f00

    int-to-float v10, v5

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f00

    int-to-float v11, v5

    mul-float/2addr v10, v11

    int-to-float v11, v2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-static {v9, v10, v11}, Lcom/android/launcher2/MenuAppsGrid;->mix(FFF)F

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    .line 954
    int-to-float v9, v4

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotY(F)V

    .line 956
    if-nez v2, :cond_3

    const/4 v9, 0x0

    cmpg-float v9, p2, v9

    if-gez v9, :cond_3

    .line 958
    neg-float v9, v8

    mul-float/2addr v9, p2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->maxOverScroll()F

    move-result v10

    div-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    .line 960
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getScrollX()I

    move-result v9

    int-to-float v7, v9

    .line 961
    const/4 v1, 0x1

    .line 972
    .end local v2           #i:I
    .end local v4           #pageHeight:I
    .end local v5           #pageWidth:I
    :cond_1
    :goto_1
    iget v6, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    .line 973
    .local v6, pageZoom:F
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 974
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    .line 975
    if-nez v1, :cond_2

    .line 976
    const/high16 v9, 0x3f80

    sub-float/2addr v9, v6

    mul-float/2addr v9, p2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x4020

    div-float/2addr v9, v10

    add-float/2addr v7, v9

    .line 978
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 983
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    iget-object v9, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v0

    .local v0, darkenAmount:F
    move-object v9, p1

    .line 984
    check-cast v9, Lcom/android/launcher2/CellLayout;

    iget v10, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v0, v11}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    move-object v9, p1

    .line 985
    check-cast v9, Lcom/android/launcher2/CellLayout;

    sget v10, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    invoke-virtual {v9, v10}, Lcom/android/launcher2/CellLayout;->setBackgroundBaseDarken(F)V

    .line 987
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 988
    .local v3, isMenuScrollAlpha:Z
    if-eqz v3, :cond_5

    .line 989
    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    const v11, 0x3e4ccccd

    add-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 962
    .end local v0           #darkenAmount:F
    .end local v3           #isMenuScrollAlpha:Z
    .end local v6           #pageZoom:F
    .restart local v2       #i:I
    .restart local v4       #pageHeight:I
    .restart local v5       #pageWidth:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v2, v9, :cond_4

    const/4 v9, 0x0

    cmpl-float v9, p2, v9

    if-lez v9, :cond_4

    .line 964
    neg-float v9, v8

    mul-float/2addr v9, p2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->maxOverScroll()F

    move-result v10

    div-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    .line 966
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getScrollX()I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int/2addr v9, v10

    int-to-float v7, v9

    .line 967
    const/4 v1, 0x1

    goto :goto_1

    .line 969
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_1

    .line 991
    .end local v2           #i:I
    .end local v4           #pageHeight:I
    .end local v5           #pageWidth:I
    .restart local v0       #darkenAmount:F
    .restart local v3       #isMenuScrollAlpha:Z
    .restart local v6       #pageZoom:F
    :cond_5
    const/high16 v9, 0x3f80

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method updateQuickViewMainMenu()V
    .locals 2

    .prologue
    .line 3589
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    if-eqz v0, :cond_0

    .line 3590
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->updateQuickView()V

    .line 3592
    :cond_0
    return-void
.end method
