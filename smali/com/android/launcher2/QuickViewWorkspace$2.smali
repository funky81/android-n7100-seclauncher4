.class Lcom/android/launcher2/QuickViewWorkspace$2;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickViewWorkspace;->removeScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickViewWorkspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;)V
    .locals 0
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$2;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 990
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e00c7

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 991
    return-void
.end method
