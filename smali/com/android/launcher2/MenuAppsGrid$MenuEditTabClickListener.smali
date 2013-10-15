.class public Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuEditTabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 3391
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 3394
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #calls: Lcom/android/launcher2/MenuAppsGrid;->isConfirmDialogOpen()Z
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$5900(Lcom/android/launcher2/MenuAppsGrid;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3395
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3396
    .local v0, fragMgr:Landroid/app/FragmentManager;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 3414
    .end local v0           #fragMgr:Landroid/app/FragmentManager;
    :cond_0
    :goto_0
    return-void

    .line 3399
    .restart local v0       #fragMgr:Landroid/app/FragmentManager;
    :sswitch_0
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3400
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->saveEditChanges()V

    .line 3401
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 3405
    :sswitch_1
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$5400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuAppModel;->editIsDirty(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3406
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 3405
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 3408
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->revertEditChanges()V

    .line 3409
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 3396
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07005d -> :sswitch_0
        0x7f07008f -> :sswitch_0
        0x7f070095 -> :sswitch_1
    .end sparse-switch
.end method
