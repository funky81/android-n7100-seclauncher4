.class Lcom/android/launcher2/FolderAnimator$5;
.super Ljava/lang/Object;
.source "FolderAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->buildAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;

.field final synthetic val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$from:[I

.field final synthetic val$offset:[I

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;[I[II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$5;->this$0:Lcom/android/launcher2/FolderAnimator;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator$5;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p3, p0, Lcom/android/launcher2/FolderAnimator$5;->val$from:[I

    iput-object p4, p0, Lcom/android/launcher2/FolderAnimator$5;->val$offset:[I

    iput p5, p0, Lcom/android/launcher2/FolderAnimator$5;->val$pos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 577
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$5;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$5;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator$5;->this$0:Lcom/android/launcher2/FolderAnimator;

    #calls: Lcom/android/launcher2/FolderAnimator;->getNewImageView()Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/launcher2/FolderAnimator;->access$900(Lcom/android/launcher2/FolderAnimator;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$5;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator$5;->val$from:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator$5;->val$offset:[I

    aget v3, v3, v4

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 581
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$5;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator$5;->val$from:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator$5;->val$offset:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 583
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$5;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v1}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v1

    if-nez v1, :cond_3

    .line 584
    const-string v1, "FolderAnimator"

    const-string v2, "mIcon is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 591
    .local v0, alphaFactor:I
    iget v1, p0, Lcom/android/launcher2/FolderAnimator$5;->val$pos:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 592
    const/4 v0, 0x1

    .line 593
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$5;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const v2, 0x3e99999a

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 594
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$5;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 595
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$5;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;
    invoke-static {v1}, Lcom/android/launcher2/FolderAnimator;->access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 596
    return-void

    .line 585
    .end local v0           #alphaFactor:I
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$5;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v1}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 586
    const-string v1, "FolderAnimator"

    const-string v2, "mIcon\'s parent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
