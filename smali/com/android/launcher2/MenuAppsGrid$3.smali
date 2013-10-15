.class Lcom/android/launcher2/MenuAppsGrid$3;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Lcom/android/launcher2/ItemViewBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 813
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;
    .locals 5
    .parameter "item"
    .parameter "page"

    .prologue
    const/4 v4, 0x0

    .line 816
    const/4 v0, 0x0

    .line 818
    .local v0, icon:Lcom/android/launcher2/AppIconView;
    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$300(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 819
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$300(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #icon:Lcom/android/launcher2/AppIconView;
    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 830
    .restart local v0       #icon:Lcom/android/launcher2/AppIconView;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    .line 832
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppIconView;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 835
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    .line 838
    :cond_0
    return-object v0

    .line 821
    .end local v1           #views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppIconView;>;"
    :cond_1
    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_2

    .line 822
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003a

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #icon:Lcom/android/launcher2/AppIconView;
    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 828
    .restart local v0       #icon:Lcom/android/launcher2/AppIconView;
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/MenuAppsGrid;->onAddItem(Lcom/android/launcher2/AppIconView;)V

    goto :goto_0

    .line 825
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$400(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003c

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #icon:Lcom/android/launcher2/AppIconView;
    check-cast v0, Lcom/android/launcher2/AppIconView;

    .restart local v0       #icon:Lcom/android/launcher2/AppIconView;
    goto :goto_1
.end method

.method public onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V
    .locals 6
    .parameter "v"
    .parameter "item"
    .parameter "page"

    .prologue
    const/4 v5, -0x1

    .line 847
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 848
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getIconId()J

    move-result-wide v0

    .line 849
    .local v0, id:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    iget-wide v3, p2, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 850
    instance-of v3, p1, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_0

    .line 851
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v4

    move-object v3, p1

    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/Folder;->notifyFolderIconChanged(Lcom/android/launcher2/FolderIconView;)V

    .line 854
    .end local v0           #id:J
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 855
    .local v2, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 856
    iput v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 857
    return-void
.end method
