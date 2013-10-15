.class Lcom/android/launcher2/FolderAnimator$3$2;
.super Ljava/lang/Object;
.source "FolderAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator$3;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/FolderAnimator$3;

.field final synthetic val$from:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator$3;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$3$2;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iput p2, p0, Lcom/android/launcher2/FolderAnimator$3$2;->val$from:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 452
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator$3$2;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget-object v2, v2, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v2}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 453
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 454
    .local v1, progress:F
    iget v2, p0, Lcom/android/launcher2/FolderAnimator$3$2;->val$from:F

    const/high16 v3, 0x3f80

    sub-float/2addr v3, v1

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    mul-float/2addr v3, v1

    add-float v0, v2, v3

    .line 455
    .local v0, darkenAmount:F
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator$3$2;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget-object v2, v2, Lcom/android/launcher2/FolderAnimator$3;->val$paint:Landroid/graphics/Paint;

    invoke-static {v0, v2}, Lcom/android/launcher2/FolderIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    .line 456
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator$3$2;->this$1:Lcom/android/launcher2/FolderAnimator$3;

    iget-object v2, v2, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;
    invoke-static {v2}, Lcom/android/launcher2/FolderAnimator;->access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 457
    return-void
.end method
