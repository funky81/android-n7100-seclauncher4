.class public Lcom/android/launcher2/guide/ViewAppsGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "ViewAppsGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewAppsGuider"

.field static image:Landroid/widget/ImageView;

.field static layout:Landroid/view/ViewGroup;

.field static menuLayout:Landroid/view/View;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mGoalAnimationView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 51
    iput-object p1, p0, Lcom/android/launcher2/guide/ViewAppsGuider;->mActivity:Landroid/app/Activity;

    .line 52
    const-string v0, "ViewAppsGuider"

    const-string v1, "Viewappsguider"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method private isPortOrientation()Z
    .locals 4

    .prologue
    .line 342
    iget-object v2, p0, Lcom/android/launcher2/guide/ViewAppsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 343
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    .line 344
    .local v1, isPortOrientation:Z
    :goto_0
    return v1

    .line 343
    .end local v1           #isPortOrientation:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 5

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 92
    .local v0, act:Landroid/app/Activity;
    sget-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-nez v3, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    .line 94
    .local v2, homeView:Lcom/android/launcher2/HomeView;
    if-eqz v2, :cond_2

    .line 95
    check-cast v0, Lcom/android/launcher2/Launcher;

    .end local v0           #act:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    .line 96
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    .line 97
    sget-object v3, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    .line 108
    .end local v2           #homeView:Lcom/android/launcher2/HomeView;
    :goto_0
    return-void

    .line 100
    .restart local v2       #homeView:Lcom/android/launcher2/HomeView;
    :cond_0
    sget-object v3, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 101
    .local v1, childcount:I
    if-eqz v1, :cond_1

    .line 102
    sget-object v3, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 104
    :cond_1
    const/4 v3, 0x0

    sput-object v3, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    .line 107
    .end local v1           #childcount:I
    .end local v2           #homeView:Lcom/android/launcher2/HomeView;
    :cond_2
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    goto :goto_0
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 113
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->dismissHelpDialog()V

    .line 77
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 80
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->showHelpDialog()V

    goto :goto_0

    .line 77
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
    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showCompleteDialog()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->showCompleteDialog()V

    return-void
.end method

.method public showHelpDialog()V
    .locals 28

    .prologue
    .line 116
    const/16 v25, 0x1

    sput v25, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 117
    const/4 v13, 0x0

    .line 125
    .local v13, noOfHotSeatItems:I
    const/16 v25, 0x0

    sput-boolean v25, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v8

    .line 127
    .local v8, homeView:Lcom/android/launcher2/HomeView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    .line 128
    .local v4, act:Landroid/app/Activity;
    if-eqz v8, :cond_1

    .line 129
    invoke-static {v4}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v25

    sput-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    .line 130
    const-string v25, "layout_inflater"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 131
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v25, 0x7f030018

    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    const/16 v27, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    sput-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    .line 133
    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 134
    .local v19, resources:Landroid/content/res/Resources;
    const v25, 0x7f0c0112

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 136
    .local v21, textBottomMargin:I
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v26, 0x7f07003b

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    sput-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    .line 137
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v26, 0x7f07003b

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/guide/ViewAppsGuider;->mGoalAnimationView:Landroid/view/View;

    .line 138
    new-instance v5, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/guide/ViewAppsGuider;->mGoalAnimationView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v5, v4, v0}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 139
    .local v5, animdialog:Lcom/android/launcher2/guide/HelpAnimatedDialog;
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v26, 0x7f07003d

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 141
    .local v15, pointerImage:Landroid/widget/ImageView;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v10, lpimage:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v11, lppointer:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v26, 0x7f070026

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 149
    .local v7, helpText:Landroid/widget/TextView;
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v12, lptext:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getHotseatItemcount()I

    move-result v13

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->isPortOrientation()Z

    move-result v25

    if-nez v25, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v25, v0

    const/16 v26, 0x320

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    .line 154
    :cond_0
    const v25, 0x7f0c0111

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 155
    .local v6, bottommargin:I
    const v25, 0x7f0c0113

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 156
    .local v14, pointerBottomMargin:I
    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    packed-switch v13, :pswitch_data_0

    .line 324
    .end local v6           #bottommargin:I
    .end local v14           #pointerBottomMargin:I
    :goto_0
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v26, 0x7f070024

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 325
    .local v22, textBox:Landroid/widget/RelativeLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    .line 326
    const v25, 0x3f4ccccd

    const v26, 0x3f4ccccd

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    .line 330
    .end local v5           #animdialog:Lcom/android/launcher2/guide/HelpAnimatedDialog;
    .end local v7           #helpText:Landroid/widget/TextView;
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    .end local v10           #lpimage:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11           #lppointer:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12           #lptext:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15           #pointerImage:Landroid/widget/ImageView;
    .end local v19           #resources:Landroid/content/res/Resources;
    .end local v21           #textBottomMargin:I
    .end local v22           #textBox:Landroid/widget/RelativeLayout;
    :cond_1
    return-void

    .line 160
    .restart local v5       #animdialog:Lcom/android/launcher2/guide/HelpAnimatedDialog;
    .restart local v6       #bottommargin:I
    .restart local v7       #helpText:Landroid/widget/TextView;
    .restart local v9       #inflater:Landroid/view/LayoutInflater;
    .restart local v10       #lpimage:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v11       #lppointer:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v12       #lptext:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v14       #pointerBottomMargin:I
    .restart local v15       #pointerImage:Landroid/widget/ImageView;
    .restart local v19       #resources:Landroid/content/res/Resources;
    .restart local v21       #textBottomMargin:I
    :pswitch_0
    const-string v25, "ViewAppsGuider"

    const-string v26, "HotSeatItems Cannot be null"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :pswitch_1
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v25, v0

    const/16 v26, 0x258

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_2

    .line 163
    const v25, 0x7f0c01da

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 164
    .local v23, textRightMargin:I
    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 165
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 166
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .end local v23           #textRightMargin:I
    :cond_2
    const v25, 0x7f0c011d

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 169
    .local v16, pointerRightMargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 170
    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    const v25, 0x7f0c011c

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 172
    .local v20, rightmargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 173
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 176
    .end local v16           #pointerRightMargin:I
    .end local v20           #rightmargin:I
    :pswitch_2
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v25, v0

    const/16 v26, 0x320

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_3

    .line 177
    const v25, 0x7f0c01d9

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 178
    .restart local v23       #textRightMargin:I
    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 179
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 180
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .end local v23           #textRightMargin:I
    :cond_3
    const v25, 0x7f0c011b

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 183
    .restart local v16       #pointerRightMargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 184
    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    const v25, 0x7f0c011a

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 186
    .restart local v20       #rightmargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 187
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 190
    .end local v16           #pointerRightMargin:I
    .end local v20           #rightmargin:I
    :pswitch_3
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v25, v0

    const/16 v26, 0x320

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    .line 191
    const v25, 0x7f0c0206

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 192
    .restart local v23       #textRightMargin:I
    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 193
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .end local v23           #textRightMargin:I
    :cond_4
    const v25, 0x7f0c0119

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 197
    .restart local v16       #pointerRightMargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 198
    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    const v25, 0x7f0c0118

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 200
    .restart local v20       #rightmargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 201
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 204
    .end local v16           #pointerRightMargin:I
    .end local v20           #rightmargin:I
    :pswitch_4
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v25, v0

    const/16 v26, 0x320

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_5

    .line 205
    const v25, 0x7f0c0206

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 206
    .restart local v23       #textRightMargin:I
    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 207
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 208
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    .end local v23           #textRightMargin:I
    :cond_5
    const v25, 0x7f0c0117

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 211
    .restart local v16       #pointerRightMargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 212
    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    const v25, 0x7f0c0116

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 214
    .restart local v20       #rightmargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 215
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 218
    .end local v16           #pointerRightMargin:I
    .end local v20           #rightmargin:I
    :pswitch_5
    const v25, 0x7f0c0115

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 219
    .restart local v16       #pointerRightMargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 220
    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    const v25, 0x7f0c0114

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 222
    .restart local v20       #rightmargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 223
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 226
    .end local v16           #pointerRightMargin:I
    .end local v20           #rightmargin:I
    :pswitch_6
    const v25, 0x7f0c01dc

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 227
    .restart local v16       #pointerRightMargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 228
    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    const v25, 0x7f0c01db

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 230
    .restart local v20       #rightmargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 231
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 234
    .end local v16           #pointerRightMargin:I
    .end local v20           #rightmargin:I
    :pswitch_7
    const v25, 0x7f0c0205

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 235
    .restart local v16       #pointerRightMargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 236
    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    const v25, 0x7f0c0204

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 238
    .restart local v20       #rightmargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 239
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 242
    .end local v16           #pointerRightMargin:I
    .end local v20           #rightmargin:I
    :pswitch_8
    const v25, 0x7f0c0203

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 243
    .restart local v16       #pointerRightMargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 244
    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    const v25, 0x7f0c0202

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 246
    .restart local v20       #rightmargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 247
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 253
    .end local v6           #bottommargin:I
    .end local v14           #pointerBottomMargin:I
    .end local v16           #pointerRightMargin:I
    .end local v20           #rightmargin:I
    :cond_6
    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 254
    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 255
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v26, 0x7f070024

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    .line 257
    .local v18, pointerViewLayout:Landroid/widget/RelativeLayout;
    packed-switch v13, :pswitch_data_1

    goto/16 :goto_0

    .line 260
    :pswitch_9
    const-string v25, "ViewAppsGuider"

    const-string v26, "HotSeatItems Cannot be null"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :pswitch_a
    const v25, 0x7f0c01f5

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 263
    .local v24, topMargin:I
    const v25, 0x7f0c011d

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 264
    .restart local v16       #pointerRightMargin:I
    const v25, 0x7f0c01fb

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 265
    .local v17, pointerTopMargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 266
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    const v25, 0x7f0c011c

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 268
    .restart local v20       #rightmargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 272
    .end local v16           #pointerRightMargin:I
    .end local v17           #pointerTopMargin:I
    .end local v20           #rightmargin:I
    .end local v24           #topMargin:I
    :pswitch_b
    const v25, 0x7f0c01f6

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 273
    .restart local v24       #topMargin:I
    const v25, 0x7f0c011b

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 274
    .restart local v16       #pointerRightMargin:I
    const v25, 0x7f0c01fc

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 275
    .restart local v17       #pointerTopMargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 276
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    const v25, 0x7f0c011a

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 278
    .restart local v20       #rightmargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 279
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 282
    .end local v16           #pointerRightMargin:I
    .end local v17           #pointerTopMargin:I
    .end local v20           #rightmargin:I
    .end local v24           #topMargin:I
    :pswitch_c
    const v25, 0x7f0c01f7

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 283
    .restart local v24       #topMargin:I
    const v25, 0x7f0c0119

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 284
    .restart local v16       #pointerRightMargin:I
    const v25, 0x7f0c01fd

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 285
    .restart local v17       #pointerTopMargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 286
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    const v25, 0x7f0c0118

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 288
    .restart local v20       #rightmargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 289
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 292
    .end local v16           #pointerRightMargin:I
    .end local v17           #pointerTopMargin:I
    .end local v20           #rightmargin:I
    .end local v24           #topMargin:I
    :pswitch_d
    const v25, 0x7f0c01f8

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 293
    .restart local v24       #topMargin:I
    const v25, 0x7f0c0117

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 294
    .restart local v16       #pointerRightMargin:I
    const v25, 0x7f0c01fe

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 295
    .restart local v17       #pointerTopMargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 296
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    const v25, 0x7f0c0116

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 298
    .restart local v20       #rightmargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 299
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 302
    .end local v16           #pointerRightMargin:I
    .end local v17           #pointerTopMargin:I
    .end local v20           #rightmargin:I
    .end local v24           #topMargin:I
    :pswitch_e
    const v25, 0x7f0c01f9

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 303
    .restart local v24       #topMargin:I
    const v25, 0x7f0c0115

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 304
    .restart local v16       #pointerRightMargin:I
    const v25, 0x7f0c01ff

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 305
    .restart local v17       #pointerTopMargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 306
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    const v25, 0x7f0c0114

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 308
    .restart local v20       #rightmargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 309
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 312
    .end local v16           #pointerRightMargin:I
    .end local v17           #pointerTopMargin:I
    .end local v20           #rightmargin:I
    .end local v24           #topMargin:I
    :pswitch_f
    const v25, 0x7f0c01fa

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 313
    .restart local v24       #topMargin:I
    const v25, 0x7f0c01dc

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 314
    .restart local v16       #pointerRightMargin:I
    const v25, 0x7f0c0200

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 315
    .restart local v17       #pointerTopMargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 316
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    const v25, 0x7f0c01db

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 318
    .restart local v20       #rightmargin:I
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 319
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 257
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
