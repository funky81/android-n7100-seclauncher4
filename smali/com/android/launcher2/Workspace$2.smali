.class Lcom/android/launcher2/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher2/ItemViewBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;
    .locals 4
    .parameter "item"
    .parameter "page"

    .prologue
    .line 404
    sget-object v1, Lcom/android/launcher2/Workspace$21;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 425
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t know how to convert item into view for workspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :pswitch_0
    invoke-static {p1}, Lcom/android/launcher2/AppIconView;->getHomeIconLayout(Lcom/android/launcher2/BaseItem;)I

    move-result v0

    .line 408
    .local v0, layout:I
    iget-object v1, p0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    .end local p1
    invoke-virtual {v1, p1, v0, p2}, Lcom/android/launcher2/HomeView;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 421
    .end local v0           #layout:I
    :goto_0
    return-object v1

    .line 410
    .restart local p1
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    check-cast p1, Lcom/android/launcher2/HomeFolderItem;

    .end local p1
    const v2, 0x7f03001f

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/launcher2/HomeView;->createFolder(Lcom/android/launcher2/HomeFolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 412
    .restart local p1
    :pswitch_2
    check-cast p1, Lcom/android/launcher2/HomeWidgetItem;

    .end local p1
    iget-object v1, p0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/android/launcher2/HomeWidgetItem;->getHostView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 415
    .restart local p1
    :pswitch_3
    check-cast p1, Lcom/android/launcher2/SamsungWidgetItem;

    .end local p1
    iget-object v1, p1, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    goto :goto_0

    .restart local p1
    :pswitch_4
    move-object v1, p1

    .line 418
    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetItem;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    check-cast p1, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local p1
    iget-object v1, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    goto :goto_0

    .line 421
    .restart local p1
    :cond_0
    check-cast p1, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local p1
    iget-object v1, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartView:Landroid/view/View;

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V
    .locals 8
    .parameter "v"
    .parameter "item"
    .parameter "page"

    .prologue
    .line 433
    instance-of v4, p1, Lcom/android/launcher2/AllappsIcon;

    if-eqz v4, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p2

    .line 434
    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 436
    .local v1, hitem:Lcom/android/launcher2/HomeItem;
    sget-object v4, Lcom/android/launcher2/FocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 437
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v4, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v5, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v7, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 438
    .local v0, clp:Lcom/android/launcher2/CellLayout$LayoutParams;
    instance-of v4, p1, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v4, :cond_2

    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 441
    .local v3, swi:Lcom/android/launcher2/SurfaceWidgetItem;
    if-eqz v3, :cond_2

    .line 442
    invoke-virtual {v3}, Lcom/android/launcher2/SurfaceWidgetItem;->getWidgetPadding()Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v2

    .line 443
    .local v2, p:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    invoke-static {}, Lcom/android/launcher2/Workspace;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "8974"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 444
    iget v4, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    iget v5, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    add-int/lit8 v5, v5, 0x1

    iget v6, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    iget v7, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/launcher2/CellLayout$LayoutParams;->setMargins(IIII)V

    .line 449
    .end local v2           #p:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .end local v3           #swi:Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    instance-of v4, p1, Lcom/android/launcher2/Folder;

    if-nez v4, :cond_0

    .line 452
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 453
    iget-object v4, p0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v4, v4, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 446
    .restart local v2       #p:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .restart local v3       #swi:Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_3
    iget v4, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    iget v5, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    iget v6, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    iget v7, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/launcher2/CellLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method
