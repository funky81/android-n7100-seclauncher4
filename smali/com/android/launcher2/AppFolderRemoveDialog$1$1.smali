.class Lcom/android/launcher2/AppFolderRemoveDialog$1$1;
.super Ljava/lang/Object;
.source "AppFolderRemoveDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppFolderRemoveDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AppFolderRemoveDialog$1;

.field final synthetic val$anim:Lcom/android/launcher2/AnimationLayer$Anim;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppFolderRemoveDialog$1;Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;->this$1:Lcom/android/launcher2/AppFolderRemoveDialog$1;

    iput-object p2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 155
    .local v0, p:F
    iget-object v2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v2, v2, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 157
    iget-object v2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;->this$1:Lcom/android/launcher2/AppFolderRemoveDialog$1;

    iget-object v2, v2, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$cellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v2

    mul-float v1, v2, v0

    .line 158
    .local v1, s:F
    iget-object v2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v2, v2, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 159
    iget-object v2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v2, v2, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 160
    return-void
.end method
