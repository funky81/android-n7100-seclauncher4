.class public final Lcom/android/launcher2/MenuWidgetsFragment;
.super Landroid/app/Fragment;
.source "MenuWidgetsFragment.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/MenuView$PackageNotifications;
.implements Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;
.implements Lcom/android/launcher2/MenuView$NeedsTabHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuWidgetsFragment$2;
    }
.end annotation


# static fields
.field private static final WIDGET_SAVED_STATE:Ljava/lang/String; = "WIDGET_SAVED_STATE"

.field private static final WIDGET_STATE_BUNDLE:Ljava/lang/String; = "WIDGET_STATE_BUNDLE"

.field private static cpuBooster:Landroid/os/DVFSHelper;


# instance fields
.field private mIsPaused:Z

.field private mPendingPackageUpdate:Z

.field private mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

.field private mWidgetStateBundle:Landroid/os/Bundle;

.field private mWidgets:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/MenuWidgetsFragment;->cpuBooster:Landroid/os/DVFSHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingPackageUpdate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuWidgetsFragment;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method private updatePinchListener()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/mainmenu/PinchLayerView;->setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/mainmenu/PinchLayerView;->setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    .line 227
    .local v0, oldState:Lcom/android/launcher2/MenuWidgets$WidgetState;
    if-eq p1, v0, :cond_0

    .line 228
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    .line 229
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->updatePinchListener()V

    .line 230
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->setSearchString(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher2/MenuWidgets;->handleWidgetStateChange(Lcom/android/launcher2/MenuWidgets$WidgetState;Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 235
    :cond_0
    return-void
.end method

.method public getMenuWidgets()Lcom/android/launcher2/MenuWidgets;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    return-object v0
.end method

.method public getTabHost()Lcom/android/launcher2/MenuView;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method public getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-nez v1, :cond_0

    .line 159
    :goto_0
    :pswitch_0
    return v0

    .line 144
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuWidgetsFragment$2;->$SwitchMap$com$android$launcher2$MenuWidgets$WidgetState:[I

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets$WidgetState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 156
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 159
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-nez v0, :cond_1

    .line 151
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    goto :goto_1

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->exitWithAnimation()V

    goto :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 55
    const v1, 0x7f030047

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/mainmenu/PinchLayerView;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    .line 57
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const v2, 0x7f0700ac

    invoke-virtual {v1, v2}, Lcom/android/launcher2/mainmenu/PinchLayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuWidgets;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    .line 59
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getCpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/MenuWidgetsFragment;->cpuBooster:Landroid/os/DVFSHelper;

    .line 60
    sget-object v1, Lcom/android/launcher2/MenuWidgetsFragment;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v2, "Launcher_touch"

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcom/android/launcher2/MenuWidgetsFragment;->cpuBooster:Landroid/os/DVFSHelper;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 63
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsFragment(Lcom/android/launcher2/MenuWidgetsFragment;)V

    .line 65
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const-string v2, "onCreateView"

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 68
    :cond_0
    if-eqz p3, :cond_4

    .line 69
    const-string v1, "WIDGET_SAVED_STATE"

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, widgetSavedState:I
    if-ne v3, v0, :cond_3

    .line 71
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    .line 75
    :goto_0
    const-string v1, "WIDGET_STATE_BUNDLE"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    .line 76
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    .line 82
    .end local v0           #widgetSavedState:I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->setTabHost(Lcom/android/launcher2/MenuView;)V

    .line 86
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->updatePinchListener()V

    .line 87
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    .line 88
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    return-object v1

    .line 73
    .restart local v0       #widgetSavedState:I
    :cond_3
    invoke-static {}, Lcom/android/launcher2/MenuWidgets$WidgetState;->values()[Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    goto :goto_0

    .line 78
    .end local v0           #widgetSavedState:I
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-nez v1, :cond_1

    .line 79
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 98
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->onHideTab(Lcom/android/launcher2/MenuView;)V

    .line 99
    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    .line 100
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const-string v1, "onDestroyView"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->cleanupCache(Ljava/lang/String;)V

    .line 101
    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    .line 102
    return-void
.end method

.method public onExitAllApps()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    .line 165
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    .line 166
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    .line 171
    :cond_1
    return-void
.end method

.method public onHideTab(Lcom/android/launcher2/MenuView;)V
    .locals 0
    .parameter "tabHost"

    .prologue
    .line 284
    return-void
.end method

.method public onHomePressed(Z)Z
    .locals 2
    .parameter "moveToDefaultScreen"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    .line 176
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->dismiss(Landroid/app/FragmentManager;)V

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionSelectedSearch(Lcom/android/launcher2/MenuView;)V
    .locals 1
    .parameter "tabHost"

    .prologue
    .line 128
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 129
    return-void
.end method

.method public onOptionSelectedUninstall(Lcom/android/launcher2/MenuView;)V
    .locals 1
    .parameter "tabHost"

    .prologue
    .line 132
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 133
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    .line 289
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 290
    return-void
.end method

.method public onPinch()Z
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getCurrentFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    .line 109
    :cond_1
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 110
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iput-boolean v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    .line 295
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 297
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    .line 303
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingPackageUpdate:Z

    if-eqz v0, :cond_1

    .line 304
    iput-boolean v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingPackageUpdate:Z

    .line 305
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->packagesChanged()V

    .line 307
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 211
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "WIDGET_SAVED_STATE"

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    .line 215
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    .line 216
    const-string v0, "WIDGET_STATE_BUNDLE"

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 219
    :cond_0
    return-void
.end method

.method public onShowTab(Lcom/android/launcher2/MenuView;)V
    .locals 2
    .parameter "tabHost"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-static {}, Lcom/android/launcher2/Launcher;->isOptionMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuWidgetsFragment$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgetsFragment$1;-><init>(Lcom/android/launcher2/MenuWidgetsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 280
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 116
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->onStop()V

    .line 117
    :cond_0
    return-void
.end method

.method public packagesChanged()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 199
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingPackageUpdate:Z

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->packagesChanged()V

    goto :goto_0
.end method

.method public refreshWidgetStateModel()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->refreshWidgetStateModel(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 241
    :cond_0
    return-void
.end method

.method public refreshWidgetStateView()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->refreshWidgetStateView(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 247
    :cond_0
    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 1
    .parameter "tabHost"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    .line 122
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets;->setTabHost(Lcom/android/launcher2/MenuView;)V

    .line 125
    :cond_0
    return-void
.end method
