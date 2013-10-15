.class public Lcom/android/launcher2/BlendedDarkenView;
.super Landroid/view/View;
.source "BlendedDarkenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/BlendedDarkenView$Drawer;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "BlendedDarkenView"

.field private static mIndiciesBuffer:I = 0x0

.field private static mIndiciesData:[S = null

.field private static mProgram:I = 0x0

.field private static mVerticiesBuffer:I = 0x0

.field private static mVerticiesData:[F = null

.field private static maPositionHandle:I = 0x0

.field private static muAlpha:I = 0x0

.field private static final sFragmentSource:Ljava/lang/String; = "precision mediump float;\nuniform float uAlpha;\nvoid main() {\n  gl_FragColor = vec4(uAlpha);\n}\n"

.field private static final sVertexSource:Ljava/lang/String; = "attribute vec2 aPosition;\nvoid main() {\n  gl_Position = vec4(aPosition,0,1.);\n}\n"


# instance fields
.field private loaded:Z

.field final mDrawer:Lcom/android/launcher2/BlendedDarkenView$Drawer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/BlendedDarkenView;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/BlendedDarkenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/android/launcher2/BlendedDarkenView$Drawer;

    invoke-direct {v0, p0}, Lcom/android/launcher2/BlendedDarkenView$Drawer;-><init>(Lcom/android/launcher2/BlendedDarkenView;)V

    iput-object v0, p0, Lcom/android/launcher2/BlendedDarkenView;->mDrawer:Lcom/android/launcher2/BlendedDarkenView$Drawer;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/BlendedDarkenView;->loaded:Z

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/BlendedDarkenView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/launcher2/BlendedDarkenView;->loaded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/BlendedDarkenView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/launcher2/BlendedDarkenView;->loaded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/BlendedDarkenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/launcher2/BlendedDarkenView;->compilePrograms()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/BlendedDarkenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/launcher2/BlendedDarkenView;->loadVBOs()V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/android/launcher2/BlendedDarkenView;->mProgram:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesBuffer:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesBuffer:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/android/launcher2/BlendedDarkenView;->maPositionHandle:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/android/launcher2/BlendedDarkenView;->muAlpha:I

    return v0
.end method

.method private compilePrograms()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "attribute vec2 aPosition;\nvoid main() {\n  gl_Position = vec4(aPosition,0,1.);\n}\n"

    const-string v1, "precision mediump float;\nuniform float uAlpha;\nvoid main() {\n  gl_FragColor = vec4(uAlpha);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/BlendedDarkenView;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher2/BlendedDarkenView;->mProgram:I

    .line 92
    sget v0, Lcom/android/launcher2/BlendedDarkenView;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher2/BlendedDarkenView;->maPositionHandle:I

    .line 93
    sget v0, Lcom/android/launcher2/BlendedDarkenView;->mProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher2/BlendedDarkenView;->muAlpha:I

    .line 94
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 116
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lcom/android/launcher2/BlendedDarkenView;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 117
    .local v3, vertexShader:I
    if-nez v3, :cond_1

    move v2, v4

    .line 142
    :cond_0
    :goto_0
    return v2

    .line 121
    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lcom/android/launcher2/BlendedDarkenView;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 122
    .local v1, pixelShader:I
    if-nez v1, :cond_2

    move v2, v4

    .line 123
    goto :goto_0

    .line 126
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 127
    .local v2, program:I
    if-eqz v2, :cond_0

    .line 128
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 129
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 130
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 131
    new-array v0, v6, [I

    .line 132
    .local v0, linkStatus:[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 133
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 134
    sget-boolean v4, Lcom/android/launcher2/BlendedDarkenView;->DEBUGGABLE:Z

    if-eqz v4, :cond_3

    .line 135
    const-string v4, "BlendedDarkenView"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v4, "BlendedDarkenView"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_3
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 139
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 98
    .local v1, shader:I
    if-eqz v1, :cond_1

    .line 99
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 100
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 101
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 102
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 103
    aget v2, v0, v3

    if-nez v2, :cond_1

    .line 104
    sget-boolean v2, Lcom/android/launcher2/BlendedDarkenView;->DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "BlendedDarkenView"

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

    .line 106
    const-string v2, "BlendedDarkenView"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 109
    const/4 v1, 0x0

    .line 112
    .end local v0           #compiled:[I
    :cond_1
    return v1
.end method

.method private loadVBOs()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 150
    const/16 v7, 0x8

    new-array v7, v7, [F

    sput-object v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesData:[F

    .line 151
    const/4 v7, 0x6

    new-array v7, v7, [S

    sput-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    .line 152
    const/high16 v2, -0x4080

    .line 153
    .local v2, left:F
    const/high16 v4, 0x3f80

    .line 154
    .local v4, top:F
    const/high16 v3, 0x3f80

    .line 155
    .local v3, right:F
    const/high16 v0, -0x4080

    .line 156
    .local v0, bottom:F
    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesData:[F

    invoke-direct {p0, v7, v9, v2, v4}, Lcom/android/launcher2/BlendedDarkenView;->setVertex([FIFF)V

    .line 157
    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesData:[F

    invoke-direct {p0, v7, v10, v3, v4}, Lcom/android/launcher2/BlendedDarkenView;->setVertex([FIFF)V

    .line 158
    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesData:[F

    invoke-direct {p0, v7, v13, v3, v0}, Lcom/android/launcher2/BlendedDarkenView;->setVertex([FIFF)V

    .line 159
    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesData:[F

    const/4 v8, 0x6

    invoke-direct {p0, v7, v8, v2, v0}, Lcom/android/launcher2/BlendedDarkenView;->setVertex([FIFF)V

    .line 161
    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    aput-short v9, v7, v9

    .line 162
    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    aput-short v11, v7, v11

    .line 163
    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    aput-short v10, v7, v10

    .line 164
    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    aput-short v9, v7, v12

    .line 165
    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    aput-short v10, v7, v13

    .line 166
    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    const/4 v8, 0x5

    aput-short v12, v7, v8

    .line 172
    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 174
    .local v1, indicies:Ljava/nio/ShortBuffer;
    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    invoke-virtual {v1, v7}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesData:[F

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 178
    .local v6, verticies:Ljava/nio/FloatBuffer;
    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesData:[F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    sget v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesBuffer:I

    if-nez v7, :cond_0

    .line 181
    new-array v5, v10, [I

    .line 182
    .local v5, vboIds:[I
    invoke-static {v10, v5, v9}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 183
    aget v7, v5, v9

    sput v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesBuffer:I

    .line 184
    aget v7, v5, v11

    sput v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesBuffer:I

    .line 187
    .end local v5           #vboIds:[I
    :cond_0
    const v7, 0x8892

    sget v8, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesBuffer:I

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 188
    const v7, 0x8892

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    const v9, 0x88e4

    invoke-static {v7, v8, v6, v9}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 190
    const v7, 0x8893

    sget v8, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesBuffer:I

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 191
    const v7, 0x8893

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    const v9, 0x88e4

    invoke-static {v7, v8, v1, v9}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 192
    return-void
.end method

.method private setVertex([FIFF)V
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 146
    add-int/lit8 v0, p2, 0x0

    aput p3, p1, v0

    .line 147
    add-int/lit8 v0, p2, 0x1

    aput p4, p1, v0

    .line 148
    return-void
.end method


# virtual methods
.method public checkGlError(Ljava/lang/String;)V
    .locals 4
    .parameter "op"

    .prologue
    .line 196
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_1

    .line 197
    sget-boolean v1, Lcom/android/launcher2/BlendedDarkenView;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "BlendedDarkenView"

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

    .line 198
    :cond_0
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

    .line 200
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView;->mDrawer:Lcom/android/launcher2/BlendedDarkenView$Drawer;

    invoke-static {p1, v0}, Lcom/android/launcher2/DrawGLFunction;->call(Landroid/graphics/Canvas;Lcom/android/launcher2/DrawGLFunction$Callback;)V

    .line 50
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 248
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 249
    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView;->mDrawer:Lcom/android/launcher2/BlendedDarkenView$Drawer;

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V

    .line 250
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView;->mDrawer:Lcom/android/launcher2/BlendedDarkenView$Drawer;

    #getter for: Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F
    invoke-static {v0}, Lcom/android/launcher2/BlendedDarkenView$Drawer;->access$000(Lcom/android/launcher2/BlendedDarkenView$Drawer;)F

    move-result v0

    return v0
.end method

.method public onSetAlpha(I)Z
    .locals 4
    .parameter "a"

    .prologue
    const/4 v3, 0x1

    .line 55
    const/16 v0, 0xff

    if-ne p1, v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v3

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView;->mDrawer:Lcom/android/launcher2/BlendedDarkenView$Drawer;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView;->mDrawer:Lcom/android/launcher2/BlendedDarkenView$Drawer;

    int-to-float v1, p1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    #setter for: Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F
    invoke-static {v0, v1}, Lcom/android/launcher2/BlendedDarkenView$Drawer;->access$002(Lcom/android/launcher2/BlendedDarkenView$Drawer;F)F

    goto :goto_0
.end method
