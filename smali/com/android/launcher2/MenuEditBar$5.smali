.class Lcom/android/launcher2/MenuEditBar$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuEditBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuEditBar;->setAnimatorsForOrientation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuEditBar;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuEditBar;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/launcher2/MenuEditBar$5;->this$0:Lcom/android/launcher2/MenuEditBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar$5;->this$0:Lcom/android/launcher2/MenuEditBar;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuEditBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 704
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar$5;->this$0:Lcom/android/launcher2/MenuEditBar;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuEditBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 699
    return-void
.end method
