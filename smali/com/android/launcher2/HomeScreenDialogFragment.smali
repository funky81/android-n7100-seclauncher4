.class public Lcom/android/launcher2/HomeScreenDialogFragment;
.super Landroid/app/DialogFragment;
.source "HomeScreenDialogFragment.java"


# static fields
.field static homescreenSelected:Z = false

.field public static isHomeScreenDialogVisible:Z = false

.field private static final sFragmentTag:Ljava/lang/String; = "Homescreen"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Lcom/android/launcher2/HomeScreenDialogFragment;->homescreenSelected:Z

    .line 50
    sput-boolean v0, Lcom/android/launcher2/HomeScreenDialogFragment;->isHomeScreenDialogVisible:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance v0, Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/HomeScreenDialogFragment;-><init>()V

    .line 56
    .local v0, f:Lcom/android/launcher2/HomeScreenDialogFragment;
    if-eqz p0, :cond_0

    .line 57
    const-string v1, "Homescreen"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/HomeScreenDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    .line 68
    const-string v1, "Homescreen"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 69
    .local v0, dialog:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 72
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 2
    .parameter "manager"

    .prologue
    const/4 v0, 0x0

    .line 61
    if-eqz p0, :cond_0

    .line 62
    const-string v1, "Homescreen"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 64
    :cond_0
    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 83
    .local v5, c:Landroid/content/Context;
    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/launcher2/HomeScreenDialogFragment;->homescreenSelected:Z

    .line 86
    const v15, 0x7f030021

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v5, v15, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 87
    .local v10, layout:Landroid/view/View;
    const v15, 0x7f070025

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 88
    .local v14, up_pointer:Landroid/widget/ImageView;
    invoke-virtual {v14}, Landroid/widget/ImageView;->bringToFront()V

    .line 92
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v4, builder:Landroid/app/AlertDialog$Builder;
    const v15, 0x7f0e000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/HomeScreenDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 97
    .local v6, dialog:Landroid/app/Dialog;
    sget-boolean v15, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v15, :cond_0

    .line 98
    const-string v15, "change_wallpaper"

    sget-object v16, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 99
    const/4 v15, 0x3

    sput v15, Lcom/android/launcher2/Launcher;->changeWallpaperStatus:I

    .line 100
    const v15, 0x7f070052

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 101
    .local v8, guide_hand:Landroid/widget/RelativeLayout;
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    const v15, 0x7f070023

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 103
    .local v12, mGoalAnimationView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 104
    .local v1, act:Landroid/app/Activity;
    new-instance v3, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    invoke-direct {v3, v1, v12}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 105
    .local v3, animdialog:Lcom/android/launcher2/guide/HelpAnimatedDialog;
    const v15, 0x7f070024

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 106
    .local v13, textBox:Landroid/widget/RelativeLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    .line 107
    const v15, 0x3f19999a

    const v16, 0x3dcccccd

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0, v13}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    .line 112
    .end local v1           #act:Landroid/app/Activity;
    .end local v3           #animdialog:Lcom/android/launcher2/guide/HelpAnimatedDialog;
    .end local v8           #guide_hand:Landroid/widget/RelativeLayout;
    .end local v12           #mGoalAnimationView:Landroid/widget/ImageView;
    .end local v13           #textBox:Landroid/widget/RelativeLayout;
    :cond_0
    sget-boolean v15, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v15, :cond_1

    .line 113
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 115
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v9, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, download_contents:Ljava/lang/String;
    const-string v15, "Wallpaper"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0e0011

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    const v15, 0x7f070054

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    sget-boolean v15, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v15, :cond_3

    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0e0018

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0e0012

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0e0013

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenSmall()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 127
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x1090003

    move/from16 v0, v16

    invoke-direct {v2, v15, v0, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 131
    .local v2, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    const v15, 0x7f070021

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    .line 132
    .local v11, lvh:Landroid/widget/ListView;
    invoke-virtual {v11, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    new-instance v15, Lcom/android/launcher2/HomeScreenDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/launcher2/HomeScreenDialogFragment$1;-><init>(Lcom/android/launcher2/HomeScreenDialogFragment;)V

    invoke-virtual {v11, v15}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    new-instance v15, Lcom/android/launcher2/HomeScreenDialogFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v7, v5}, Lcom/android/launcher2/HomeScreenDialogFragment$2;-><init>(Lcom/android/launcher2/HomeScreenDialogFragment;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v11, v15}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/launcher2/HomeScreenDialogFragment;->isHomeScreenDialogVisible:Z

    .line 191
    return-object v6

    .line 120
    .end local v2           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v11           #lvh:Landroid/widget/ListView;
    :cond_3
    const/16 v15, 0x8

    goto :goto_0

    .line 129
    :cond_4
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v15, 0x7f030001

    invoke-direct {v2, v5, v15, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .restart local v2       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 197
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/HomeScreenDialogFragment;->homescreenSelected:Z

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    .line 201
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/HomeScreenDialogFragment;->isHomeScreenDialogVisible:Z

    .line 203
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 205
    .local v0, launcher:Lcom/android/launcher2/Launcher;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismiss()V

    .line 208
    :cond_1
    return-void
.end method
