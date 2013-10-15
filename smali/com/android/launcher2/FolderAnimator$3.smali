.class Lcom/android/launcher2/FolderAnimator$3;
.super Ljava/lang/Object;
.source "FolderAnimator.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;

.field final synthetic val$count:I

.field final synthetic val$imgView:Landroid/widget/ImageView;

.field final synthetic val$normalVisibleItems:I

.field final synthetic val$paint:Landroid/graphics/Paint;

.field final synthetic val$pos:I

.field final synthetic val$visibleItems:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;Landroid/widget/ImageView;IIIILandroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    iput p4, p0, Lcom/android/launcher2/FolderAnimator$3;->val$visibleItems:I

    iput p5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$normalVisibleItems:I

    iput p6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$count:I

    iput-object p7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$paint:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 8
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 393
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    move-object v2, p1

    .line 394
    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 395
    .local v2, iconView:Lcom/android/launcher2/AppIconView;
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v5}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->isOpened()Z

    move-result v5

    if-nez v5, :cond_1

    .line 396
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;
    invoke-static {v5}, Lcom/android/launcher2/FolderAnimator;->access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 397
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/launcher2/FolderAnimator;->access$200(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 398
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/launcher2/AppIconView;->setVisibility(I)V

    .line 399
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    const/4 v6, 0x0

    #setter for: Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z
    invoke-static {v5, v6}, Lcom/android/launcher2/FolderAnimator;->access$302(Lcom/android/launcher2/FolderAnimator;Z)Z

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    const/4 v6, 0x0

    #calls: Lcom/android/launcher2/FolderAnimator;->getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I
    invoke-static {v5, v2, v6}, Lcom/android/launcher2/FolderAnimator;->access$400(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AppIconView;Z)[I

    move-result-object v4

    .line 405
    .local v4, xy:[I
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I
    invoke-static {v5}, Lcom/android/launcher2/FolderAnimator;->access$500(Lcom/android/launcher2/FolderAnimator;)[I

    move-result-object v5

    if-nez v5, :cond_2

    .line 406
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #setter for: Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I
    invoke-static {v5, v4}, Lcom/android/launcher2/FolderAnimator;->access$502(Lcom/android/launcher2/FolderAnimator;[I)[I

    .line 407
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    #setter for: Lcom/android/launcher2/FolderAnimator;->mFolderOpenOri:I
    invoke-static {v5, v6}, Lcom/android/launcher2/FolderAnimator;->access$602(Lcom/android/launcher2/FolderAnimator;I)I

    .line 409
    :cond_2
    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    const/4 v6, 0x3

    if-le v5, v6, :cond_3

    .line 410
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 413
    :cond_3
    if-eqz v4, :cond_4

    .line 414
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    iget v6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$visibleItems:I

    if-gt v5, v6, :cond_5

    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    iget v6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$normalVisibleItems:I

    if-lt v5, v6, :cond_5

    .line 415
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v6}, Lcom/android/launcher2/FolderAnimator;->access$700(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/Folder;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher2/Folder;->mExpandDuration:I

    iget v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 424
    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v4, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v4, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/launcher2/FolderAnimator$3$1;

    invoke-direct {v6, p0, v2}, Lcom/android/launcher2/FolderAnimator$3$1;-><init>(Lcom/android/launcher2/FolderAnimator$3;Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 444
    :cond_4
    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    if-lez v5, :cond_0

    .line 445
    iget v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    int-to-float v5, v5

    const v6, 0x3dcccccd

    mul-float v1, v5, v6

    .line 446
    .local v1, from:F
    const/4 v3, 0x0

    .line 447
    .local v3, to:F
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 448
    .local v0, anim:Landroid/animation/ValueAnimator;
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v5}, Lcom/android/launcher2/FolderAnimator;->access$700(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/Folder;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 449
    new-instance v5, Lcom/android/launcher2/FolderAnimator$3$2;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/FolderAnimator$3$2;-><init>(Lcom/android/launcher2/FolderAnimator$3;F)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 459
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 419
    .end local v0           #anim:Landroid/animation/ValueAnimator;
    .end local v1           #from:F
    .end local v3           #to:F
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$imgView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    #getter for: Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v6}, Lcom/android/launcher2/FolderAnimator;->access$700(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/Folder;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher2/Folder;->mExpandDuration:I

    iget v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$pos:I

    mul-int/lit8 v7, v7, 0xf

    add-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 447
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
