.class Lcom/android/launcher2/ShadowBuilder;
.super Lcom/android/launcher2/UpdateableShadowBuilder;
.source "ShadowBuilder.java"


# static fields
.field private static final DEFAULT_SCALE_FACTOR:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "ShadowBuilder"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field mDrawGlow:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private mScaleFactor:F

.field private mScaleInDraw:Z

.field private mTouch:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 42
    const v0, 0x3f666666

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;F)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/view/View;F)V
    .locals 1
    .parameter "v"
    .parameter "scalefactor"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/launcher2/UpdateableShadowBuilder;-><init>(Landroid/view/View;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    .line 38
    const v0, 0x3f666666

    iput v0, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    .line 47
    iput p2, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    .line 48
    iget v0, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/ShadowBuilder;->createBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/launcher2/ShadowBuilder;->init(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "v"
    .parameter "b"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/launcher2/UpdateableShadowBuilder;-><init>(Landroid/view/View;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    .line 38
    const v0, 0x3f666666

    iput v0, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    .line 54
    iput-object p2, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/launcher2/ShadowBuilder;->init(Landroid/view/View;)V

    .line 56
    return-void
.end method

.method private createBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "v"
    .parameter "scaleFactor"

    .prologue
    .line 60
    instance-of v3, p1, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v2, v3

    .line 62
    .local v2, scaledWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v1, v3

    .local v1, scaledHeight:I
    move-object v3, p1

    .line 63
    check-cast v3, Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v3, v2, v1}, Lcom/android/launcher2/SurfaceWidgetView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 65
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleInDraw:Z

    .line 74
    .end local v1           #scaledHeight:I
    .end local v2           #scaledWidth:I
    :goto_0
    return-object v0

    .line 69
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    sget v4, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-static {p1, v3, v4}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleInDraw:Z

    goto :goto_0
.end method

.method private init(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    .line 79
    .local v4, scale:F
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 80
    .local v3, p:Landroid/view/ViewParent;
    :goto_0
    instance-of v5, v3, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v5, v3

    .line 81
    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    .line 82
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    .line 84
    :cond_0
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    .line 86
    instance-of v5, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v5, :cond_4

    move-object v5, p1

    .line 87
    check-cast v5, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/AppIconView;->getLastTouchPoint()[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    .line 89
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    move v1, v6

    .line 90
    .local v1, bitmapWidth:I
    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v7, v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 92
    iput v4, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    .line 127
    .end local v1           #bitmapWidth:I
    :goto_2
    instance-of v5, p1, Landroid/widget/ImageView;

    if-nez v5, :cond_1

    instance-of v5, p1, Lcom/android/launcher2/SamsungWidgetView;

    if-nez v5, :cond_1

    instance-of v5, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v5, :cond_1

    instance-of v5, p1, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v5, :cond_2

    .line 129
    :cond_1
    iput-boolean v9, p0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/ShadowBuilder;->resetPaint()V

    .line 133
    return-void

    .line 89
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_1

    .line 94
    :cond_4
    instance-of v5, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v5, :cond_5

    move-object v5, p1

    .line 95
    check-cast v5, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLastTouchPoint()[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    .line 96
    sget v5, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v2, v5, 0x2

    .line 97
    .local v2, halfPad:I
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v7, v5, v6

    add-int/2addr v7, v2

    aput v7, v5, v6

    .line 98
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v7, v5, v9

    add-int/2addr v7, v2

    aput v7, v5, v9

    .line 101
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v7, v5, v6

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    aput v7, v5, v6

    .line 102
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v6, v5, v9

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    aput v6, v5, v9

    goto :goto_2

    .line 103
    .end local v2           #halfPad:I
    :cond_5
    instance-of v5, p1, Lcom/android/launcher2/SamsungWidgetView;

    if-eqz v5, :cond_6

    move-object v5, p1

    .line 104
    check-cast v5, Lcom/android/launcher2/SamsungWidgetView;

    invoke-virtual {v5}, Lcom/android/launcher2/SamsungWidgetView;->getLastTouchPoint()[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    .line 105
    sget v5, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v2, v5, 0x2

    .line 106
    .restart local v2       #halfPad:I
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v7, v5, v6

    add-int/2addr v7, v2

    aput v7, v5, v6

    .line 107
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v7, v5, v9

    add-int/2addr v7, v2

    aput v7, v5, v9

    .line 110
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v7, v5, v6

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    aput v7, v5, v6

    .line 111
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v6, v5, v9

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    aput v6, v5, v9

    goto :goto_2

    .line 112
    .end local v2           #halfPad:I
    :cond_6
    instance-of v5, p1, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v5, :cond_7

    move-object v5, p1

    .line 113
    check-cast v5, Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v5}, Lcom/android/launcher2/SurfaceWidgetView;->getLastTouchPoint()[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    .line 114
    sget v5, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v2, v5, 0x2

    .line 115
    .restart local v2       #halfPad:I
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v7, v5, v6

    add-int/2addr v7, v2

    aput v7, v5, v6

    .line 116
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v7, v5, v9

    add-int/2addr v7, v2

    aput v7, v5, v9

    .line 119
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v7, v5, v6

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    aput v7, v5, v6

    .line 120
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v6, v5, v9

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    aput v6, v5, v9

    goto/16 :goto_2

    .line 122
    .end local v2           #halfPad:I
    :cond_7
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_8

    move v1, v6

    .line 123
    .restart local v1       #bitmapWidth:I
    :goto_3
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_9

    move v0, v6

    .line 124
    .local v0, bitmapHeight:I
    :goto_4
    const/4 v5, 0x2

    new-array v5, v5, [I

    div-int/lit8 v7, v1, 0x2

    aput v7, v5, v6

    div-int/lit8 v6, v0, 0x2

    aput v6, v5, v9

    iput-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    goto/16 :goto_2

    .line 122
    .end local v0           #bitmapHeight:I
    .end local v1           #bitmapWidth:I
    :cond_8
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_3

    .line 123
    .restart local v1       #bitmapWidth:I
    :cond_9
    iget-object v5, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_4
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTouchOffset()[I
    .locals 5

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 206
    .local v0, r:[I
    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    iget v4, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 207
    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    iget v4, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 209
    return-object v0
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 155
    iget-object v7, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 156
    :cond_0
    const-string v7, "ShadowBuilder"

    const-string v8, "Bitmap is recycled; draw ignored"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 161
    .local v6, width:I
    iget-object v7, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 163
    .local v3, height:I
    iget-boolean v7, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleInDraw:Z

    if-eqz v7, :cond_3

    .line 164
    iget v7, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    iget v8, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 167
    :cond_3
    iget-boolean v7, p0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    if-eqz v7, :cond_4

    sget v7, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v4, v7, 0x2

    .line 168
    .local v4, p:I
    :goto_1
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v7, v4

    int-to-float v8, v4

    sub-int v9, v6, v4

    int-to-float v9, v9

    sub-int v10, v3, v4

    int-to-float v10, v10

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 170
    .local v2, dst:Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 172
    iget-boolean v7, p0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    if-eqz v7, :cond_1

    .line 173
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 174
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 175
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 178
    .local v1, d:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 179
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    iget-object v7, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 184
    sget-object v7, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {v7, v1, v0, v8, v9}, Lcom/android/launcher2/HolographicOutlineHelper;->applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 185
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    const/4 v7, 0x0

    const/4 v8, 0x0

    int-to-float v9, v6

    int-to-float v10, v3

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 188
    const/4 v7, 0x0

    invoke-virtual {p1, v1, v7, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 167
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #d:Landroid/graphics/Bitmap;
    .end local v2           #dst:Landroid/graphics/RectF;
    .end local v4           #p:I
    .end local v5           #paint:Landroid/graphics/Paint;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .parameter "size"
    .parameter "touch"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 146
    const-string v0, "ShadowBuilder"

    const-string v1, "Bitmap is null. shadow metrics not provided"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 150
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public resetPaint()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 194
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, -0x808081

    const/high16 v3, -0x100

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 195
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    .line 137
    return-void
.end method
