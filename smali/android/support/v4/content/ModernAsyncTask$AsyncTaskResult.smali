.class Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Landroid/support/v4/content/ModernAsyncTask;


# direct methods
.method varargs constructor <init>(Landroid/support/v4/content/ModernAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "task"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/ModernAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, this:Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;,"Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult<TData;>;"
    .local p2, data:[Ljava/lang/Object;,"[TData;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroid/support/v4/content/ModernAsyncTask;

    .line 494
    iput-object p2, p0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 495
    return-void
.end method
