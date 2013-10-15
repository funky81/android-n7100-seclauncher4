.class Lcom/android/launcher2/CreateFolderDialog$1;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CreateFolderDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CreateFolderDialog;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CreateFolderDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog$1;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/launcher2/CreateFolderDialog$1;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v2}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 183
    .local v1, launcher:Lcom/android/launcher2/Launcher;
    iget-object v2, p0, Lcom/android/launcher2/CreateFolderDialog$1;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/launcher2/CreateFolderDialog;->access$000(Lcom/android/launcher2/CreateFolderDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, folderTitle:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/MenuAppsGrid;->setFolderTitletoAddButton(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$1;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$100(Lcom/android/launcher2/CreateFolderDialog;)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->setCreateFolderAddButtonState(Lcom/android/launcher2/BaseItem;)V

    .line 186
    iget-object v2, p0, Lcom/android/launcher2/CreateFolderDialog$1;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v2}, Lcom/android/launcher2/CreateFolderDialog;->dismiss()V

    .line 187
    return-void
.end method
