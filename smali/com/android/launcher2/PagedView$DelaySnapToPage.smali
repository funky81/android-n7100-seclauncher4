.class Lcom/android/launcher2/PagedView$DelaySnapToPage;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelaySnapToPage"
.end annotation


# instance fields
.field private mDirection:I

.field private mDuration:I

.field private mPageIndex:I

.field final synthetic this$0:Lcom/android/launcher2/PagedView;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/PagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 3587
    iput-object p1, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->this$0:Lcom/android/launcher2/PagedView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/PagedView;Lcom/android/launcher2/PagedView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3587
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView$DelaySnapToPage;-><init>(Lcom/android/launcher2/PagedView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3608
    iget-object v0, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->this$0:Lcom/android/launcher2/PagedView;

    iget v1, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->mPageIndex:I

    iget v2, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->mDuration:I

    iget v3, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->mDirection:I

    #calls: Lcom/android/launcher2/PagedView;->snapToPageInternal(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/PagedView;->access$400(Lcom/android/launcher2/PagedView;III)V

    .line 3609
    return-void
.end method

.method public setup(III)V
    .locals 1
    .parameter "pageIndex"
    .parameter "duration"
    .parameter "direction"

    .prologue
    .line 3598
    iput p1, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->mPageIndex:I

    .line 3599
    iput p2, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->mDuration:I

    .line 3600
    iput p3, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->mDirection:I

    .line 3601
    iget-object v0, p0, Lcom/android/launcher2/PagedView$DelaySnapToPage;->this$0:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/PagedView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 3602
    return-void
.end method
