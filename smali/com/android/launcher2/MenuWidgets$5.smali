.class Lcom/android/launcher2/MenuWidgets$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgets;->setTabHost(Lcom/android/launcher2/MenuView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0
    .parameter

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$5;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$5;->this$0:Lcom/android/launcher2/MenuWidgets;

    sget-object v1, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 1600
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$5;->this$0:Lcom/android/launcher2/MenuWidgets;

    sget-object v1, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 1595
    return-void
.end method
