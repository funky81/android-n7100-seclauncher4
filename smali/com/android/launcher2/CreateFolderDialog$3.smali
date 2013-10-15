.class Lcom/android/launcher2/CreateFolderDialog$3;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 214
    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "dialog"
    .parameter "arg1"
    .parameter "event"

    .prologue
    .line 217
    if-eqz p1, :cond_0

    move-object v3, p1

    .line 219
    check-cast v3, Landroid/app/AlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    .line 220
    .local v11, negativeBtn:Landroid/widget/Button;
    if-eqz v11, :cond_0

    .line 222
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    .line 223
    const/4 v3, 0x0

    .line 286
    .end local v11           #negativeBtn:Landroid/widget/Button;
    :goto_0
    return v3

    .line 226
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 227
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v3}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    .line 228
    .local v9, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 286
    .end local v9           #launcher:Lcom/android/launcher2/Launcher;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 230
    .restart local v9       #launcher:Lcom/android/launcher2/Launcher;
    :pswitch_0
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$000(Lcom/android/launcher2/CreateFolderDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, folderTitle:Ljava/lang/String;
    const/4 v1, 0x0

    .line 233
    .local v1, item:Lcom/android/launcher2/BaseItem;
    const/4 v0, 0x0

    .line 235
    .local v0, listener:Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$100(Lcom/android/launcher2/CreateFolderDialog;)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 236
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$100(Lcom/android/launcher2/CreateFolderDialog;)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 256
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$400(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v3

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$400(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v3

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 258
    :cond_3
    if-eqz v9, :cond_4

    .line 259
    iget-object v0, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 270
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 272
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$400(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z
    invoke-static {v5}, Lcom/android/launcher2/CreateFolderDialog;->access$500(Lcom/android/launcher2/CreateFolderDialog;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z
    invoke-static {v6}, Lcom/android/launcher2/CreateFolderDialog;->access$600(Lcom/android/launcher2/CreateFolderDialog;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I
    invoke-static {v7}, Lcom/android/launcher2/CreateFolderDialog;->access$700(Lcom/android/launcher2/CreateFolderDialog;)I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I
    invoke-static {v8}, Lcom/android/launcher2/CreateFolderDialog;->access$800(Lcom/android/launcher2/CreateFolderDialog;)I

    move-result v8

    invoke-interface/range {v0 .. v8}, Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;->onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V

    .line 278
    :cond_5
    if-eqz p1, :cond_1

    .line 279
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    .line 237
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mItemId:J
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$200(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 239
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$300(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v3

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$300(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v3

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 241
    :cond_7
    iget-object v3, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mItemId:J
    invoke-static {v4}, Lcom/android/launcher2/CreateFolderDialog;->access$200(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v1

    goto :goto_2

    .line 242
    :cond_8
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$300(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v3

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 243
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mItemId:J
    invoke-static {v4}, Lcom/android/launcher2/CreateFolderDialog;->access$200(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    goto/16 :goto_2

    .line 244
    :cond_9
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$400(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v3

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$400(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v3

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 246
    :cond_a
    iget-object v3, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mItemId:J
    invoke-static {v4}, Lcom/android/launcher2/CreateFolderDialog;->access$200(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v1

    goto/16 :goto_2

    .line 247
    :cond_b
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$400(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v3

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 248
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mItemId:J
    invoke-static {v4}, Lcom/android/launcher2/CreateFolderDialog;->access$200(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    goto/16 :goto_2

    .line 260
    :cond_c
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$3;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    #getter for: Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J
    invoke-static {v3}, Lcom/android/launcher2/CreateFolderDialog;->access$400(Lcom/android/launcher2/CreateFolderDialog;)J

    move-result-wide v3

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 261
    if-eqz v9, :cond_4

    .line 262
    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v10

    .line 263
    .local v10, mMenuView:Lcom/android/launcher2/MenuView;
    if-eqz v10, :cond_4

    .line 264
    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    goto/16 :goto_3

    .line 228
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
