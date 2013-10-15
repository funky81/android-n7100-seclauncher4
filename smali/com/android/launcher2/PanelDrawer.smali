.class Lcom/android/launcher2/PanelDrawer;
.super Ljava/lang/Object;
.source "PanelDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PanelDrawer$PanelDrawable;,
        Lcom/android/launcher2/PanelDrawer$Functor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PanelDrawer"

.field private static final sFragmentSource:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nvarying vec2 vHighlightCoord;\nuniform sampler2D sTexture;\nuniform sampler2D sHighlight;\nuniform float uAlpha;\nuniform float uBackgroundDarken;\nuniform float uBaseDarken;\nvoid main() {\n  vec4 sampled = texture2D(sTexture, vTextureCoord);\n  float highlight = texture2D(sHighlight, vHighlightCoord).a;\n  float highlightMask = sampled.b; \n  float maskedHighlight = highlight*highlightMask; \n  float value = (sampled.g + maskedHighlight)*uAlpha;\n  float alpha = (sampled.r + maskedHighlight)*uAlpha + mix(uBackgroundDarken, uBaseDarken, sampled.b);\n  gl_FragColor = vec4(value, value, value, alpha);\n}\n"

.field private static final sVertexSource:Ljava/lang/String; = "uniform mat4 uPMatrix;\nuniform mat4 uMVMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvarying vec2 vHighlightCoord;\nuniform vec2 uHighlightXMA;\nvoid main() {\n  gl_Position = (uPMatrix*uMVMatrix)*vec4(aPosition,0,1.);\n  vTextureCoord = aTextureCoord;\n  vHighlightCoord.x = (gl_Position.x/gl_Position.w)*uHighlightXMA[0]+uHighlightXMA[1];\n  vHighlightCoord.y = aTextureCoord.y;\n}\n"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field protected mExpandX:I

.field protected mExpandY:I

.field mHighlightTexture:I

.field mIgnoreDarken:Z

.field private mIndiciesBuffer:I

.field private mIndiciesData:[S

.field private mLastHeight:I

.field private mLastWidth:I

.field mProgram:I

.field mProjectionMatrix:[F

.field mTexture:I

.field protected mTextureHeight:I

.field protected mTextureWidth:I

.field private mVerticiesBuffer:I

.field private mVerticiesData:[F

.field mViewportHeight:I

.field mViewportWidth:I

.field maPositionHandle:I

.field maTextureCoordHandle:I

.field msHighlightHandle:I

.field msTextureHandle:I

.field muAlpha:I

.field muBackgroundDarken:I

.field muBaseDarken:I

.field muHighlightXMLHandle:I

.field muMVMatrixHandle:I

.field muPMatrixHandle:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/android/launcher2/PanelDrawer;->mIgnoreDarken:Z

    .line 104
    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->mLastWidth:I

    .line 105
    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->mLastHeight:I

    .line 443
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/PanelDrawer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesBuffer:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/PanelDrawer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mLastWidth:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/PanelDrawer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/launcher2/PanelDrawer;->mLastWidth:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/PanelDrawer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mLastHeight:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/PanelDrawer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/launcher2/PanelDrawer;->mLastHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/PanelDrawer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/launcher2/PanelDrawer;->loadVBOs()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/PanelDrawer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesBuffer:I

    return v0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 406
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lcom/android/launcher2/PanelDrawer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 407
    .local v3, vertexShader:I
    if-nez v3, :cond_1

    move v2, v4

    .line 432
    :cond_0
    :goto_0
    return v2

    .line 411
    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lcom/android/launcher2/PanelDrawer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 412
    .local v1, pixelShader:I
    if-nez v1, :cond_2

    move v2, v4

    .line 413
    goto :goto_0

    .line 416
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 417
    .local v2, program:I
    if-eqz v2, :cond_0

    .line 418
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 419
    const-string v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PanelDrawer;->checkGlError(Ljava/lang/String;)V

    .line 420
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 421
    const-string v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PanelDrawer;->checkGlError(Ljava/lang/String;)V

    .line 422
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 423
    new-array v0, v6, [I

    .line 424
    .local v0, linkStatus:[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 425
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 426
    const-string v4, "PanelDrawer"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v4, "PanelDrawer"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 429
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 389
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 390
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 391
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 392
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 393
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 394
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 395
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 396
    const-string v2, "PanelDrawer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v2, "PanelDrawer"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 399
    const/4 v1, 0x0

    .line 402
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method

.method private loadTexture(Landroid/content/res/Resources;I)I
    .locals 11
    .parameter "resources"
    .parameter "resourceId"

    .prologue
    const/4 v5, 0x1

    const v10, 0x47012f00

    const v9, 0x46180400

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 132
    new-array v7, v5, [I

    .line 133
    .local v7, temp:[I
    invoke-static {v5, v7, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 134
    aget v8, v7, v1

    .line 135
    .local v8, texture:I
    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 136
    const/16 v5, 0x2801

    invoke-static {v0, v5, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 138
    const/16 v5, 0x2800

    invoke-static {v0, v5, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 141
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 142
    .local v6, opts:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1, p2, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 143
    .local v3, b:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 144
    const v5, 0x7f0200c5

    if-ne p2, v5, :cond_0

    .line 145
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 146
    :cond_0
    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v5, p0, Lcom/android/launcher2/PanelDrawer;->mTextureWidth:I

    .line 147
    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v5, p0, Lcom/android/launcher2/PanelDrawer;->mTextureHeight:I

    .line 148
    invoke-static {v3}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 149
    .local v2, internalFormat:I
    invoke-static {v3}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v4

    .local v4, type:I
    move v5, v1

    .line 150
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V

    .line 151
    const/16 v1, 0x2802

    invoke-static {v0, v1, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 153
    const/16 v1, 0x2803

    invoke-static {v0, v1, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 157
    .end local v2           #internalFormat:I
    .end local v4           #type:I
    :cond_1
    return v8
.end method

.method private loadVBOs()V
    .locals 10

    .prologue
    const v9, 0x88e4

    const v8, 0x8893

    const v7, 0x8892

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 260
    invoke-direct {p0}, Lcom/android/launcher2/PanelDrawer;->setNinePatch()V

    .line 265
    iget-object v3, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 267
    .local v0, indicies:Ljava/nio/ShortBuffer;
    iget-object v3, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 269
    iget-object v3, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesData:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 271
    .local v2, verticies:Ljava/nio/FloatBuffer;
    iget-object v3, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesData:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 273
    iget v3, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesBuffer:I

    if-nez v3, :cond_0

    .line 274
    new-array v1, v6, [I

    .line 275
    .local v1, vboIds:[I
    invoke-static {v6, v1, v5}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 276
    aget v3, v1, v5

    iput v3, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesBuffer:I

    .line 277
    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesBuffer:I

    .line 280
    .end local v1           #vboIds:[I
    :cond_0
    iget v3, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesBuffer:I

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 281
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v7, v3, v2, v9}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 283
    iget v3, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesBuffer:I

    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 284
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v8, v3, v0, v9}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 285
    return-void
.end method

.method private setNinePatch()V
    .locals 43

    .prologue
    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->mLastWidth:I

    move/from16 v42, v0

    .line 192
    .local v42, w:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->mLastHeight:I

    move/from16 v33, v0

    .line 194
    .local v33, h:I
    const/16 v2, 0x90

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/PanelDrawer;->mVerticiesData:[F

    .line 195
    const/16 v2, 0x36

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->mTextureWidth:I

    move/from16 v37, v0

    .line 208
    .local v37, surfaceWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->mTextureHeight:I

    move/from16 v36, v0

    .line 209
    .local v36, surfaceHeight:I
    move/from16 v35, v37

    .line 210
    .local v35, insetWidth:I
    move/from16 v34, v36

    .line 212
    .local v34, insetHeight:I
    const/16 v38, 0x0

    .line 213
    .local v38, vx0:F
    const/16 v40, 0x0

    .line 214
    .local v40, vy0:F
    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v39, v0

    .line 215
    .local v39, vx3:F
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v41, v0

    .line 220
    .local v41, vy3:F
    move/from16 v0, v42

    move/from16 v1, v35

    if-gt v0, v1, :cond_0

    .line 222
    const/4 v10, 0x0

    .line 223
    .local v10, tx1:F
    div-int v2, v37, v37

    int-to-float v0, v2

    move/from16 v20, v0

    .line 224
    .local v20, tx2:F
    const/4 v6, 0x0

    .line 225
    .local v6, vx1:F
    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v16, v0

    .line 233
    .local v16, vx2:F
    :goto_0
    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_1

    .line 235
    const/4 v11, 0x0

    .line 236
    .local v11, ty1:F
    div-int v2, v36, v36

    int-to-float v0, v2

    move/from16 v30, v0

    .line 237
    .local v30, ty2:F
    const/4 v7, 0x0

    .line 238
    .local v7, vy1:F
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v26, v0

    .line 246
    .local v26, vy2:F
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 247
    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move v14, v6

    move/from16 v17, v7

    move/from16 v18, v10

    move/from16 v21, v11

    invoke-direct/range {v12 .. v21}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 248
    const/4 v15, 0x2

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    move-object/from16 v14, p0

    move/from16 v18, v39

    move/from16 v19, v7

    move/from16 v23, v11

    invoke-direct/range {v14 .. v23}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 250
    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, p0

    move/from16 v24, v7

    move/from16 v25, v6

    move/from16 v28, v11

    move/from16 v29, v10

    invoke-direct/range {v21 .. v30}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 251
    const/4 v5, 0x4

    move-object/from16 v4, p0

    move/from16 v8, v16

    move/from16 v9, v26

    move/from16 v12, v20

    move/from16 v13, v30

    invoke-direct/range {v4 .. v13}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 252
    const/4 v15, 0x5

    const/high16 v22, 0x3f80

    move-object/from16 v14, p0

    move/from16 v17, v7

    move/from16 v18, v39

    move/from16 v19, v26

    move/from16 v21, v11

    move/from16 v23, v30

    invoke-direct/range {v14 .. v23}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 254
    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v29, 0x0

    const/high16 v32, 0x3f80

    move-object/from16 v23, p0

    move/from16 v27, v6

    move/from16 v28, v41

    move/from16 v31, v10

    invoke-direct/range {v23 .. v32}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 255
    const/16 v24, 0x7

    const/high16 v32, 0x3f80

    move-object/from16 v23, p0

    move/from16 v25, v6

    move/from16 v27, v16

    move/from16 v28, v41

    move/from16 v29, v10

    move/from16 v31, v20

    invoke-direct/range {v23 .. v32}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 256
    const/16 v15, 0x8

    const/high16 v22, 0x3f80

    const/high16 v23, 0x3f80

    move-object/from16 v14, p0

    move/from16 v17, v26

    move/from16 v18, v39

    move/from16 v19, v41

    move/from16 v21, v30

    invoke-direct/range {v14 .. v23}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 257
    return-void

    .line 229
    .end local v6           #vx1:F
    .end local v7           #vy1:F
    .end local v10           #tx1:F
    .end local v11           #ty1:F
    .end local v16           #vx2:F
    .end local v20           #tx2:F
    .end local v26           #vy2:F
    .end local v30           #ty2:F
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PanelDrawer;->mExpandX:I

    int-to-float v2, v2

    move/from16 v0, v37

    int-to-float v3, v0

    div-float v20, v2, v3

    .restart local v20       #tx2:F
    move/from16 v10, v20

    .line 230
    .restart local v10       #tx1:F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PanelDrawer;->mExpandX:I

    int-to-float v3, v3

    add-float v6, v2, v3

    .line 231
    .restart local v6       #vx1:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PanelDrawer;->mExpandX:I

    sub-int v2, v37, v2

    int-to-float v2, v2

    sub-float v16, v39, v2

    .restart local v16       #vx2:F
    goto/16 :goto_0

    .line 242
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PanelDrawer;->mExpandY:I

    int-to-float v2, v2

    move/from16 v0, v36

    int-to-float v3, v0

    div-float v30, v2, v3

    .restart local v30       #ty2:F
    move/from16 v11, v30

    .line 243
    .restart local v11       #ty1:F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PanelDrawer;->mExpandY:I

    int-to-float v3, v3

    add-float v7, v2, v3

    .line 244
    .restart local v7       #vy1:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PanelDrawer;->mExpandY:I

    sub-int v2, v36, v2

    int-to-float v2, v2

    sub-float v26, v41, v2

    .restart local v26       #vy2:F
    goto/16 :goto_1
.end method

.method private setQuad(IFFFFFFFF)V
    .locals 8
    .parameter "quadNumber"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "tl"
    .parameter "tt"
    .parameter "tr"
    .parameter "tb"

    .prologue
    .line 174
    mul-int/lit8 v0, p1, 0x4

    mul-int/lit8 v7, v0, 0x4

    .line 177
    .local v7, o:I
    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesData:[F

    add-int/lit8 v2, v7, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/PanelDrawer;->setVertex([FIFFFF)V

    .line 178
    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesData:[F

    add-int/lit8 v2, v7, 0x4

    move-object v0, p0

    move v3, p4

    move v4, p3

    move/from16 v5, p8

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/PanelDrawer;->setVertex([FIFFFF)V

    .line 179
    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesData:[F

    add-int/lit8 v2, v7, 0x8

    move-object v0, p0

    move v3, p4

    move v4, p5

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/PanelDrawer;->setVertex([FIFFFF)V

    .line 180
    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesData:[F

    add-int/lit8 v2, v7, 0xc

    move-object v0, p0

    move v3, p2

    move v4, p5

    move v5, p6

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/PanelDrawer;->setVertex([FIFFFF)V

    .line 182
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    mul-int/lit8 v1, p1, 0x6

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v2, p1, 0x4

    add-int/lit8 v2, v2, 0x0

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 183
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    mul-int/lit8 v1, p1, 0x6

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, p1, 0x4

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 184
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    mul-int/lit8 v1, p1, 0x6

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, p1, 0x4

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 185
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    mul-int/lit8 v1, p1, 0x6

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v2, p1, 0x4

    add-int/lit8 v2, v2, 0x0

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 186
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    mul-int/lit8 v1, p1, 0x6

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, p1, 0x4

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 187
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    mul-int/lit8 v1, p1, 0x6

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v2, p1, 0x4

    add-int/lit8 v2, v2, 0x3

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 188
    return-void
.end method

.method private setVertex([FIFFFF)V
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "x"
    .parameter "y"
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 166
    add-int/lit8 v0, p2, 0x0

    aput p3, p1, v0

    .line 167
    add-int/lit8 v0, p2, 0x1

    aput p4, p1, v0

    .line 168
    add-int/lit8 v0, p2, 0x2

    aput p5, p1, v0

    .line 169
    add-int/lit8 v0, p2, 0x3

    aput p6, p1, v0

    .line 170
    return-void
.end method


# virtual methods
.method public checkGlError(Ljava/lang/String;)V
    .locals 4
    .parameter "op"

    .prologue
    .line 437
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_0

    .line 438
    const-string v1, "PanelDrawer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    :cond_0
    return-void
.end method

.method public compilePrograms()V
    .locals 2

    .prologue
    .line 375
    const-string v0, "uniform mat4 uPMatrix;\nuniform mat4 uMVMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvarying vec2 vHighlightCoord;\nuniform vec2 uHighlightXMA;\nvoid main() {\n  gl_Position = (uPMatrix*uMVMatrix)*vec4(aPosition,0,1.);\n  vTextureCoord = aTextureCoord;\n  vHighlightCoord.x = (gl_Position.x/gl_Position.w)*uHighlightXMA[0]+uHighlightXMA[1];\n  vHighlightCoord.y = aTextureCoord.y;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nvarying vec2 vHighlightCoord;\nuniform sampler2D sTexture;\nuniform sampler2D sHighlight;\nuniform float uAlpha;\nuniform float uBackgroundDarken;\nuniform float uBaseDarken;\nvoid main() {\n  vec4 sampled = texture2D(sTexture, vTextureCoord);\n  float highlight = texture2D(sHighlight, vHighlightCoord).a;\n  float highlightMask = sampled.b; \n  float maskedHighlight = highlight*highlightMask; \n  float value = (sampled.g + maskedHighlight)*uAlpha;\n  float alpha = (sampled.r + maskedHighlight)*uAlpha + mix(uBackgroundDarken, uBaseDarken, sampled.b);\n  gl_FragColor = vec4(value, value, value, alpha);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/PanelDrawer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    .line 376
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "uPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->muPMatrixHandle:I

    .line 377
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "uMVMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->muMVMatrixHandle:I

    .line 378
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->maPositionHandle:I

    .line 379
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->maTextureCoordHandle:I

    .line 380
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->msTextureHandle:I

    .line 381
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "sHighlight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->msHighlightHandle:I

    .line 382
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->muAlpha:I

    .line 383
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "uBaseDarken"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->muBaseDarken:I

    .line 384
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "uBackgroundDarken"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->muBackgroundDarken:I

    .line 385
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "uHighlightXMA"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->muHighlightXMLHandle:I

    .line 386
    return-void
.end method

.method public hasLoadedResources()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 128
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/PanelDrawer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/launcher2/PanelDrawer;->mTexture:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public loadResources(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "resources"

    .prologue
    .line 115
    invoke-static {}, Lcom/android/launcher2/Utilities;->isFDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    const v1, 0x7f020008

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PanelDrawer;->mBitmap:Landroid/graphics/Bitmap;

    .line 126
    .end local v0           #opts:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer;->compilePrograms()V

    .line 121
    const v1, 0x7f0200c5

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/PanelDrawer;->loadTexture(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PanelDrawer;->mHighlightTexture:I

    .line 122
    const v1, 0x7f0200c4

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/PanelDrawer;->loadTexture(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PanelDrawer;->mTexture:I

    .line 123
    const v1, 0x7f0c006a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PanelDrawer;->mExpandX:I

    .line 124
    const v1, 0x7f0c006b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PanelDrawer;->mExpandY:I

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 576
    new-instance v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-direct {v0, p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;-><init>(Lcom/android/launcher2/PanelDrawer;)V

    return-object v0
.end method

.method public setViewport(II)V
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 108
    iput p1, p0, Lcom/android/launcher2/PanelDrawer;->mViewportWidth:I

    .line 109
    iput p2, p0, Lcom/android/launcher2/PanelDrawer;->mViewportHeight:I

    .line 110
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mProjectionMatrix:[F

    .line 111
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mProjectionMatrix:[F

    const/4 v1, 0x0

    int-to-float v3, p1

    int-to-float v4, p2

    const/high16 v6, -0x4080

    const/high16 v7, 0x3f80

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 112
    return-void
.end method
