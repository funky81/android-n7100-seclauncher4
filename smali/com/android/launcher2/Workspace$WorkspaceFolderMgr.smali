.class Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher2/Folder$FolderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkspaceFolderMgr"
.end annotation


# instance fields
.field private mAnimateOpen:Z

.field private mIcon:Lcom/android/launcher2/FolderIconView;

.field private mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 1
    .parameter
    .parameter "icon"
    .parameter "animateOpen"

    .prologue
    .line 2850
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2851
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;-><init>(Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;Lcom/android/launcher2/Workspace;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 2861
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    .line 2862
    iput-boolean p3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mAnimateOpen:Z

    .line 2863
    return-void
.end method

.method private cleanupListener()V
    .locals 2

    .prologue
    .line 2950
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    .line 2951
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2954
    :cond_0
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2934
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method public onFolderClose()V
    .locals 5

    .prologue
    .line 2867
    invoke-direct {p0}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->cleanupListener()V

    .line 2868
    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHomeContainer()Landroid/view/View;

    move-result-object v1

    .line 2869
    .local v1, homeContainer:Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1900(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1900(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v2

    iget v0, v2, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 2870
    .local v0, duration:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2871
    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2872
    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$2;-><init>(Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2884
    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->onFadeStart()V

    .line 2885
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2886
    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    #setter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2, v3}, Lcom/android/launcher2/Workspace;->access$1902(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;

    .line 2888
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v3, 0x7f0e005b

    invoke-virtual {v2, v3}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 2889
    return-void

    .line 2869
    .end local v0           #duration:I
    :cond_0
    const/16 v0, 0xfa

    goto :goto_0
.end method

.method public onFolderOpen()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2893
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v5

    if-nez v5, :cond_0

    .line 2894
    const-string v5, "Launcher.Workspace"

    const-string v6, "home fragment was null trying to open folder?"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    :goto_0
    return-void

    .line 2897
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v1

    .line 2899
    .local v1, darkenLayer:Landroid/view/View;
    if-nez v1, :cond_1

    .line 2901
    const-string v5, "Launcher.Workspace"

    const-string v6, "darken layer was null trying to open folder?"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2905
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getHomeContainer()Landroid/view/View;

    move-result-object v3

    .line 2907
    .local v3, homeContainer:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2908
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2909
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2910
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0003

    invoke-virtual {v5, v6, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 2911
    .local v4, targetAlpha:F
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0004

    invoke-virtual {v5, v6, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 2914
    .local v0, containerAlpha:F
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$1900(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$1900(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v5

    iget v2, v5, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 2915
    .local v2, duration:I
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2916
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mAnimateOpen:Z

    if-eqz v5, :cond_3

    .line 2917
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2918
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2921
    const/high16 v5, 0x3f80

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2922
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2927
    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->onFadeStart()V

    .line 2929
    sget-object v5, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0e005a

    invoke-virtual {v5, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_0

    .line 2914
    .end local v2           #duration:I
    :cond_2
    const/16 v2, 0xfa

    goto :goto_1

    .line 2924
    .restart local v2       #duration:I
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2925
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

.method public setIconView(Lcom/android/launcher2/FolderIconView;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-ne p1, v0, :cond_1

    .line 2947
    :cond_0
    :goto_0
    return-void

    .line 2942
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->cleanupListener()V

    .line 2943
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 2944
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    .line 2945
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method
