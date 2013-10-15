.class Lcom/android/launcher2/BlendedDarkenView$Drawer;
.super Lcom/android/launcher2/DrawGLFunction$Callback;
.source "BlendedDarkenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/BlendedDarkenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Drawer"
.end annotation


# instance fields
.field private mAlpha:F

.field final synthetic this$0:Lcom/android/launcher2/BlendedDarkenView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/BlendedDarkenView;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->this$0:Lcom/android/launcher2/BlendedDarkenView;

    invoke-direct {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;-><init>()V

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/BlendedDarkenView$Drawer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 202
    iget v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/BlendedDarkenView$Drawer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 202
    iput p1, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    return p1
.end method


# virtual methods
.method public drawGL([F)V
    .locals 8
    .parameter "transform"

    .prologue
    const v7, 0x8893

    const v6, 0x8892

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 209
    iget v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->this$0:Lcom/android/launcher2/BlendedDarkenView;

    #getter for: Lcom/android/launcher2/BlendedDarkenView;->loaded:Z
    invoke-static {v0}, Lcom/android/launcher2/BlendedDarkenView;->access$100(Lcom/android/launcher2/BlendedDarkenView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->this$0:Lcom/android/launcher2/BlendedDarkenView;

    #calls: Lcom/android/launcher2/BlendedDarkenView;->compilePrograms()V
    invoke-static {v0}, Lcom/android/launcher2/BlendedDarkenView;->access$200(Lcom/android/launcher2/BlendedDarkenView;)V

    .line 213
    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->this$0:Lcom/android/launcher2/BlendedDarkenView;

    #calls: Lcom/android/launcher2/BlendedDarkenView;->loadVBOs()V
    invoke-static {v0}, Lcom/android/launcher2/BlendedDarkenView;->access$300(Lcom/android/launcher2/BlendedDarkenView;)V

    .line 214
    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->this$0:Lcom/android/launcher2/BlendedDarkenView;

    #setter for: Lcom/android/launcher2/BlendedDarkenView;->loaded:Z
    invoke-static {v0, v2}, Lcom/android/launcher2/BlendedDarkenView;->access$102(Lcom/android/launcher2/BlendedDarkenView;Z)Z

    .line 217
    :cond_1
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 218
    const v0, 0x8006

    invoke-static {v0}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    .line 220
    invoke-static {v2, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 222
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$400()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 224
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$500()I

    move-result v0

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 225
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$600()I

    move-result v0

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 227
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$700()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 229
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$700()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 232
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$800()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 234
    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 237
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$700()I

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$700()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 241
    :cond_2
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 242
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    goto :goto_0
.end method
