.class abstract Lcom/android/launcher2/MenuAppsGrid$StateObj;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "StateObj"
.end annotation


# instance fields
.field protected mHasEntered:Z

.field protected mLastStatesSavedCurrentPage:I

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1
    .parameter

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 1235
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    return-void
.end method


# virtual methods
.method public allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 1205
    const/4 v0, 0x1

    return v0
.end method

.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1187
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    return-void
.end method

.method public abstract enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1195
    .local p1, items:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    return-void
.end method

.method public abstract exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1196
    .local p1, items:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    return-void
.end method

.method public getAppsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1199
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    .line 1200
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 1201
    .local v0, itemCount:I
    :goto_0
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$1900()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateObj::getAppsList() item count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_0
    return-object v1

    .line 1200
    .end local v0           #itemCount:I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onAppModelUpdated()V
    .locals 0

    .prologue
    .line 1228
    return-void
.end method

.method public abstract onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1173
    return-void
.end method

.method public preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "folderItem"
    .parameter "folder"

    .prologue
    .line 1211
    return-void
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "bundle"

    .prologue
    .line 1226
    const/4 v0, 0x1

    return v0
.end method

.method protected restoreLastStatesCurrentPage()V
    .locals 3

    .prologue
    const/high16 v2, -0x8000

    .line 1242
    iget v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    if-eq v2, v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->initCurrentPage(I)V

    .line 1244
    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    .line 1246
    :cond_0
    return-void
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 1219
    return-void
.end method

.method protected saveLastStatesCurrentPage()V
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    .line 1239
    return-void
.end method
