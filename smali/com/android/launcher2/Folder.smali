.class public Lcom/android/launcher2/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher2/HomeFolderItem$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/CellLayoutContainer;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Folder$FolderNameChangeListener;,
        Lcom/android/launcher2/Folder$FolderVertScroller;,
        Lcom/android/launcher2/Folder$FolderManager;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field public static final FOLDER_TCHEVHDL_CLOSED:I = 0x2

.field public static final FOLDER_TCHEVHDL_EDIT_CANCELLED:I = 0x1

.field public static final FOLDER_TCHEVHDL_UNPROCESSED:I = 0x3

.field static final ON_EXIT_CLOSE_DELAY:I = 0x320

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static final chipset:Ljava/lang/String;

.field private static mBusHelper:Landroid/os/DVFSHelper;

.field private static mCpuHelper:Landroid/os/DVFSHelper;

.field private static mGpuHelper:Landroid/os/DVFSHelper;

.field private static sHintText:Ljava/lang/String;


# instance fields
.field folderLocation:[I

.field iconLocation:[I

.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

.field protected mContent:Lcom/android/launcher2/CellLayoutNoGap;

.field mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

.field mDragState:Lcom/android/launcher2/DragState;

.field mExpandDuration:I

.field mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

.field private mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

.field mFolderName:Lcom/android/launcher2/FolderEditText;

.field private mFolderNameChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/Folder$FolderNameChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderNameHeight:I

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mIgnoreShrinkingFolder:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mInfo:Lcom/android/launcher2/FolderItem;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mIsFolderOpenAnimationEnded:Z

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mMaxFolderVisibleCols:I

.field private mMaxFolderVisibleRows:I

.field mMenu:Lcom/android/launcher2/MenuAppsGrid;

.field final mOnExitAlarm:Lcom/android/launcher2/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

.field mOtherParent:Landroid/view/ViewGroup;

.field private mScrollView:Landroid/view/View;

.field private mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    .line 103
    sput-object v1, Lcom/android/launcher2/Folder;->mCpuHelper:Landroid/os/DVFSHelper;

    .line 104
    sput-object v1, Lcom/android/launcher2/Folder;->mGpuHelper:Landroid/os/DVFSHelper;

    .line 105
    sput-object v1, Lcom/android/launcher2/Folder;->mBusHelper:Landroid/os/DVFSHelper;

    .line 106
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sput-object v0, Lcom/android/launcher2/Folder;->chipset:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance v4, Lcom/android/launcher2/Alarm;

    invoke-direct {v4}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    .line 87
    iput-boolean v8, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 92
    iput-boolean v8, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    .line 257
    new-instance v4, Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Folder$FolderVertScroller;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    .line 366
    new-instance v4, Lcom/android/launcher2/Folder$3;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Folder$3;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 819
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    .line 820
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    .line 1049
    new-instance v4, Lcom/android/launcher2/Folder$6;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Folder$6;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 1200
    new-instance v4, Lcom/android/launcher2/Folder$7;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Folder$7;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    .line 111
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 112
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    .line 114
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    .local v0, res:Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/android/launcher2/Folder;->getGridValues(Landroid/content/res/Resources;)V

    .line 119
    const v4, 0x7f0a0010

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 121
    const v4, 0x7f0e0058

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    .line 123
    sget-object v4, Lcom/android/launcher2/Folder;->chipset:Ljava/lang/String;

    const-string v5, "8974"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    new-instance v4, Landroid/os/DVFSHelper;

    const/16 v5, 0xc

    invoke-direct {v4, p1, v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v4, Lcom/android/launcher2/Folder;->mCpuHelper:Landroid/os/DVFSHelper;

    .line 125
    sget-object v4, Lcom/android/launcher2/Folder;->mCpuHelper:Landroid/os/DVFSHelper;

    if-eqz v4, :cond_0

    .line 126
    sget-object v4, Lcom/android/launcher2/Folder;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    .line 127
    .local v2, supportedCpuFreqTable:[I
    if-eqz v2, :cond_0

    .line 128
    sget-object v4, Lcom/android/launcher2/Folder;->mCpuHelper:Landroid/os/DVFSHelper;

    const-string v5, "CPU"

    aget v6, v2, v8

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 131
    .end local v2           #supportedCpuFreqTable:[I
    :cond_0
    new-instance v4, Landroid/os/DVFSHelper;

    const/16 v5, 0x10

    invoke-direct {v4, p1, v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v4, Lcom/android/launcher2/Folder;->mGpuHelper:Landroid/os/DVFSHelper;

    .line 132
    sget-object v4, Lcom/android/launcher2/Folder;->mGpuHelper:Landroid/os/DVFSHelper;

    if-eqz v4, :cond_1

    .line 133
    sget-object v4, Lcom/android/launcher2/Folder;->mGpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v3

    .line 134
    .local v3, supportedGpuFreqTable:[I
    if-eqz v3, :cond_1

    .line 135
    sget-object v4, Lcom/android/launcher2/Folder;->mGpuHelper:Landroid/os/DVFSHelper;

    const-string v5, "GPU"

    aget v6, v3, v8

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 138
    .end local v3           #supportedGpuFreqTable:[I
    :cond_1
    new-instance v4, Landroid/os/DVFSHelper;

    const/16 v5, 0x13

    invoke-direct {v4, p1, v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v4, Lcom/android/launcher2/Folder;->mBusHelper:Landroid/os/DVFSHelper;

    .line 139
    sget-object v4, Lcom/android/launcher2/Folder;->mBusHelper:Landroid/os/DVFSHelper;

    if-eqz v4, :cond_2

    .line 140
    sget-object v4, Lcom/android/launcher2/Folder;->mBusHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v1

    .line 141
    .local v1, supportedBusFreqTable:[I
    if-eqz v1, :cond_2

    .line 142
    sget-object v4, Lcom/android/launcher2/Folder;->mBusHelper:Landroid/os/DVFSHelper;

    const-string v5, "BUS"

    aget v6, v1, v8

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 150
    .end local v1           #supportedBusFreqTable:[I
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Folder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Folder;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/Folder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/launcher2/Folder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/launcher2/Folder;->mIsFolderOpenAnimationEnded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->onCloseComplete()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/Folder;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Folder;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->showAddFolderItem()V

    return-void
.end method

.method private animateOpen()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 897
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->setVisibility(I)V

    .line 898
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 899
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->prepareForOpenAnimate()V

    .line 901
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->animateOpen()V

    .line 903
    const/4 v0, 0x2

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 904
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/Folder$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$4;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 916
    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;
    .locals 3
    .parameter "context"

    .prologue
    .line 800
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method private getGridValues(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 260
    const v0, 0x7f0a002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    .line 261
    const v0, 0x7f0a002b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    .line 262
    return-void
.end method

.method private getViewForInfo(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 4
    .parameter "item"

    .prologue
    .line 1345
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1346
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1347
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 1348
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1353
    .end local v0           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_2
    return-object v2

    .line 1346
    .restart local v0       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1345
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1353
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private notifyFolderNameChangeListeners(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1397
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder$FolderNameChangeListener;

    .line 1398
    .local v1, listener:Lcom/android/launcher2/Folder$FolderNameChangeListener;
    invoke-interface {v1, p1}, Lcom/android/launcher2/Folder$FolderNameChangeListener;->onFolderNameChange(Ljava/lang/String;)V

    goto :goto_0

    .line 1400
    .end local v1           #listener:Lcom/android/launcher2/Folder$FolderNameChangeListener;
    :cond_0
    return-void
.end method

.method private onCloseComplete()V
    .locals 3

    .prologue
    .line 1298
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1299
    .local v2, parent:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 1301
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->clearFocus()V

    .line 1307
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 1308
    .local v1, iconView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1309
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1312
    :cond_1
    return-void

    .line 1302
    .end local v1           #iconView:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 1303
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private openFolderWithoutAnimation()V
    .locals 1

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 889
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->open()V

    .line 890
    return-void
.end method

.method private prepareForOpenAnimate()V
    .locals 9

    .prologue
    const v8, 0x3f4ccccd

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 822
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v0

    .line 823
    .local v0, iconView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 824
    iget-object v3, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 826
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v1

    .line 828
    .local v1, lp:Lcom/android/launcher2/HomeView$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 829
    iget-object v3, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v4, v3, v7

    iget v5, v1, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    add-int/2addr v4, v5

    aput v4, v3, v7

    .line 830
    iget-object v3, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v4, v3, v6

    iget v5, v1, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    add-int/2addr v4, v5

    aput v4, v3, v6

    .line 833
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/MenuView;

    if-eqz v3, :cond_0

    .line 835
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 836
    .local v2, otherParentLoc:[I
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 837
    iget-object v3, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v4, v2, v6

    aput v4, v3, v6

    .line 840
    .end local v2           #otherParentLoc:[I
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v4, v4, v7

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->setPivotX(F)V

    .line 841
    iget-object v3, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v4, v4, v6

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->setPivotY(F)V

    .line 843
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Folder;->setScaleX(F)V

    .line 844
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Folder;->setScaleY(F)V

    .line 845
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->setAlpha(F)V

    .line 847
    .end local v1           #lp:Lcom/android/launcher2/HomeView$LayoutParams;
    :cond_1
    return-void
.end method

.method private scrollIfNeeded(Landroid/view/DragEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1153
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-gt v8, v9, :cond_1

    :cond_0
    move v6, v7

    .line 1172
    :goto_0
    return v6

    .line 1156
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    .line 1157
    .local v5, y:F
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutNoGap;->getCellHeight()I

    move-result v1

    .line 1158
    .local v1, cellHt:I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v8

    div-int/lit8 v9, v1, 0x3

    add-int v4, v8, v9

    .line 1159
    .local v4, topScrollCutOff:I
    int-to-float v8, v4

    cmpg-float v8, v5, v8

    if-gez v8, :cond_2

    .line 1160
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder$FolderVertScroller;->scrollUp()V

    goto :goto_0

    .line 1163
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getMeasuredHeight()I

    move-result v2

    .line 1164
    .local v2, mh:I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v3

    .line 1166
    .local v3, pb:I
    sub-int v8, v2, v3

    div-int/lit8 v9, v1, 0x3

    sub-int v0, v8, v9

    .line 1167
    .local v0, bottomScrollCutOff:I
    int-to-float v8, v0

    cmpl-float v8, v5, v8

    if-lez v8, :cond_3

    .line 1168
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder$FolderVertScroller;->scrollDown()V

    goto :goto_0

    .line 1171
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    move v6, v7

    .line 1172
    goto :goto_0
.end method

.method private setScrollViewSize()V
    .locals 6

    .prologue
    .line 336
    iget v4, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 337
    .local v2, rows:I
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeightForRows(I)I

    move-result v0

    .line 338
    .local v0, height:I
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v5, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredWidthForColumns(I)I

    move-result v3

    .line 339
    .local v3, width:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-le v4, v5, :cond_0

    .line 341
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeightForRows(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v0, v4

    .line 343
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 344
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 345
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 346
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    return-void
.end method

.method private setupContentDimensions(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 1217
    const-string v1, "Launcher.Folder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder item count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " folder visible cols = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    div-int v0, v1, v2

    .line 1219
    .local v0, rows:I
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v2, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    .line 1220
    return-void
.end method

.method private setupContentForNumItems(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 1275
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    .line 1276
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    .line 1277
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/HomeView;

    if-nez v0, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1279
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    goto :goto_0
.end method

.method private showAddFolderItem()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 705
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 707
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v8, 0x7f070037

    invoke-virtual {v7, v8}, Lcom/android/launcher2/CellLayoutNoGap;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 708
    .local v1, button:Landroid/view/View;
    const/4 v0, 0x0

    .line 712
    .local v0, addButtonExists:Z
    if-nez v1, :cond_1

    .line 713
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03000b

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7, v8, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 714
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    sget-object v7, Lcom/android/launcher2/FocusHelper;->FOLDER_ADDITEM_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 724
    :goto_0
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 725
    .local v4, pixel:[I
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v2

    .line 726
    .local v2, cell:I
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v7

    rem-int v5, v2, v7

    .line 727
    .local v5, x:I
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v7

    div-int v7, v2, v7

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v6, v7

    .line 728
    .local v6, y:I
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7, v5, v6, v4}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPoint(II[I)V

    .line 729
    new-instance v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v3, v11, v11, v10, v10}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 730
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    aget v7, v4, v12

    iput v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 731
    aget v7, v4, v10

    iput v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 732
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->getCellWidth()I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 733
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->getCellHeight()I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 737
    if-eqz v0, :cond_2

    .line 738
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->requestLayout()V

    .line 744
    .end local v0           #addButtonExists:Z
    .end local v1           #button:Landroid/view/View;
    .end local v2           #cell:I
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v4           #pixel:[I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_0
    return-void

    .line 717
    .restart local v0       #addButtonExists:Z
    .restart local v1       #button:Landroid/view/View;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 740
    .restart local v2       #cell:I
    .restart local v3       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v4       #pixel:[I
    .restart local v5       #x:I
    .restart local v6       #y:I
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7, v1, v3}, Lcom/android/launcher2/CellLayoutNoGap;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private updateTextViewFocus()V
    .locals 4

    .prologue
    .line 1317
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    .line 1318
    .local v1, lastChild:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 1319
    .local v0, firstChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    .line 1320
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1321
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusDownId(I)V

    .line 1322
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusRightId(I)V

    .line 1323
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusLeftId(I)V

    .line 1324
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusUpId(I)V

    .line 1326
    :cond_0
    return-void
.end method


# virtual methods
.method public addFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1390
    return-void
.end method

.method beginHotseatSwapAnimation(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    iget v1, v1, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/FolderAnimator;->bounceItemInIconAt(Lcom/android/launcher2/BaseItem;I)V

    .line 1177
    return-void
.end method

.method bind(Lcom/android/launcher2/FolderItem;)V
    .locals 9
    .parameter "info"

    .prologue
    .line 747
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    .line 748
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    .line 749
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v6, overflow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/BaseItem;>;"
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v5

    .line 752
    .local v5, numContentItems:I
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_0

    .line 753
    add-int/lit8 v5, v5, 0x1

    .line 755
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 757
    const/4 v1, 0x0

    .line 758
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 759
    invoke-interface {p1, v2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 760
    .local v0, child:Lcom/android/launcher2/BaseItem;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->createAndAddShortcut(Lcom/android/launcher2/BaseItem;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 761
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 763
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 766
    .end local v0           #child:Lcom/android/launcher2/BaseItem;
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    .line 770
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 771
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 776
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/BaseItem;

    .line 777
    .local v4, item:Lcom/android/launcher2/BaseItem;
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v7, v4}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 779
    instance-of v7, v4, Lcom/android/launcher2/HomeItem;

    if-eqz v7, :cond_4

    .line 780
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v4, Lcom/android/launcher2/HomeItem;

    .end local v4           #item:Lcom/android/launcher2/BaseItem;
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_2

    .line 784
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    .line 785
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v7, p0}, Lcom/android/launcher2/FolderItem;->addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 787
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v8}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 788
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->showAddFolderItem()V

    .line 789
    return-void
.end method

.method public cancelCloseFolderAlarm()V
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 1214
    return-void
.end method

.method cancelHotseatSwapAnimation()V
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->cancelBouncingItem()V

    .line 1183
    return-void
.end method

.method public centerAboutIcon()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 1224
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 1225
    .local v8, realParent:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v2

    .line 1226
    .local v2, icon:Landroid/view/View;
    if-nez v2, :cond_0

    .line 1272
    :goto_0
    return-void

    .line 1229
    :cond_0
    const/4 v12, 0x2

    new-array v3, v12, [I

    .line 1230
    .local v3, iconLocation:[I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    invoke-static {v3, v12, v2}, Lcom/android/launcher2/Utilities;->getLocationWithRespectTo([ILandroid/view/ViewParent;Landroid/view/View;)V

    .line 1232
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v5

    .line 1234
    .local v5, lp:Lcom/android/launcher2/HomeView$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingLeft()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingRight()I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredWidth()I

    move-result v13

    add-int v11, v12, v13

    .line 1235
    .local v11, width:I
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeight()I

    move-result v0

    .line 1236
    .local v0, contentHt:I
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v13, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    invoke-virtual {v12, v13}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeightForRows(I)I

    move-result v6

    .line 1237
    .local v6, maxHtAllowed:I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/2addr v12, v13

    iget v13, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    add-int v1, v12, v13

    .line 1241
    .local v1, height:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v12

    iget v13, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-le v12, v13, :cond_1

    .line 1243
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12, v14}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeightForRows(I)I

    move-result v12

    div-int/lit8 v12, v12, 0x3

    add-int/2addr v1, v12

    .line 1245
    :cond_1
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    sub-int/2addr v12, v11

    div-int/lit8 v4, v12, 0x2

    .line 1246
    .local v4, left:I
    aget v12, v3, v14

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int v10, v12, v13

    .line 1248
    .local v10, top:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v12

    iget v13, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-le v12, v13, :cond_4

    .line 1250
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1251
    .local v9, res:Landroid/content/res/Resources;
    const v12, 0x7f0c0078

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1253
    .local v7, menuTitleBarH:I
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1255
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getBottom()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int/2addr v12, v1

    div-int/lit8 v10, v12, 0x2

    .line 1265
    .end local v7           #menuTitleBarH:I
    .end local v9           #res:Landroid/content/res/Resources;
    :cond_2
    :goto_1
    iput v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1266
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1267
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1268
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a001b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    add-int/2addr v12, v10

    iput v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1269
    iput v4, v5, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    .line 1270
    iput v10, v5, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    .line 1271
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1259
    .restart local v7       #menuTitleBarH:I
    .restart local v9       #res:Landroid/content/res/Resources;
    :cond_3
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getBottom()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int/2addr v12, v7

    sub-int/2addr v12, v1

    div-int/lit8 v12, v12, 0x2

    add-int v10, v7, v12

    goto :goto_1

    .line 1262
    .end local v7           #menuTitleBarH:I
    .end local v9           #res:Landroid/content/res/Resources;
    :cond_4
    add-int v12, v10, v1

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getBottom()I

    move-result v13

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_2

    .line 1263
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getBottom()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int v10, v12, v1

    goto :goto_1
.end method

.method public close(ZZ)V
    .locals 12
    .parameter "commitEdit"
    .parameter "animate"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/high16 v9, 0x3f80

    const v8, 0x3f4ccccd

    .line 919
    sget-object v6, Lcom/android/launcher2/Folder;->chipset:Ljava/lang/String;

    const-string v7, "8974"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 920
    iget v6, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    add-int/lit8 v5, v6, 0x64

    .line 922
    .local v5, timeout:I
    sget-object v6, Lcom/android/launcher2/Folder;->mCpuHelper:Landroid/os/DVFSHelper;

    if-eqz v6, :cond_0

    .line 923
    sget-object v6, Lcom/android/launcher2/Folder;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v6, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 924
    :cond_0
    sget-object v6, Lcom/android/launcher2/Folder;->mGpuHelper:Landroid/os/DVFSHelper;

    if-eqz v6, :cond_1

    .line 925
    sget-object v6, Lcom/android/launcher2/Folder;->mGpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v6, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 926
    :cond_1
    sget-object v6, Lcom/android/launcher2/Folder;->mBusHelper:Landroid/os/DVFSHelper;

    if-eqz v6, :cond_2

    .line 927
    sget-object v6, Lcom/android/launcher2/Folder;->mBusHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v6, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 930
    .end local v5           #timeout:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v6

    if-nez v6, :cond_3

    .line 993
    :goto_0
    return-void

    .line 931
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    .line 932
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    .line 933
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/launcher2/CellLayoutNoGap;->setVisibility(I)V

    .line 935
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 936
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 939
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    invoke-interface {v6, p0}, Lcom/android/launcher2/FolderItem;->removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 941
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 943
    new-array v4, v11, [I

    .line 944
    .local v4, l:[I
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 945
    aget v6, v4, v10

    sget-object v7, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    aget v7, v7, v10

    if-eq v6, v7, :cond_5

    .line 946
    const/4 p2, 0x0

    .line 950
    .end local v4           #l:[I
    :cond_5
    if-nez p2, :cond_7

    .line 951
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->onCloseComplete()V

    .line 952
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v6}, Lcom/android/launcher2/Folder$FolderManager;->onFolderClose()V

    .line 954
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 955
    .local v1, icon:Landroid/view/View;
    instance-of v6, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_6

    .line 956
    check-cast v1, Lcom/android/launcher2/FolderIconView;

    .end local v1           #icon:Landroid/view/View;
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    .line 958
    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderAnimator;->removeOpenAnimations()V

    goto :goto_0

    .line 962
    :cond_7
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/FolderAnimator;->animateClose(Lcom/android/launcher2/DragState;)V

    .line 964
    iget v6, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    add-int/lit8 v0, v6, 0x64

    .line 965
    .local v0, duration:I
    sget-object v6, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v11, v6}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 966
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/launcher2/Folder$5;

    invoke-direct {v7, p0}, Lcom/android/launcher2/Folder$5;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 984
    iget-boolean v6, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    if-nez v6, :cond_8

    .line 985
    const-wide/16 v2, 0x64

    .line 986
    .local v2, kExtraDurationOnClose:J
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, v0

    const-wide/16 v9, 0x64

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 992
    .end local v2           #kExtraDurationOnClose:J
    :cond_8
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v6}, Lcom/android/launcher2/Folder$FolderManager;->onFolderClose()V

    goto/16 :goto_0
.end method

.method public completeDragExit()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1208
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 1209
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 1210
    return-void
.end method

.method protected createAndAddShortcut(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 1046
    const/4 v0, 0x1

    return v0
.end method

.method public disableChildBadges()V
    .locals 3

    .prologue
    .line 1382
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1383
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1384
    .local v1, icon:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->hideBadge()V

    .line 1382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1386
    .end local v1           #icon:Lcom/android/launcher2/AppIconView;
    :cond_0
    return-void
.end method

.method public dismissEditingName(Z)V
    .locals 3
    .parameter "commitChange"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 518
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    .line 519
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 1187
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1188
    .local v0, r:Z
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1194
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->onDragEvent(Landroid/view/DragEvent;)Z

    .line 1196
    :cond_1
    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "aCanvas"

    .prologue
    .line 1137
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 1138
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1140
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    const/16 v4, 0x64

    if-gt v3, v4, :cond_0

    .line 1142
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1143
    .local v2, gradation_gap_width:I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1144
    .local v1, gradation_gap_height:I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1145
    .local v0, gradation:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1147
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1150
    .end local v0           #gradation:Landroid/graphics/drawable/Drawable;
    .end local v1           #gradation_gap_height:I
    .end local v2           #gradation_gap_width:I
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 598
    sget-object v0, Lcom/android/launcher2/Folder;->chipset:Ljava/lang/String;

    const-string v1, "8974"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 613
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 601
    :pswitch_1
    sget-object v0, Lcom/android/launcher2/Folder;->mCpuHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 602
    sget-object v0, Lcom/android/launcher2/Folder;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0

    .line 607
    :pswitch_2
    sget-object v0, Lcom/android/launcher2/Folder;->mCpuHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 608
    sget-object v0, Lcom/android/launcher2/Folder;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public doneEditingFolderName(Z)V
    .locals 11
    .parameter "commit"

    .prologue
    const/4 v10, 0x0

    .line 522
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    sget-object v7, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderEditText;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 527
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/Folder;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 529
    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, v10}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 530
    if-eqz p1, :cond_4

    .line 534
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, newFolderName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 536
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Lcom/android/launcher2/FolderItem;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 538
    invoke-direct {p0, v2}, Lcom/android/launcher2/Folder;->notifyFolderNameChangeListeners(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 541
    .local v1, iconView:Landroid/view/View;
    instance-of v6, v1, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    move-object v3, v1

    .line 542
    check-cast v3, Landroid/widget/TextView;

    .line 543
    .local v3, textView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, title:Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    instance-of v6, v6, Lcom/android/launcher2/HomeItem;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    check-cast v6, Lcom/android/launcher2/HomeItem;

    iget-wide v6, v6, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    if-eqz v6, :cond_5

    const v6, 0x7f090011

    :goto_0
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 552
    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0059

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, folder:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 558
    :cond_2
    move-object v4, v0

    .line 568
    :cond_3
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 572
    .end local v0           #folder:Ljava/lang/String;
    .end local v1           #iconView:Landroid/view/View;
    .end local v2           #newFolderName:Ljava/lang/String;
    .end local v3           #textView:Landroid/widget/TextView;
    .end local v4           #title:Ljava/lang/String;
    :cond_4
    iput-boolean v10, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 573
    return-void

    .line 547
    .restart local v1       #iconView:Landroid/view/View;
    .restart local v2       #newFolderName:Ljava/lang/String;
    .restart local v3       #textView:Landroid/widget/TextView;
    .restart local v4       #title:Ljava/lang/String;
    :cond_5
    const v6, 0x7f090010

    goto :goto_0

    .line 560
    .restart local v0       #folder:Ljava/lang/String;
    :cond_6
    const-string v5, ""

    .line 561
    .local v5, titleEnd:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_7

    .line 562
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 564
    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public enableChildBadges()V
    .locals 3

    .prologue
    .line 1375
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1376
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1377
    .local v1, icon:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 1375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1379
    .end local v1           #icon:Lcom/android/launcher2/AppIconView;
    :cond_0
    return-void
.end method

.method finishHotseatSwapAnimation(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "swapWith"

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderAnimator;->finishBouncingItem(Lcom/android/launcher2/BaseItem;)V

    .line 1180
    return-void
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, lp:Lcom/android/launcher2/HomeView$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v1, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Lcom/android/launcher2/HomeView$LayoutParams;
    check-cast v0, Lcom/android/launcher2/HomeView$LayoutParams;

    .line 812
    .restart local v0       #lp:Lcom/android/launcher2/HomeView$LayoutParams;
    :goto_0
    return-object v0

    .line 808
    :cond_0
    new-instance v0, Lcom/android/launcher2/HomeView$LayoutParams;

    .end local v0           #lp:Lcom/android/launcher2/HomeView$LayoutParams;
    invoke-direct {v0, v2, v2}, Lcom/android/launcher2/HomeView$LayoutParams;-><init>(II)V

    .line 809
    .restart local v0       #lp:Lcom/android/launcher2/HomeView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/HomeView$LayoutParams;->customPosition:Z

    .line 810
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "v"

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 478
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getEditTextRegion()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    return-object v0
.end method

.method public getFolderIconOrigin([I)V
    .locals 7
    .parameter "xy"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1437
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1438
    .local v0, iconLocation:[I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 1439
    .local v1, iconView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1440
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1442
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v2

    .line 1444
    .local v2, lp:Lcom/android/launcher2/HomeView$LayoutParams;
    aget v3, v0, v5

    iget v4, v2, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p1, v5

    .line 1445
    aget v3, v0, v6

    iget v4, v2, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aput v3, p1, v6

    .line 1447
    .end local v2           #lp:Lcom/android/launcher2/HomeView$LayoutParams;
    :cond_0
    return-void
.end method

.method public getIconId()J
    .locals 4

    .prologue
    .line 165
    const-wide/16 v0, -0x1

    .line 166
    .local v0, id:J
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v3}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v2

    .line 168
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    iget-wide v0, v3, Lcom/android/launcher2/BaseItem;->mId:J

    .line 172
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-wide v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getInfo()Lcom/android/launcher2/FolderItem;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemViews()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1294
    new-instance v0, Lcom/android/launcher2/ChildIterable;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/ChildIterable;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public getNormalVisibleItems()I
    .locals 2

    .prologue
    .line 358
    iget v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getVisibleItems()I
    .locals 2

    .prologue
    .line 350
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-le v0, v1, :cond_0

    .line 352
    iget v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    mul-int/2addr v0, v1

    .line 354
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public handleTouchOutsideBounds(Landroid/view/MotionEvent;Landroid/view/ViewGroup;)I
    .locals 7
    .parameter "ev"
    .parameter "caller"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1002
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getHeight()I

    move-result v4

    invoke-direct {v1, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1004
    .local v1, folderRect:Landroid/graphics/Rect;
    invoke-virtual {p2, p0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1005
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1006
    .local v0, evPt:Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 1007
    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 1008
    const/4 v2, 0x3

    .line 1009
    .local v2, res:I
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1010
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1011
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 1012
    const/4 v2, 0x1

    .line 1018
    :cond_0
    :goto_0
    return v2

    .line 1014
    :cond_1
    invoke-virtual {p0, v5, v5}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 1015
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public ignoreShrinkingFolder()V
    .locals 1

    .prologue
    .line 884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    .line 885
    return-void
.end method

.method public isEditingName()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return v0
.end method

.method public isFolderOpenAnimationEnded()Z
    .locals 1

    .prologue
    .line 893
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsFolderOpenAnimationEnded:Z

    return v0
.end method

.method notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->removeAllViews()V

    .line 1025
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllItems()V

    .line 1026
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    .line 1027
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 1028
    return-void
.end method

.method notifyFolderIconChanged(Lcom/android/launcher2/FolderIconView;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0, p1}, Lcom/android/launcher2/Folder$FolderManager;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    .line 1038
    :cond_0
    return-void
.end method

.method public onAdd(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 1330
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1407
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1408
    sget-boolean v1, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher.Folder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder::onAttachedToWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1410
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1411
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1412
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 15
    .parameter "config"

    .prologue
    .line 1451
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v6

    .line 1452
    .local v6, items:I
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1453
    add-int/lit8 v6, v6, 0x1

    .line 1455
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1456
    .local v11, res:Landroid/content/res/Resources;
    invoke-direct {p0, v11}, Lcom/android/launcher2/Folder;->getGridValues(Landroid/content/res/Resources;)V

    .line 1457
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v13, 0x7f0c0063

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v14, 0x7f0c0064

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher2/CellLayoutNoGap;->setCellSize(II)V

    .line 1459
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v13, 0x7f0c00a8

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v14, 0x7f0c00a9

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher2/CellLayoutNoGap;->setGaps(II)V

    .line 1461
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutNoGap;->refreshCellDimension()V

    .line 1463
    const v12, 0x7f0c00aa

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1464
    .local v8, paddingL:I
    const/4 v10, 0x0

    .line 1465
    .local v10, paddingT:I
    const v12, 0x7f0c00ab

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1466
    .local v9, paddingR:I
    const v12, 0x7f0c00ac

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1467
    .local v7, paddingB:I
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12, v8, v10, v9, v7}, Lcom/android/launcher2/CellLayoutNoGap;->setPadding(IIII)V

    .line 1468
    invoke-direct {p0, v6}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    .line 1469
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    .line 1471
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1472
    .local v4, context:Landroid/content/Context;
    const v12, 0x7f0f0019

    invoke-static {v4, v12}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1473
    .local v0, aivTextView:Landroid/content/res/TypedArray;
    const v12, 0x7f0f0019

    invoke-static {v4, v12}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1475
    .local v1, aivView:Landroid/content/res/TypedArray;
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 1477
    .local v3, clChildren:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v12

    if-ge v5, v12, :cond_1

    .line 1478
    invoke-virtual {v3, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1479
    .local v2, child:Landroid/view/View;
    check-cast v2, Lcom/android/launcher2/AppIconView;

    .end local v2           #child:Landroid/view/View;
    invoke-virtual {v2, v1, v0}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 1477
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1482
    :cond_1
    invoke-static {v1, v0}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 1483
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 1416
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1417
    sget-boolean v1, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher.Folder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder::onDetachedFromWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1419
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1420
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1421
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    .line 1422
    return-void
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 472
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 473
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1091
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/DragState;

    if-nez v2, :cond_0

    .line 1132
    :goto_0
    return v5

    .line 1092
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState;

    .line 1094
    .local v0, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1096
    :pswitch_0
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    .line 1097
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v2}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/FolderIconView;->setDraggedIconId(J)V

    goto :goto_0

    .line 1100
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    .line 1101
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 1102
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    goto :goto_0

    .line 1105
    :pswitch_2
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_0

    .line 1108
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->scrollIfNeeded(Landroid/view/DragEvent;)Z

    goto :goto_0

    .line 1111
    :pswitch_4
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    .line 1112
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_0

    .line 1115
    :pswitch_5
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    .line 1116
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    .line 1117
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_1
    iget-object v2, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-ne v2, v3, :cond_3

    .line 1120
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 1124
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v2}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    const-wide/32 v3, -0x80000000

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/FolderIconView;->setDraggedIconId(J)V

    .line 1125
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 1126
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1127
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    .line 1128
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v2, v0, v5, v5}, Lcom/android/launcher2/FolderAnimator;->animateCloseAnimsEnd(Lcom/android/launcher2/DragState;ZZ)V

    .line 1129
    iput-object v6, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    .line 1130
    iput-object v6, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    goto/16 :goto_0

    .line 1122
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_1

    .line 1094
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 466
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 467
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 468
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 577
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 578
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 581
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 266
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 267
    const v3, 0x7f0700bf

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    .line 268
    const v3, 0x7f0700c0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutNoGap;

    iput-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    .line 269
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iput-object p0, v3, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    .line 270
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iput-boolean v5, v3, Lcom/android/launcher2/CellLayout;->mIgnoreOccupied:Z

    .line 271
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v4, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    .line 272
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutNoGap;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 273
    const v3, 0x7f0700be

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FolderEditText;

    iput-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 274
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/FolderEditText;->setFolder(Lcom/android/launcher2/Folder;)V

    .line 278
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    sget-object v4, Lcom/android/launcher2/FocusHelper;->FOLDERNAME_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/FolderEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 279
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v4, Lcom/android/launcher2/Folder$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Folder$1;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/FolderEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v4, Lcom/android/launcher2/Folder$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Folder$2;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/FolderEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 308
    const/4 v2, 0x0

    .line 309
    .local v2, measureSpec:I
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, v2, v2}, Lcom/android/launcher2/FolderEditText;->measure(II)V

    .line 310
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderEditText;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    .line 311
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 312
    .local v0, folderNameLP:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 313
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 314
    .local v1, marginLP:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    .line 317
    .end local v1           #marginLP:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/FolderEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 318
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 320
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/FolderEditText;->setSelectAllOnFocus(Z)V

    .line 321
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 323
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderEditText;->getInputType()I

    move-result v4

    or-int/lit16 v4, v4, 0x4000

    invoke-virtual {v3, v4}, Lcom/android/launcher2/FolderEditText;->setInputType(I)V

    .line 325
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    .line 326
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 659
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 655
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 653
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    .line 618
    const/4 v2, 0x0

    .line 619
    .local v2, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_4

    .line 620
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    .line 621
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 622
    .local v1, hitRect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/FolderEditText;->getHitRect(Landroid/graphics/Rect;)V

    .line 623
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 624
    .local v0, evPt:Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 625
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 626
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 627
    const/4 v2, 0x1

    .line 647
    .end local v0           #evPt:Landroid/graphics/Point;
    .end local v1           #hitRect:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v2

    .line 631
    .restart local v0       #evPt:Landroid/graphics/Point;
    .restart local v1       #hitRect:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v3

    if-nez v3, :cond_2

    .line 632
    const/4 v2, 0x1

    goto :goto_0

    .line 634
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 635
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 637
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    goto :goto_0

    .line 641
    .end local v0           #evPt:Landroid/graphics/Point;
    .end local v1           #hitRect:Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 643
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    .line 644
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 1358
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    .line 1359
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 17
    .parameter "v"

    .prologue
    .line 389
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 390
    .local v9, tag:Ljava/lang/Object;
    instance-of v14, v9, Lcom/android/launcher2/BaseItem;

    if-eqz v14, :cond_8

    move-object v4, v9

    .line 391
    check-cast v4, Lcom/android/launcher2/BaseItem;

    .line 392
    .local v4, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v14

    if-nez v14, :cond_0

    .line 393
    const/4 v14, 0x0

    .line 460
    .end local v4           #item:Lcom/android/launcher2/BaseItem;
    :goto_0
    return v14

    .line 396
    .restart local v4       #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    .line 400
    sget-boolean v14, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v14, :cond_5

    .line 401
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v14}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v14

    if-nez v14, :cond_5

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 405
    .local v8, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 406
    const v10, 0x7f0e0093

    .line 410
    .local v10, textId:I
    :goto_1
    new-instance v5, Landroid/widget/Toast;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v5, v14}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 411
    .local v5, myToast:Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f03001e

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 412
    .local v6, myToastView:Landroid/view/View;
    const v14, 0x7f070051

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 413
    .local v11, tv:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 414
    const v14, 0x7f0c00e6

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 415
    .local v12, w:I
    const v14, 0x7f0c00e7

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 416
    .local v3, h:I
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v12, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    .end local v3           #h:I
    .end local v12           #w:I
    :cond_1
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(I)V

    .line 421
    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 423
    const v14, 0x7f0c00e2

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 424
    .local v7, posY:I
    const v14, 0x7f0c00e3

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 426
    .local v13, yGap:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    .line 427
    .local v2, folderInfo:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v2, :cond_3

    .line 428
    iget v1, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 429
    .local v1, cellY:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    const/4 v14, 0x4

    if-le v1, v14, :cond_2

    .line 432
    const/4 v1, 0x4

    .line 433
    add-int/lit8 v7, v7, 0x46

    .line 435
    :cond_2
    mul-int v14, v1, v13

    add-int/2addr v7, v14

    .line 439
    .end local v1           #cellY:I
    :cond_3
    const/16 v14, 0x30

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 440
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/widget/Toast;->setDuration(I)V

    .line 441
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 443
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 408
    .end local v2           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    .end local v5           #myToast:Landroid/widget/Toast;
    .end local v6           #myToastView:Landroid/view/View;
    .end local v7           #posY:I
    .end local v10           #textId:I
    .end local v11           #tv:Landroid/widget/TextView;
    .end local v13           #yGap:I
    :cond_4
    const v10, 0x7f0e0091

    .restart local v10       #textId:I
    goto/16 :goto_1

    .line 447
    .end local v8           #res:Landroid/content/res/Resources;
    .end local v10           #textId:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v14, :cond_7

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v14

    sget-object v15, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v14, v15, :cond_6

    .line 451
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    .line 453
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher2/MenuAppsGrid;->beginDragging(Landroid/view/View;)Z

    move-result v14

    goto/16 :goto_0

    .line 456
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;)Z

    .line 458
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;

    const-string v15, "vibrator"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Vibrator;

    const-wide/16 v15, 0x23

    invoke-virtual/range {v14 .. v16}, Landroid/os/Vibrator;->vibrate(J)V

    .line 460
    .end local v4           #item:Lcom/android/launcher2/BaseItem;
    :cond_8
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public onRemove(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1334
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->getViewForInfo(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 1335
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1336
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 1340
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->updateViewsToTheirItemPositions()V

    .line 1342
    :cond_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1363
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 593
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 4
    .parameter "isInTouchMode"

    .prologue
    const/4 v3, 0x0

    .line 1426
    sget-boolean v0, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Folder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder::onTouchModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_0
    if-nez p1, :cond_1

    .line 1428
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1429
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    .line 1434
    :goto_0
    return-void

    .line 1432
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V
    .locals 3
    .parameter "realParent"
    .parameter "pseudoParent"
    .parameter "animate"

    .prologue
    .line 852
    sget-object v1, Lcom/android/launcher2/Folder;->chipset:Ljava/lang/String;

    const-string v2, "8974"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 853
    iget v1, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1e

    add-int v0, v1, v2

    .line 855
    .local v0, timeout:I
    sget-object v1, Lcom/android/launcher2/Folder;->mCpuHelper:Landroid/os/DVFSHelper;

    if-eqz v1, :cond_0

    .line 856
    sget-object v1, Lcom/android/launcher2/Folder;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 857
    :cond_0
    sget-object v1, Lcom/android/launcher2/Folder;->mGpuHelper:Landroid/os/DVFSHelper;

    if-eqz v1, :cond_1

    .line 858
    sget-object v1, Lcom/android/launcher2/Folder;->mGpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 859
    :cond_1
    sget-object v1, Lcom/android/launcher2/Folder;->mBusHelper:Landroid/os/DVFSHelper;

    if-eqz v1, :cond_2

    .line 860
    sget-object v1, Lcom/android/launcher2/Folder;->mBusHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 863
    .end local v0           #timeout:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    .line 865
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 866
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 869
    :cond_3
    iput-object p2, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    .line 871
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 872
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    .line 873
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->updateCustomViewToCellLayout()V

    .line 874
    if-eqz p3, :cond_4

    .line 875
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->animateOpen()V

    .line 879
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    .line 880
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v1}, Lcom/android/launcher2/Folder$FolderManager;->onFolderOpen()V

    .line 881
    return-void

    .line 877
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->openFolderWithoutAnimation()V

    goto :goto_0
.end method

.method public parentLayoutEntered()V
    .locals 3

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    .line 1082
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 1084
    :cond_0
    return-void
.end method

.method public refreshIconView()V
    .locals 2

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v0

    .line 1367
    .local v0, icon:Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1368
    check-cast v1, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    move-object v1, v0

    .line 1369
    check-cast v1, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    .line 1370
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1372
    :cond_0
    return-void
.end method

.method public removeFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1394
    return-void
.end method

.method public repositionOpenFolder()V
    .locals 1

    .prologue
    .line 1486
    new-instance v0, Lcom/android/launcher2/Folder$8;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Folder$8;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1498
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->updateTempIconPosition()V

    .line 1499
    return-void
.end method

.method public requestChildFocusForHWKey()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 497
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, parent:Landroid/view/ViewParent;
    move-object v2, v1

    .line 498
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 501
    .local v0, focusedChild:Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->setFocusableInTouchMode(Z)V

    .line 502
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->requestFocus()Z

    .line 505
    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-interface {v1, v3, v3}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public restoreText(Ljava/lang/String;II)Z
    .locals 3
    .parameter "text"
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    const/4 v1, 0x1

    .line 176
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v0

    .line 178
    .local v0, textArea:Landroid/widget/EditText;
    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 181
    invoke-virtual {v0, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 191
    .end local v0           #textArea:Landroid/widget/EditText;
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAddToFolderButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    .line 702
    return-void
.end method

.method setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    .line 664
    new-instance v1, Lcom/android/launcher2/FolderAnimator;

    invoke-interface {p1}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/FolderAnimator;-><init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderIconView;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    .line 665
    invoke-interface {p1}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/FolderIconView;->setFolder(Lcom/android/launcher2/Folder;)V

    .line 666
    return-void
.end method

.method public setHomeView(Lcom/android/launcher2/HomeView;)V
    .locals 1
    .parameter "home"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 363
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->setHomeView(Lcom/android/launcher2/HomeView;)V

    .line 364
    return-void
.end method

.method public setItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 689
    return-void
.end method

.method public startEditingFolderName()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 514
    return-void
.end method

.method public startEditingFolderName(Z)V
    .locals 2
    .parameter "giveFocusToEditText"

    .prologue
    .line 490
    if-eqz p1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 492
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    .line 495
    return-void
.end method

.method public updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0, p1}, Lcom/android/launcher2/Folder$FolderManager;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    .line 670
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderAnimator;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    .line 671
    if-eqz p1, :cond_0

    .line 672
    invoke-virtual {p1, p0}, Lcom/android/launcher2/FolderIconView;->setFolder(Lcom/android/launcher2/Folder;)V

    .line 673
    :cond_0
    return-void
.end method
