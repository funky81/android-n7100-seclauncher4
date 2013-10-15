.class Lcom/android/launcher2/HomeView$23;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;)V
    .locals 0
    .parameter

    .prologue
    .line 4704
    iput-object p1, p0, Lcom/android/launcher2/HomeView$23;->this$0:Lcom/android/launcher2/HomeView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4707
    iget-object v0, p0, Lcom/android/launcher2/HomeView$23;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mLightEffectAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1700(Lcom/android/launcher2/HomeView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$23;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mLightEffectAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1700(Lcom/android/launcher2/HomeView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4708
    iget-object v0, p0, Lcom/android/launcher2/HomeView$23;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mLightEffectAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1700(Lcom/android/launcher2/HomeView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 4710
    iget-object v0, p0, Lcom/android/launcher2/HomeView$23;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mLightEffectImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1800(Lcom/android/launcher2/HomeView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4711
    iget-object v0, p0, Lcom/android/launcher2/HomeView$23;->this$0:Lcom/android/launcher2/HomeView;

    #getter for: Lcom/android/launcher2/HomeView;->mLightEffectImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1800(Lcom/android/launcher2/HomeView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4714
    :cond_0
    return-void
.end method
