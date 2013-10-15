.class Landroid/support/v4/widget/EdgeEffectCompatIcs;
.super Ljava/lang/Object;
.source "EdgeEffectCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 1
    .parameter "edgeEffect"
    .parameter "canvas"

    .prologue
    .line 64
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public static finish(Ljava/lang/Object;)V
    .locals 0
    .parameter "edgeEffect"

    .prologue
    .line 44
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    .line 45
    return-void
.end method

.method public static isFinished(Ljava/lang/Object;)Z
    .locals 1
    .parameter "edgeEffect"

    .prologue
    .line 40
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public static newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static onAbsorb(Ljava/lang/Object;I)Z
    .locals 1
    .parameter "edgeEffect"
    .parameter "velocity"

    .prologue
    .line 59
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public static onPull(Ljava/lang/Object;F)Z
    .locals 1
    .parameter "edgeEffect"
    .parameter "deltaDistance"

    .prologue
    .line 48
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public static onRelease(Ljava/lang/Object;)Z
    .locals 2
    .parameter "edgeEffect"

    .prologue
    .line 53
    move-object v0, p0

    check-cast v0, Landroid/widget/EdgeEffect;

    .line 54
    .local v0, eff:Landroid/widget/EdgeEffect;
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 55
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    return v1
.end method

.method public static setSize(Ljava/lang/Object;II)V
    .locals 0
    .parameter "edgeEffect"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 36
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 37
    return-void
.end method

.method public static setTouchWizCustomization(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "edgeEffect"
    .parameter "edgeIcs"
    .parameter "glowIcs"

    .prologue
    .line 68
    :try_start_0
    const-class v1, Landroid/widget/EdgeEffect;

    const-string v2, "setTouchWizCustomization"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 69
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    goto :goto_0
.end method
