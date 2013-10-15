.class public Lcom/android/launcher2/MenuView;
.super Landroid/widget/TabHost;
.source "MenuView.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$StateAnimatorProvider;
.implements Lcom/android/launcher2/Launcher$HardwareKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuView$2;,
        Lcom/android/launcher2/MenuView$SavedState;,
        Lcom/android/launcher2/MenuView$ViewType;,
        Lcom/android/launcher2/MenuView$NeedsTabHost;,
        Lcom/android/launcher2/MenuView$PackageNotifications;,
        Lcom/android/launcher2/MenuView$AppModelNotifications;
    }
.end annotation


# static fields
.field static final APPS_TAB_TAG:Ljava/lang/String; = "APPS"

.field public static final MENU_VIEW_TYPE_KEY:Ljava/lang/String; = "MenuView.ViewType"

.field private static final TAG:Ljava/lang/String; = "MenuView"

.field static final WIDGETS_TAB_TAG:Ljava/lang/String; = "WIDGETS"

.field private static cpuBooster:Landroid/os/DVFSHelper;

.field public static mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

.field public static oldState:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static onShowAllAppsClicked:Z


# instance fields
.field mDownButton:Landroid/view/View;

.field private mDownloadedButton:Landroid/widget/TextView;

.field private mDownloadedButtonDrawablePadding:I

.field private mDownloadedContainer:Landroid/view/View;

.field private mDownloadedText:Ljava/lang/CharSequence;

.field private mMaxItemsPerScreen:I

.field mMenuContainer:Landroid/view/View;

.field mMenuOrMarket:Landroid/view/View;

.field mMenuViewDarken:Landroid/view/View;

.field private mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

.field private mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

.field private mTabDivider:Landroid/view/View;

.field private mTabGapView:Landroid/view/View;

.field private mTabManager:Lcom/android/launcher2/tabs/TabManager;

.field private mTabsView:Landroid/view/View;

.field private mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

.field private mViewType:Lcom/android/launcher2/MenuView$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/MenuView;->cpuBooster:Landroid/os/DVFSHelper;

    .line 551
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/MenuView;->onShowAllAppsClicked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    const-string v4, "com.android.launcher2.prefs"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 142
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Launcher_EnableViewByAlphabetAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    const-string v4, "MenuView.ViewType"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, savedMenuViewType:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    :cond_0
    const-string v4, "MenuView.ViewType"

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    .end local v3           #savedMenuViewType:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getCpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v4

    sput-object v4, Lcom/android/launcher2/MenuView;->cpuBooster:Landroid/os/DVFSHelper;

    .line 154
    const-string v4, "MenuView.ViewType"

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 158
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f0a0023

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f0a0024

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/MenuView;->mMaxItemsPerScreen:I

    .line 161
    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setAppNormalizer()V

    .line 163
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/android/launcher2/Launcher;->addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    .line 164
    new-instance v4, Lcom/android/launcher2/MenuTitleBarManager;

    invoke-direct {v4}, Lcom/android/launcher2/MenuTitleBarManager;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/MenuView;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    .line 165
    return-void
.end method

.method private closeViewTypeDialog()V
    .locals 3

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 669
    .local v1, manager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 671
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-static {v1}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 672
    invoke-static {v0, v1}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 676
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuViewTypeDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 677
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 678
    return-void

    .line 673
    :cond_1
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method private collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 6
    .parameter
    .parameter "tabContentAnimator"
    .parameter "otherAnimator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/animation/Animator;",
            "Landroid/animation/Animator;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v5, 0x1020011

    .line 897
    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v1, v4

    check-cast v1, Landroid/view/ViewGroup;

    .line 899
    .local v1, container:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 900
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 901
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 899
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 904
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 905
    invoke-virtual {p2}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .line 910
    .local v0, a:Landroid/animation/Animator;
    :goto_2
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 911
    new-instance v4, Lcom/android/launcher2/MenuView$1;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher2/MenuView$1;-><init>(Lcom/android/launcher2/MenuView;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 930
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 907
    .end local v0           #a:Landroid/animation/Animator;
    :cond_1
    invoke-virtual {p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .restart local v0       #a:Landroid/animation/Animator;
    goto :goto_2

    .line 932
    .end local v0           #a:Landroid/animation/Animator;
    .end local v3           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private static removeButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 836
    if-eqz p0, :cond_0

    .line 837
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 838
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 842
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setAppNormalizer()V
    .locals 3

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, normalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;,"Lcom/android/launcher2/MenuAppModel$Normalizer<Lcom/android/launcher2/AppItem;>;"
    sget-object v1, Lcom/android/launcher2/MenuView$2;->$SwitchMap$com$android$launcher2$MenuView$ViewType:[I

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView$ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 690
    :goto_0
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget v2, p0, Lcom/android/launcher2/MenuView;->mMaxItemsPerScreen:I

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/MenuAppModel;->setNormalizer(Lcom/android/launcher2/MenuAppModel$Normalizer;I)V

    .line 691
    return-void

    .line 684
    :pswitch_0
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    .line 685
    goto :goto_0

    .line 688
    :pswitch_1
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    goto :goto_0

    .line 682
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupTabTitleBar()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1031
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1032
    .local v4, res:Landroid/content/res/Resources;
    const v6, 0x7f090013

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 1033
    .local v5, showDownloadedText:Z
    const v6, 0x7f090012

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1034
    .local v1, expandTabs:Z
    const v6, 0x7f0c007e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1035
    .local v2, fixedSizeTabBar:I
    const v6, 0x7f0c000c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1036
    .local v0, downloadedTextPadding:I
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 1037
    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    .line 1038
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/launcher2/MenuView;->mDownloadedText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/launcher2/MenuView;->mDownloadedButtonDrawablePadding:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1040
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v6, v0, v8, v0, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1047
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 1048
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1049
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 1050
    if-eqz v1, :cond_6

    .line 1051
    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1052
    const/high16 v6, 0x4000

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1057
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1060
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 1061
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1062
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_2

    .line 1063
    if-eqz v1, :cond_7

    if-eqz v5, :cond_7

    .line 1064
    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1065
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1070
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1073
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 1074
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1075
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_3

    .line 1076
    if-eqz v1, :cond_8

    .line 1077
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1081
    :goto_3
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1084
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 1085
    if-eqz v1, :cond_9

    .line 1086
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1091
    :cond_4
    :goto_4
    return-void

    .line 1042
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1044
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 1054
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1055
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1067
    :cond_7
    const/4 v6, -0x2

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1068
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    .line 1079
    :cond_8
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_3

    .line 1088
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private showNoDownloadedAppsToastMessage()V
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e008f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuView;->mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 497
    return-void
.end method


# virtual methods
.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 4
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
    .line 380
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 381
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 382
    .local v0, frag:Landroid/app/Fragment;
    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_0

    .line 383
    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-interface {v0, p1}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appBadgeUpdated(Ljava/util/List;)V

    goto :goto_0

    .line 386
    .end local v2           #info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    return-void
.end method

.method public appModelLoaded()V
    .locals 4

    .prologue
    .line 334
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 335
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 336
    .local v0, frag:Landroid/app/Fragment;
    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appModelLoaded()V

    goto :goto_0

    .line 338
    .end local v2           #info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    .line 339
    return-void
.end method

.method public appModelUpdated()V
    .locals 4

    .prologue
    .line 371
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 372
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 373
    .local v0, frag:Landroid/app/Fragment;
    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_0

    .line 374
    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appModelUpdated()V

    goto :goto_0

    .line 377
    .end local v2           #info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    return-void
.end method

.method public bindMenuSecretMode()V
    .locals 3

    .prologue
    .line 1112
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    invoke-virtual {v1, v2}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1113
    .local v0, appsFrag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_3

    .line 1114
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/MenuAppsGrid;->mChangeMenuModeForSecretBox:Z

    .line 1115
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->MOVE_TO_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FROM_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_1

    .line 1117
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1119
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    move-object v1, v0

    .line 1120
    check-cast v1, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1121
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #appsFrag:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->refreshQuickViewMenuGrid(Z)V

    .line 1125
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->hasSecretWidget()V

    .line 1126
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->setSecretWidgetByFiltering()V

    .line 1127
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->updateCanUninstallApps()V

    .line 1128
    return-void

    .line 1122
    .restart local v0       #appsFrag:Landroid/app/Fragment;
    :cond_3
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsListFragment;

    if-eqz v1, :cond_2

    .line 1123
    check-cast v0, Lcom/android/launcher2/MenuAppsListFragment;

    .end local v0           #appsFrag:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsListFragment;->appModelUpdated()V

    goto :goto_0
.end method

.method public changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 402
    .local v0, frag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 405
    :cond_0
    return-void
.end method

.method public chooseViewType()V
    .locals 2

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/MenuViewTypeDialog;->createAndShow(Lcom/android/launcher2/MenuView$ViewType;Landroid/app/FragmentManager;)V

    .line 390
    return-void
.end method

.method public closeFolders()V
    .locals 4

    .prologue
    .line 694
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 695
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 696
    .local v0, frag:Landroid/app/Fragment;
    instance-of v3, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v3, :cond_0

    .line 697
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeFolders()V

    goto :goto_0

    .line 699
    .end local v2           #info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
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
    .line 868
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 873
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10b0001

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuView;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 876
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
    .line 861
    .local p1, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050007

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10b

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuView;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 864
    return-void
.end method

.method public enterAllStates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 597
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 598
    .local v0, appsTab:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 599
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/MenuView;->oldState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 600
    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_2

    .line 601
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #appsTab:Landroid/app/Fragment;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGridFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    .line 602
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    .line 604
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 611
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    .line 612
    .local v1, wdgtTab:Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_1

    .line 613
    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v1           #wdgtTab:Landroid/app/Fragment;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    .line 615
    :cond_1
    return-void

    .line 607
    .restart local v0       #appsTab:Landroid/app/Fragment;
    :cond_2
    instance-of v2, v0, Lcom/android/launcher2/MenuAppsListFragment;

    if-eqz v2, :cond_0

    .line 608
    check-cast v0, Lcom/android/launcher2/MenuAppsListFragment;

    .end local v0           #appsTab:Landroid/app/Fragment;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsListFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    goto :goto_0
.end method

.method public exitAllStates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 638
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 639
    .local v0, appsTab:Landroid/app/Fragment;
    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_2

    .line 640
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #appsTab:Landroid/app/Fragment;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGridFragment;->onHideTab(Lcom/android/launcher2/MenuView;)V

    .line 646
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    .line 647
    .local v1, wdgtTab:Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_1

    .line 648
    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v1           #wdgtTab:Landroid/app/Fragment;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onHideTab(Lcom/android/launcher2/MenuView;)V

    .line 651
    :cond_1
    return-void

    .line 642
    .restart local v0       #appsTab:Landroid/app/Fragment;
    :cond_2
    instance-of v2, v0, Lcom/android/launcher2/MenuAppsListFragment;

    if-eqz v2, :cond_0

    .line 643
    check-cast v0, Lcom/android/launcher2/MenuAppsListFragment;

    .end local v0           #appsTab:Landroid/app/Fragment;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsListFragment;->onHideTab(Lcom/android/launcher2/MenuView;)V

    goto :goto_0
.end method

.method public getCurrentFragment()Z
    .locals 3

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 717
    .local v0, isTabchanging:Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APPS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    const/4 v1, 0x1

    .line 721
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    const/high16 v0, 0x6

    .line 832
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TabHost;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getDownButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    return-object v0
.end method

.method public getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;
    .locals 4

    .prologue
    .line 630
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 631
    .local v0, appsTab:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    .line 632
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #appsTab:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    .line 634
    :goto_0
    return-object v1

    .restart local v0       #appsTab:Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenuOrMarketButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    return-object v0
.end method

.method public getMenuWidgets()Lcom/android/launcher2/MenuWidgets;
    .locals 4

    .prologue
    .line 618
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 619
    .local v0, wdgtTab:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    .line 620
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0           #wdgtTab:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    .line 622
    :goto_0
    return-object v1

    .restart local v0       #wdgtTab:Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;
    .locals 2
    .parameter "inflateIfNecessary"

    .prologue
    .line 704
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 705
    const v1, 0x7f0700a9

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 706
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/QuickViewMainMenu;

    iput-object v1, p0, Lcom/android/launcher2/MenuView;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    .line 708
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    return-object v1
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 4

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 433
    .local v0, frag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    .line 436
    :goto_0
    return-object v1

    .restart local v0       #frag:Landroid/app/Fragment;
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    goto :goto_0
.end method

.method public getTabManager()Lcom/android/launcher2/tabs/TabManager;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    return-object v0
.end method

.method public getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    return-object v0
.end method

.method public getViewType()Lcom/android/launcher2/MenuView$ViewType;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object v0
.end method

.method public getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 4

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 441
    .local v0, frag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    .line 444
    :goto_0
    return-object v1

    .restart local v0       #frag:Landroid/app/Fragment;
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    goto :goto_0
.end method

.method public hasSecretWidget()V
    .locals 0

    .prologue
    .line 1183
    return-void
.end method

.method public isCurrentTabAppGrid()Z
    .locals 2

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCurrentTabAppsTab()Z
    .locals 2

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCurrentTabWidgets()Z
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIDGETS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMenuExiting()Z
    .locals 3

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 726
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 727
    .local v0, isExiting:Z
    :goto_0
    return v0

    .line 726
    .end local v0           #isExiting:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 450
    .local v0, currentFragment:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    if-eqz v1, :cond_0

    .line 451
    check-cast v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    .end local v0           #currentFragment:Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/Launcher$HardwareKeys;->onBackPressed()Z

    move-result v1

    .line 453
    :goto_0
    return v1

    .restart local v0       #currentFragment:Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 13
    .parameter "newConfig"

    .prologue
    const/4 v12, 0x0

    .line 937
    sget-object v10, Lcom/android/launcher2/MenuView;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v11, "PhoneWindowManager_rotation"

    invoke-virtual {v10, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 938
    sget-object v10, Lcom/android/launcher2/MenuView;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v10}, Landroid/os/DVFSHelper;->acquire()V

    .line 940
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 942
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 943
    .local v3, r:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setupTabTitleBar()V

    .line 945
    const v10, 0x7f0c001e

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 946
    .local v8, tab_tm:I
    const v10, 0x7f0c0079

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 947
    .local v6, tab_lm:I
    const v10, 0x7f0c007a

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 949
    .local v7, tab_rm:I
    const v10, 0x7f0c007b

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 950
    .local v1, lm:I
    const v10, 0x7f0c007c

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 951
    .local v4, rm:I
    const v10, 0x7f0c0078

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 956
    .local v0, height:I
    const v10, 0x7f07009a

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 957
    .local v9, titleBar:Landroid/view/View;
    if-eqz v9, :cond_0

    .line 958
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 959
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 960
    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 961
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 962
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 963
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 964
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 966
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const v10, 0x7f0700a1

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 967
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 968
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 969
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 970
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 971
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 974
    const v10, 0x7f0700a2

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 975
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 976
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 977
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 978
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 979
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 982
    const v10, 0x7f0700a4

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 983
    if-nez v9, :cond_1

    .line 984
    const v10, 0x7f0700a3

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 985
    :cond_1
    if-eqz v9, :cond_2

    .line 986
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 987
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 988
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 989
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 990
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 994
    :cond_2
    const v10, 0x7f0700a6

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 995
    if-nez v9, :cond_3

    .line 996
    const v10, 0x7f0700a5

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 997
    :cond_3
    if-eqz v9, :cond_4

    .line 998
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 999
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1000
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1001
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1002
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1003
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1006
    :cond_4
    const v10, 0x7f0700a8

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1007
    if-nez v9, :cond_5

    .line 1008
    const v10, 0x7f0700a7

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1009
    :cond_5
    if-eqz v9, :cond_6

    .line 1010
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1011
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1012
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1013
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1014
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1019
    :cond_6
    const v10, 0x1020011

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1020
    .local v5, tabContentView:Landroid/view/View;
    if-eqz v5, :cond_7

    .line 1021
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1022
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1023
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1025
    :cond_7
    sget-object v10, Lcom/android/launcher2/MenuView;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v10}, Landroid/os/DVFSHelper;->release()V

    .line 1026
    return-void
.end method

.method public onExitAllApps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 585
    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->closeViewTypeDialog()V

    .line 586
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 587
    .local v0, appsTab:Landroid/app/Fragment;
    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_0

    .line 588
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #appsTab:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->onExitAllApps()V

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    .line 591
    .local v1, wdgtTab:Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_1

    .line 592
    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v1           #wdgtTab:Landroid/app/Fragment;
    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->onExitAllApps()V

    .line 594
    :cond_1
    return-void
.end method

.method public onFinishExitAllApps()V
    .locals 0

    .prologue
    .line 665
    return-void
.end method

.method public onFinishInflate()V
    .locals 12

    .prologue
    const v6, 0x7f07009e

    const v11, 0x7f070096

    const v10, 0x7f030051

    const v7, 0x1020013

    const/4 v9, 0x0

    .line 173
    invoke-super {p0}, Landroid/widget/TabHost;->onFinishInflate()V

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->setup()V

    .line 176
    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    .line 177
    const v5, 0x7f07009b

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    .line 178
    const v5, 0x7f07009c

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    .line 179
    const v5, 0x7f07009d

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    .line 180
    invoke-virtual {p0, v11}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    .line 181
    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 182
    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mDownloadedText:Ljava/lang/CharSequence;

    .line 183
    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/MenuView;->mDownloadedButtonDrawablePadding:I

    .line 186
    :cond_0
    const v5, 0x7f0700a0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 188
    .local v2, menuButton:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 189
    invoke-static {v2}, Lcom/android/launcher2/MenuView;->removeButton(Landroid/view/View;)V

    .line 190
    const v5, 0x7f07009f

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/MenuView;->removeButton(Landroid/view/View;)V

    .line 191
    invoke-virtual {p0, v6}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    .line 196
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 197
    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    sget-object v6, Lcom/android/launcher2/FocusHelper;->DOWNLOADED_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 199
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 200
    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    sget-object v6, Lcom/android/launcher2/FocusHelper;->DOWNLOADED_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 202
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setupTabTitleBar()V

    .line 203
    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v5, p0}, Lcom/android/launcher2/MenuTitleBarManager;->init(Lcom/android/launcher2/MenuView;)V

    .line 210
    const v5, 0x7f0700ab

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    .line 211
    const v5, 0x7f070099

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mMenuContainer:Landroid/view/View;

    .line 213
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 214
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    new-instance v5, Lcom/android/launcher2/tabs/TabManager;

    const v6, 0x1020011

    invoke-direct {v5, v1, p0, v6}, Lcom/android/launcher2/tabs/TabManager;-><init>(Landroid/app/Activity;Lcom/android/launcher2/MenuView;I)V

    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    .line 215
    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    .line 217
    .local v4, tabs:Landroid/widget/TabWidget;
    const-string v5, "layout_inflater"

    invoke-virtual {v1, v5}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 220
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, v10, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 221
    .local v3, tabView:Landroid/widget/TextView;
    const v5, 0x7f0e0020

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 222
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 223
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v5, "APPS"

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuView;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v5, v8, :cond_4

    const-class v5, Lcom/android/launcher2/MenuAppsListFragment;

    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/launcher2/tabs/TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {v0, v10, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .end local v3           #tabView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 231
    .restart local v3       #tabView:Landroid/widget/TextView;
    const v5, 0x7f0e0003

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 232
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 233
    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v6, "WIDGETS"

    invoke-virtual {p0, v6}, Lcom/android/launcher2/MenuView;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    const-class v7, Lcom/android/launcher2/MenuWidgetsFragment;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/launcher2/tabs/TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 236
    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    sget-object v6, Lcom/android/launcher2/FocusHelper;->APPS_CUSTOMIZE_TABKEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/tabs/TabManager;->setLastTabKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 239
    invoke-virtual {p0, v11}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    .line 240
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    .line 241
    return-void

    .line 193
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #launcher:Lcom/android/launcher2/Launcher;
    .end local v3           #tabView:Landroid/widget/TextView;
    .end local v4           #tabs:Landroid/widget/TabWidget;
    :cond_3
    iput-object v2, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    .line 194
    invoke-virtual {p0, v6}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    goto/16 :goto_0

    .line 223
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    .restart local v1       #launcher:Lcom/android/launcher2/Launcher;
    .restart local v3       #tabView:Landroid/widget/TextView;
    .restart local v4       #tabs:Landroid/widget/TabWidget;
    :cond_4
    const-class v5, Lcom/android/launcher2/MenuAppsGridFragment;

    goto :goto_1
.end method

.method public onHomePressed(Z)Z
    .locals 2
    .parameter "moveToDefaultScreen"

    .prologue
    .line 459
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    .line 460
    const/4 v1, 0x1

    .line 468
    :goto_0
    return v1

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 465
    .local v0, currentFragment:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    if-eqz v1, :cond_1

    .line 466
    check-cast v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    .end local v0           #currentFragment:Landroid/app/Fragment;
    invoke-interface {v0, p1}, Lcom/android/launcher2/Launcher$HardwareKeys;->onHomePressed(Z)Z

    move-result v1

    goto :goto_0

    .line 468
    .restart local v0       #currentFragment:Landroid/app/Fragment;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 1100
    const/4 v0, 0x0

    .line 1101
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1102
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    .line 1104
    invoke-static {}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->setAlpha()V

    .line 1107
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 880
    invoke-super/range {p0 .. p5}, Landroid/widget/TabHost;->onLayout(ZIIII)V

    .line 882
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getChildCount()I

    move-result v1

    .line 883
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 884
    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 885
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v4, :cond_0

    .line 887
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeView$LayoutParams;

    .line 888
    .local v3, lp:Lcom/android/launcher2/HomeView$LayoutParams;
    iget v4, v3, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v5, v3, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v6, v3, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 883
    .end local v3           #lp:Lcom/android/launcher2/HomeView$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 891
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1095
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 1096
    return-void
.end method

.method public onOptionSelectedDownload()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 500
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v2

    .line 504
    .local v2, enabled:Z
    if-nez v2, :cond_2

    .line 505
    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->showNoDownloadedAppsToastMessage()V

    goto :goto_0

    .line 509
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v5, "APPS"

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 510
    .local v0, appsTab:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.launcher2.prefs"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 511
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 512
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "MenuView.ViewType"

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 513
    instance-of v4, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 515
    const-string v4, "DONT_CHG_STATE_ON_PREDRAW"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 516
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 518
    sget-object v4, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 519
    sget-object v4, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 520
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 521
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    .line 522
    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuView;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    .line 524
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v5, "APPS"

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_0

    move-object v4, v0

    .line 526
    check-cast v4, Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v4, v5, v7}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    goto :goto_0

    .line 528
    :cond_4
    instance-of v4, v0, Lcom/android/launcher2/MenuAppsListFragment;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 530
    const-string v4, "DONT_CHG_STATE_ON_PREDRAW"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 531
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 533
    sget-object v4, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 534
    sget-object v4, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 535
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 536
    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuView;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    .line 537
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    .line 538
    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v5, "APPS"

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 546
    :goto_1
    if-eqz v0, :cond_0

    move-object v4, v0

    .line 547
    check-cast v4, Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v4, v5, v7}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    goto/16 :goto_0

    .line 540
    :cond_5
    sget-object v4, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 541
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 542
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    .line 543
    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuView;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    .line 544
    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v5, "APPS"

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_1
.end method

.method public onOptionSelectedSearch()V
    .locals 4

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 473
    .local v0, frag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    .line 474
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onOptionSelectedSearch(Lcom/android/launcher2/MenuView;)V

    .line 476
    :cond_0
    return-void
.end method

.method public onOptionSelectedUninstall()V
    .locals 4

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 481
    .local v0, frag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    .line 482
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onOptionSelectedUninstall(Lcom/android/launcher2/MenuView;)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_2

    .line 486
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 488
    :cond_2
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 804
    instance-of v2, p1, Lcom/android/launcher2/MenuView$SavedState;

    if-nez v2, :cond_0

    .line 805
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 822
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 810
    check-cast v1, Lcom/android/launcher2/MenuView$SavedState;

    .line 811
    .local v1, ss:Lcom/android/launcher2/MenuView$SavedState;
    invoke-virtual {v1}, Lcom/android/launcher2/MenuView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 812
    const/4 v0, 0x0

    .line 814
    .local v0, prevTag:Ljava/lang/String;
    iget-object v2, v1, Lcom/android/launcher2/MenuView$SavedState;->extraTabTab:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 815
    iget-object v0, v1, Lcom/android/launcher2/MenuView$SavedState;->extraTabTab:Ljava/lang/String;

    .line 818
    :cond_1
    if-nez v0, :cond_2

    .line 819
    const-string v0, "APPS"

    .line 821
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuView;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 793
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 794
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/launcher2/MenuView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 796
    .local v0, ss:Lcom/android/launcher2/MenuView$SavedState;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher2/MenuView$SavedState;->extraTabTab:Ljava/lang/String;

    .line 797
    return-object v0
.end method

.method public onShowAllApps()V
    .locals 3

    .prologue
    .line 557
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_1

    .line 558
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/MenuView;->onShowAllAppsClicked:Z

    .line 559
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 560
    .local v0, currentFragment:Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIDGETS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0           #currentFragment:Landroid/app/Fragment;
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 571
    :goto_0
    const-string v1, "APPS"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 577
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 578
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->enterAllStates()V

    .line 579
    return-void

    .line 569
    .restart local v0       #currentFragment:Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/MenuView;->onShowAllAppsClicked:Z

    goto :goto_0

    .line 573
    .end local v0           #currentFragment:Landroid/app/Fragment;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->attachFragments()V

    goto :goto_1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    const/4 v3, 0x0

    .line 750
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onVisibilityChanged(Landroid/view/View;I)V

    .line 752
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 753
    .local v0, hidden:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 754
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v1, v3}, Lcom/android/launcher2/Launcher;->setTransitionToAllApps(Z)V

    .line 757
    :cond_0
    return-void

    .end local v0           #hidden:Z
    .end local v1           #launcher:Lcom/android/launcher2/Launcher;
    :cond_1
    move v0, v3

    .line 752
    goto :goto_0
.end method

.method public packagesChanged(Z)V
    .locals 4
    .parameter "appModelUpdated"

    .prologue
    .line 355
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 356
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 357
    .local v0, frag:Landroid/app/Fragment;
    if-eqz p1, :cond_1

    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_1

    .line 358
    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appModelUpdated()V

    goto :goto_0

    .line 359
    .restart local v0       #frag:Landroid/app/Fragment;
    :cond_1
    instance-of v3, v0, Lcom/android/launcher2/MenuView$PackageNotifications;

    if-eqz v3, :cond_0

    .line 360
    check-cast v0, Lcom/android/launcher2/MenuView$PackageNotifications;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/android/launcher2/MenuView$PackageNotifications;->packagesChanged()V

    goto :goto_0

    .line 363
    .end local v2           #info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    .line 364
    return-void
.end method

.method public releaseShadows()V
    .locals 4

    .prologue
    .line 408
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    .line 409
    .local v0, frag:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 410
    check-cast v1, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 411
    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->releaseShadows()V

    .line 413
    :cond_0
    return-void
.end method

.method public selectAppsTab()V
    .locals 5

    .prologue
    .line 272
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1

    .line 273
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "add_widgets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 281
    .local v0, currentFragment:Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIDGETS"

    if-ne v2, v3, :cond_2

    move-object v2, v0

    .line 283
    check-cast v2, Lcom/android/launcher2/MenuWidgetsFragment;

    sget-object v3, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 285
    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v0           #currentFragment:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    .line 286
    .local v1, mw:Lcom/android/launcher2/MenuWidgets;
    if-eqz v1, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V

    .line 290
    .end local v1           #mw:Lcom/android/launcher2/MenuWidgets;
    :cond_2
    const-string v2, "APPS"

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuView;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectWidgetsTab()V
    .locals 2

    .prologue
    .line 262
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "add_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v0, "WIDGETS"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuView;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDownloadIconEnabled()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 244
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v1

    .line 245
    .local v1, enabled:Z
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 250
    if-eqz v1, :cond_2

    .line 251
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 254
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_3

    const v2, 0x7f080005

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 255
    .local v0, color:I
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    .end local v0           #color:I
    :cond_1
    return-void

    .line 253
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 254
    :cond_3
    const v2, 0x7f080006

    goto :goto_1
.end method

.method public setSecretAvailableWidgets(Ljava/util/List;Z)V
    .locals 8
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
    .line 1131
    .local p1, secretList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v7, "WIDGETS"

    invoke-virtual {v6, v7}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 1132
    .local v5, widgetsFrag:Landroid/app/Fragment;
    instance-of v6, v5, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v6, :cond_3

    .line 1133
    check-cast v5, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v5           #widgetsFrag:Landroid/app/Fragment;
    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v3

    .line 1134
    .local v3, mw:Lcom/android/launcher2/MenuWidgets;
    if-nez v3, :cond_2

    .line 1135
    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppModel;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    .line 1136
    .local v1, aw:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .line 1137
    .local v0, a:Lcom/android/launcher2/AvailableWidget;
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getWidgetPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1138
    .local v4, pkgName:Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1139
    if-eqz p2, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-interface {v0, v6}, Lcom/android/launcher2/AvailableWidget;->setSecret(Z)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1142
    .end local v0           #a:Lcom/android/launcher2/AvailableWidget;
    .end local v1           #aw:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, p1, p2}, Lcom/android/launcher2/MenuWidgets;->setSecretAvailableWidget(Ljava/util/List;Z)V

    .line 1145
    .end local v3           #mw:Lcom/android/launcher2/MenuWidgets;
    :cond_3
    return-void
.end method

.method public setSecretWidgetByFiltering()V
    .locals 4

    .prologue
    .line 1148
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1149
    .local v1, widgetsFrag:Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_0

    .line 1150
    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    .end local v1           #widgetsFrag:Landroid/app/Fragment;
    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    .line 1151
    .local v0, mw:Lcom/android/launcher2/MenuWidgets;
    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->initSecretItemOffset()V

    .line 1153
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->updateAvailableWidget()V

    .line 1154
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    .line 1155
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuWidgets;->refreshQuickViewMenuWidget(Z)V

    .line 1158
    .end local v0           #mw:Lcom/android/launcher2/MenuWidgets;
    :cond_0
    return-void
.end method

.method public setViewType(Lcom/android/launcher2/MenuView$ViewType;)V
    .locals 6
    .parameter "viewType"

    .prologue
    .line 296
    const-string v3, "MenuView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setViewType. old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v3, p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.launcher2.prefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 304
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 305
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "MenuView.ViewType"

    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 308
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sput-object v3, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 310
    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setAppNormalizer()V

    .line 312
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    if-eqz v3, :cond_0

    .line 314
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v4, "APPS"

    invoke-virtual {v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 315
    .local v1, frag:Landroid/app/Fragment;
    sget-object v3, Lcom/android/launcher2/MenuView$2;->$SwitchMap$com$android$launcher2$MenuView$ViewType:[I

    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView$ViewType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 318
    :pswitch_0
    instance-of v3, v1, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v3, :cond_2

    .line 319
    check-cast v1, Lcom/android/launcher2/MenuAppsGridFragment;

    .end local v1           #frag:Landroid/app/Fragment;
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    goto :goto_0

    .line 321
    .restart local v1       #frag:Landroid/app/Fragment;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v4, "APPS"

    const-class v5, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/tabs/TabManager;->changeTabFragment(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 326
    :pswitch_1
    instance-of v3, v1, Lcom/android/launcher2/MenuAppsListFragment;

    if-nez v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v4, "APPS"

    const-class v5, Lcom/android/launcher2/MenuAppsListFragment;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/tabs/TabManager;->changeTabFragment(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
