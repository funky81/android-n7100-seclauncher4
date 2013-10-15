.class public Lcom/android/launcher2/FolderEditText;
.super Landroid/widget/EditText;
.source "FolderEditText.java"


# instance fields
.field private mFolder:Lcom/android/launcher2/Folder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 76
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    :goto_0
    :pswitch_1
    return v0

    .line 69
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/FolderEditText;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_1

    const-string v2, "CHN"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 57
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/launcher2/FolderEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 58
    iget-object v2, p0, Lcom/android/launcher2/FolderEditText;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    .line 61
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher2/FolderEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, parent:Landroid/view/ViewParent;
    move-object v3, v2

    .line 93
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, focusedChild:Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 100
    invoke-super {p0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 103
    .local v1, p:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 108
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 109
    return-object v1

    .line 106
    :cond_0
    invoke-interface {v2, v4, v4}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public setFolder(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/launcher2/FolderEditText;->mFolder:Lcom/android/launcher2/Folder;

    .line 49
    return-void
.end method
