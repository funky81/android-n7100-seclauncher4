.class public final Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedSurfaceState"
.end annotation


# instance fields
.field public height:I

.field public final surface:Landroid/view/Surface;

.field public width:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;II)V
    .locals 0
    .parameter "s"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 352
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    .line 354
    iput p2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->width:I

    .line 355
    iput p3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->height:I

    .line 356
    return-void
.end method
