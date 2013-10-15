.class Lcom/android/launcher2/DeltaVisualizer$2;
.super Ljava/lang/Object;
.source "DeltaVisualizer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeltaVisualizer;->positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeltaVisualizer;

.field final synthetic val$a:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/launcher2/DeltaVisualizer$2;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iput-object p2, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p3, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$v:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13
    .parameter "animation"

    .prologue
    .line 269
    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v11}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v8

    .line 270
    .local v8, to:[I
    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v11}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v4

    .line 271
    .local v4, from:[I
    const/4 v11, 0x0

    aget v11, v8, v11

    const/4 v12, 0x0

    aget v12, v4, v12

    sub-int/2addr v11, v12

    int-to-float v2, v11

    .line 272
    .local v2, dx:F
    const/4 v11, 0x1

    aget v11, v8, v11

    const/4 v12, 0x1

    aget v12, v4, v12

    sub-int/2addr v11, v12

    int-to-float v3, v11

    .line 273
    .local v3, dy:F
    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v11}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    .line 274
    .local v1, animIcon:Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 275
    .local v5, p:F
    const/4 v11, 0x0

    aget v11, v4, v11

    int-to-float v11, v11

    mul-float v12, v2, v5

    add-float v9, v11, v12

    .line 276
    .local v9, x:F
    const/4 v11, 0x1

    aget v11, v4, v11

    int-to-float v11, v11

    mul-float v12, v3, v5

    add-float v10, v11, v12

    .line 278
    .local v10, y:F
    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 279
    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getScaleX()F

    move-result v6

    .line 280
    .local v6, sx:F
    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getScaleY()F

    move-result v7

    .line 281
    .local v7, sy:F
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 282
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 283
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 284
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 287
    .end local v6           #sx:F
    .end local v7           #sy:F
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 288
    iget-object v11, p0, Lcom/android/launcher2/DeltaVisualizer$2;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    #getter for: Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;
    invoke-static {v11}, Lcom/android/launcher2/DeltaVisualizer;->access$300(Lcom/android/launcher2/DeltaVisualizer;)Lcom/android/launcher2/CellLayout;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 289
    .local v0, al:Lcom/android/launcher2/AnimationLayer;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 290
    return-void
.end method
