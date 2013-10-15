.class public Lcom/android/launcher2/Outliner;
.super Ljava/lang/Object;
.source "Outliner.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "drawglfunction"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boxOutline(II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 36
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    .local v0, out:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/launcher2/Outliner;->nBoxOutline(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to create box outline."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    return-object v0
.end method

.method private static native nBoxOutline(Landroid/graphics/Bitmap;)Z
.end method

.method private static native nOutline(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
.end method

.method public static outline(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "b"

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    .local v0, out:Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lcom/android/launcher2/Outliner;->nOutline(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to create outline."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    return-object v0
.end method
