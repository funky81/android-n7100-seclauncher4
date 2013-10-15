.class public Lcom/android/launcher2/AddToHomescreenDialogFragment;
.super Landroid/app/DialogFragment;
.source "AddToHomescreenDialogFragment.java"


# static fields
.field private static final sFragmentTag:Ljava/lang/String; = "AddToHomescreen"

.field static setWallpaperSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/AddToHomescreenDialogFragment;->setWallpaperSelected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;-><init>()V

    .line 59
    .local v0, f:Lcom/android/launcher2/AddToHomescreenDialogFragment;
    const-string v1, "AddToHomescreen"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    .line 67
    const-string v1, "AddToHomescreen"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 68
    .local v0, dialog:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 71
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .parameter "manager"

    .prologue
    .line 63
    const-string v0, "AddToHomescreen"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 82
    .local v6, c:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher;

    .line 83
    .local v11, launcher:Lcom/android/launcher2/Launcher;
    const v18, 0x7f030006

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v6, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 85
    .local v12, layout:Landroid/view/View;
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/launcher2/AddToHomescreenDialogFragment;->setWallpaperSelected:Z

    .line 87
    const v18, 0x7f070025

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 88
    .local v16, up_pointer:Landroid/widget/ImageView;
    if-eqz v16, :cond_0

    .line 89
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->bringToFront()V

    .line 91
    :cond_0
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v5, builder:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0e0018

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v5, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 97
    .local v8, dialog:Landroid/app/Dialog;
    sget-boolean v18, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v18, :cond_1

    .line 98
    const-string v18, "change_wallpaper"

    sget-object v19, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 99
    const/16 v18, 0x2

    sput v18, Lcom/android/launcher2/Launcher;->changeWallpaperStatus:I

    .line 100
    const v18, 0x7f070022

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 101
    .local v9, guide_hand:Landroid/widget/RelativeLayout;
    if-eqz v9, :cond_1

    .line 103
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    const v18, 0x7f070023

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 105
    .local v14, mGoalAnimationView:Landroid/widget/ImageView;
    new-instance v4, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    invoke-direct {v4, v11, v14}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 106
    .local v4, animdialog:Lcom/android/launcher2/guide/HelpAnimatedDialog;
    const v18, 0x7f070024

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 107
    .local v15, textBox:Landroid/widget/RelativeLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    .line 108
    const v18, 0x3f19999a

    const v19, 0x3dcccccd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1, v15}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    .line 114
    .end local v4           #animdialog:Lcom/android/launcher2/guide/HelpAnimatedDialog;
    .end local v9           #guide_hand:Landroid/widget/RelativeLayout;
    .end local v14           #mGoalAnimationView:Landroid/widget/ImageView;
    .end local v15           #textBox:Landroid/widget/RelativeLayout;
    :cond_1
    sget-boolean v18, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v18, :cond_2

    .line 115
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 117
    :cond_2
    iget-object v0, v11, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v17

    .line 118
    .local v17, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v18

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    const/4 v7, 0x1

    .line 131
    .local v7, canCreatePage:Z
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v10, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Launcher_CustomAddToHomeDialog"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e000f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :goto_1
    sget-boolean v18, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v18, :cond_3

    .line 157
    const v18, 0x7f070027

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 158
    const v18, 0x7f070029

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    new-instance v19, Lcom/android/launcher2/AddToHomescreenDialogFragment$3;

    invoke-direct/range {v19 .. v20}, Lcom/android/launcher2/AddToHomescreenDialogFragment$3;-><init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0014

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0015

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    if-eqz v7, :cond_4

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e0016

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenSmall()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 177
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v18, 0x1090003

    move/from16 v0, v18

    invoke-direct {v3, v6, v0, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 181
    .local v3, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_2
    const v18, 0x7f070021

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 182
    .local v13, lv:Landroid/widget/ListView;
    invoke-virtual {v13, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    sget-boolean v18, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v18, :cond_a

    .line 185
    sget-object v18, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v19, "change_wallpaper"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 186
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 187
    new-instance v18, Lcom/android/launcher2/AddToHomescreenDialogFragment$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/AddToHomescreenDialogFragment$4;-><init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 203
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Launcher_CustomAddToHomeDialog"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 204
    new-instance v18, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v11, v2}, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;-><init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Workspace;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 302
    :cond_5
    :goto_4
    return-object v8

    .line 118
    .end local v3           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v7           #canCreatePage:Z
    .end local v10           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #lv:Landroid/widget/ListView;
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 135
    .restart local v7       #canCreatePage:Z
    .restart local v10       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    const v18, 0x7f07001f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    new-instance v19, Lcom/android/launcher2/AddToHomescreenDialogFragment$1;

    invoke-direct/range {v19 .. v20}, Lcom/android/launcher2/AddToHomescreenDialogFragment$1;-><init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v18, 0x7f07001f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    new-instance v19, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;

    invoke-direct/range {v19 .. v20}, Lcom/android/launcher2/AddToHomescreenDialogFragment$2;-><init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    .line 179
    :cond_8
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v18, 0x7f030001

    move/from16 v0, v18

    invoke-direct {v3, v6, v0, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .restart local v3       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    goto/16 :goto_2

    .line 196
    .restart local v13       #lv:Landroid/widget/ListView;
    :cond_9
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    goto :goto_3

    .line 200
    :cond_a
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    goto :goto_3

    .line 254
    :cond_b
    sget-boolean v18, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v18, :cond_5

    .line 255
    new-instance v18, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v11, v2}, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;-><init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Workspace;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_4
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 309
    .local v0, launcher:Lcom/android/launcher2/Launcher;
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/AddToHomescreenDialogFragment;->setWallpaperSelected:Z

    if-nez v1, :cond_0

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    .line 313
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->dismiss()V

    .line 315
    :cond_1
    return-void
.end method
