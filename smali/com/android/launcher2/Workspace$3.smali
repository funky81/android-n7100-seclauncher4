.class Lcom/android/launcher2/Workspace$3;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


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
    .line 484
    iput-object p1, p0, Lcom/android/launcher2/Workspace$3;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 487
    check-cast p1, Lcom/android/launcher2/CellLayoutChildren;

    .end local p1
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 488
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 490
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 491
    .local v1, vp:Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 492
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #vp:Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/Workspace$3;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher2/WorkspacePages;->itemAddedToPage(ILandroid/content/Context;)Z

    .line 494
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v2, :cond_0

    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 507
    .local v0, cl:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v1

    .line 508
    .local v1, frame:Lcom/android/launcher2/AppWidgetResizeFrame;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidgetView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 509
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->clearResizeFrame()V

    .line 512
    .end local v0           #cl:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    .end local v1           #frame:Lcom/android/launcher2/AppWidgetResizeFrame;
    :cond_0
    return-void
.end method
