.class public Lcom/android/launcher2/AddAppsWidgetToastPopUp;
.super Landroid/app/DialogFragment;
.source "AddAppsWidgetToastPopUp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;
    }
.end annotation


# static fields
.field private static final sFragmentTag:Ljava/lang/String; = "AddAppsWidgetToastPopUp"


# instance fields
.field private mDialogCheckBoxListener:Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    .line 36
    new-instance v0, Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;-><init>(Lcom/android/launcher2/AddAppsWidgetToastPopUp;)V

    iput-object v0, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mDialogCheckBoxListener:Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;

    .line 103
    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;

    invoke-direct {v0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;-><init>()V

    .line 43
    .local v0, f:Lcom/android/launcher2/AddAppsWidgetToastPopUp;
    const-string v1, "AddAppsWidgetToastPopUp"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    .line 54
    const-string v1, "AddAppsWidgetToastPopUp"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 55
    .local v0, dialog:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 58
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 2
    .parameter "manager"

    .prologue
    const/4 v0, 0x0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    const-string v1, "AddAppsWidgetToastPopUp"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 50
    :cond_0
    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 93
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 95
    .local v0, launcher:Lcom/android/launcher2/Launcher;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->saveToastPopup(Ljava/lang/Boolean;)V

    .line 98
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 101
    .end local v0           #launcher:Lcom/android/launcher2/Launcher;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 68
    .local v1, c:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    .line 69
    .local v3, launcher:Lcom/android/launcher2/Launcher;
    const/high16 v6, 0x7f03

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 70
    .local v4, layout:Landroid/view/View;
    iput-object v4, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0e0019

    invoke-virtual {p0, v6}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 74
    const v6, 0x7f0e0086

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 79
    .local v2, dialog:Landroid/app/Dialog;
    const/4 v5, 0x0

    .line 80
    .local v5, toastRepeat:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v6, 0x7f070012

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #toastRepeat:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 81
    .restart local v5       #toastRepeat:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v5, :cond_0

    .line 82
    iget-object v6, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mDialogCheckBoxListener:Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isDialogChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 86
    :cond_0
    return-object v2
.end method
