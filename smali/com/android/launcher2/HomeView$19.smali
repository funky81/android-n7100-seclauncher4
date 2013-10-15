.class Lcom/android/launcher2/HomeView$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$l:Lcom/android/launcher2/AnimationLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/AnimationLayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3201
    iput-object p1, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    iput-object p2, p0, Lcom/android/launcher2/HomeView$19;->val$l:Lcom/android/launcher2/AnimationLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 3230
    iget-object v0, p0, Lcom/android/launcher2/HomeView$19;->val$l:Lcom/android/launcher2/AnimationLayer;

    if-eqz v0, :cond_0

    .line 3231
    iget-object v0, p0, Lcom/android/launcher2/HomeView$19;->val$l:Lcom/android/launcher2/AnimationLayer;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 3232
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1200(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3233
    iget-object v0, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1200(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 3237
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1300(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3238
    iget-object v0, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1300(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3240
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1400(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3241
    iget-object v0, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1400(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3243
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1500(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3244
    iget-object v0, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1500(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3246
    :cond_4
    return-void

    .line 3234
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1000(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3235
    iget-object v0, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1000(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 3204
    iget-object v1, p0, Lcom/android/launcher2/HomeView$19;->val$l:Lcom/android/launcher2/AnimationLayer;

    if-eqz v1, :cond_0

    .line 3205
    iget-object v1, p0, Lcom/android/launcher2/HomeView$19;->val$l:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 3206
    iget-object v1, p0, Lcom/android/launcher2/HomeView$19;->val$l:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3207
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 3208
    new-instance v1, Lcom/android/launcher2/HomeView$19$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$19$1;-><init>(Lcom/android/launcher2/HomeView$19;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3223
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$1000(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3224
    iget-object v1, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$1000(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 3225
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$1100(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3226
    iget-object v1, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$1100(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 3227
    :cond_2
    return-void
.end method
