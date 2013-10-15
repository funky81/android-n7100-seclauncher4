.class public Lcom/android/launcher2/UninstallConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "UninstallConfirmDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UninstallConfirmDialogFragment"

.field private static final sFragmentTag:Ljava/lang/String; = "UninstallConfirm"


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mPackageLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V
    .locals 3
    .parameter "packageName"
    .parameter "label"
    .parameter "manager"

    .prologue
    .line 43
    invoke-static {p2}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v1, Lcom/android/launcher2/UninstallConfirmDialogFragment;

    invoke-direct {v1}, Lcom/android/launcher2/UninstallConfirmDialogFragment;-><init>()V

    .line 46
    .local v1, f:Lcom/android/launcher2/UninstallConfirmDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "package"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    const-string v2, "UninstallConfirm"

    invoke-virtual {v1, p2, v2}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "ft"
    .parameter "manager"

    .prologue
    .line 58
    const-string v1, "UninstallConfirm"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 59
    .local v0, dialog:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 61
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 63
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .parameter "manager"

    .prologue
    .line 54
    const-string v0, "UninstallConfirm"

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x0

    .line 86
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackage:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "UninstallConfirmDialogFragment"

    const-string v2, "Problem uninstalling package. This should only happen when installed outside of /system/app."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Not installed with permissions needed for uninstalling"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 95
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "UninstallConfirmDialogFragment"

    const-string v2, "Problem uninstalling package. This should only happen when either Activity or PackageManager is NULL."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Unable to install, please try again !"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackage:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackageLabel:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 75
    .local v0, c:Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0063

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0064

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackageLabel:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0065

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0066

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
