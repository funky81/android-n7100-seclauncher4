.class public Lcom/android/launcher2/guide/ChangeWallpaperGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "ChangeWallpaperGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ChangeWallpaperGuider"

.field public static isChangeWallpaperDialogVisible:Z

.field static layout:Landroid/view/ViewGroup;

.field static menuLayout:Landroid/view/View;


# instance fields
.field private mGoalAnimationView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialogVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 50
    const-string v0, "ChangeWallpaperGuider"

    const-string v1, "ChangeWallpaperGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 5

    .prologue
    .line 120
    sget-boolean v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialogVisible:Z

    if-nez v3, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 126
    .local v2, homeView:Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 127
    .local v0, act:Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 128
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    .line 129
    sget-object v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 130
    .local v1, childcount:I
    sget-object v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 131
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialogVisible:Z

    goto :goto_0
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 140
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->dismissHelpDialog()V

    .line 107
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 110
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->showHelpDialog()V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showCompleteDialog()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->showCompleteDialog()V

    return-void
.end method

.method public showHelpDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 55
    sget-boolean v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialogVisible:Z

    if-eqz v6, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    sput v8, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 61
    .local v2, homeView:Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 62
    .local v0, act:Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 63
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    .line 64
    const-string v6, "layout_inflater"

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 65
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f03000e

    sget-object v7, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->menuLayout:Landroid/view/View;

    .line 66
    sput v8, Lcom/android/launcher2/Launcher;->changeWallpaperStatus:I

    .line 67
    sget-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f070025

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 68
    .local v5, up_pointer:Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->bringToFront()V

    .line 70
    sget-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f07003a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->mGoalAnimationView:Landroid/view/View;

    .line 71
    new-instance v1, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    iget-object v6, p0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->mGoalAnimationView:Landroid/view/View;

    invoke-direct {v1, v0, v6}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 72
    .local v1, animdialog:Lcom/android/launcher2/guide/HelpAnimatedDialog;
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    .line 73
    sput-boolean v8, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialogVisible:Z

    .line 74
    sget-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f070024

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 75
    .local v4, textBox:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    .line 76
    const v6, 0x3f19999a

    const v7, 0x3dcccccd

    invoke-virtual {v1, v6, v7, v4}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto :goto_0
.end method
