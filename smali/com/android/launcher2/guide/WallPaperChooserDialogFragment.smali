.class public Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "WallPaperChooserDialogFragment.java"


# static fields
.field static final WALLPAPER_SELECT_FOR_HELP:I = 0x6f

.field public static isWallpaperChooserFragmentVisible:Z


# instance fields
.field createdialog:Z

.field private mGoalAnimationView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->isWallpaperChooserFragmentVisible:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->createdialog:Z

    return-void
.end method

.method public static createAndShow(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;-><init>()V

    .line 47
    .local v0, f:Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;
    const-string v1, "WallpaperDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static dismiss(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    .line 58
    const-string v1, "WallpaperDialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 59
    .local v0, dialog:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 62
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 2
    .parameter "manager"

    .prologue
    const/4 v0, 0x0

    .line 51
    if-eqz p0, :cond_0

    .line 52
    const-string v1, "WallpaperDialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 54
    :cond_0
    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->finishWallpaperGuide(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 128
    return-void

    .line 126
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f070042

    const/4 v8, 0x0

    .line 75
    iput-boolean v8, p0, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->createdialog:Z

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 77
    .local v2, c:Landroid/content/Context;
    const/4 v6, 0x4

    sput v6, Lcom/android/launcher2/Launcher;->changeWallpaperStatus:I

    .line 78
    const v6, 0x7f03001b

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 79
    .local v4, layout:Landroid/view/View;
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 80
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0e0010

    invoke-virtual {p0, v6}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 84
    .local v3, dialog:Landroid/app/Dialog;
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v7, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment$1;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment$1;-><init>(Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v7, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment$2;

    invoke-direct {v7, p0}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment$2;-><init>(Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v6, 0x7f07003a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->mGoalAnimationView:Landroid/view/View;

    .line 115
    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    iget-object v6, p0, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->mGoalAnimationView:Landroid/view/View;

    invoke-direct {v0, v2, v6}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 116
    .local v0, animdialog:Lcom/android/launcher2/guide/HelpAnimatedDialog;
    const v6, 0x7f070024

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 117
    .local v5, textBox:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    .line 118
    const/high16 v6, 0x3f00

    const v7, 0x3dcccccd

    invoke-virtual {v0, v6, v7, v5}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    .line 119
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->isWallpaperChooserFragmentVisible:Z

    .line 120
    return-object v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 132
    .local v0, launcher:Lcom/android/launcher2/Launcher;
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->createdialog:Z

    if-nez v1, :cond_0

    .line 133
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/Launcher;->isExitingFromWallpaperActivity:Z

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    .line 138
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->isWallpaperChooserFragmentVisible:Z

    .line 139
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->dismiss()V

    .line 142
    :cond_1
    return-void
.end method
