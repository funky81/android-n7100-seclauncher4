.class final Lcom/android/launcher2/PagedView$2;
.super Landroid/util/Property;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/android/launcher2/PagedView;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x1"

    .prologue
    .line 111
    .local p1, x0:Ljava/lang/Class;,"Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher2/PagedView;)Ljava/lang/Float;
    .locals 1
    .parameter "object"

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/android/launcher2/PagedView;->getPageBackgroundAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    check-cast p1, Lcom/android/launcher2/PagedView;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView$2;->get(Lcom/android/launcher2/PagedView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/android/launcher2/PagedView;Ljava/lang/Float;)V
    .locals 1
    .parameter "object"
    .parameter "value"

    .prologue
    .line 112
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/PagedView;->setPageBackgroundAlpha(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    check-cast p1, Lcom/android/launcher2/PagedView;

    .end local p1
    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedView$2;->set(Lcom/android/launcher2/PagedView;Ljava/lang/Float;)V

    return-void
.end method
