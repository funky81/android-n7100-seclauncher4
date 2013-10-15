.class Landroid/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"

# interfaces
.implements Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseEdgeEffectImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 1
    .parameter "edgeEffect"
    .parameter "canvas"

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public finish(Ljava/lang/Object;)V
    .locals 0
    .parameter "edgeEffect"

    .prologue
    .line 73
    return-void
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .locals 1
    .parameter "edgeEffect"

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAbsorb(Ljava/lang/Object;I)Z
    .locals 1
    .parameter "edgeEffect"
    .parameter "velocity"

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onPull(Ljava/lang/Object;F)Z
    .locals 1
    .parameter "edgeEffect"
    .parameter "deltaDistance"

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onRelease(Ljava/lang/Object;)Z
    .locals 1
    .parameter "edgeEffect"

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public setSize(Ljava/lang/Object;II)V
    .locals 0
    .parameter "edgeEffect"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 66
    return-void
.end method

.method public setTouchWizCustomization(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "edgeEffect"
    .parameter "edge"
    .parameter "glow"

    .prologue
    .line 91
    return-void
.end method
