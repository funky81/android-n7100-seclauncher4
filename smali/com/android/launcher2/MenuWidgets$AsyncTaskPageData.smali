.class Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;
.super Ljava/lang/Object;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncTaskPageData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;
    }
.end annotation


# instance fields
.field final cellHeight:I

.field final cellWidth:I

.field final doInBackgroundCallback:Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;

.field generatedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field final layout:Lcom/android/launcher2/PagedViewGridLayout;

.field final page:I

.field final postExecuteCallback:Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;IILcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;)V
    .locals 1
    .parameter "pl"
    .parameter "p"
    .parameter
    .parameter "cw"
    .parameter "ch"
    .parameter "bgR"
    .parameter "postR"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/PagedViewGridLayout;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;II",
            "Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;",
            "Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1024
    .local p3, l:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput p2, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    .line 1026
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    .line 1027
    iput-object p3, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->items:Ljava/util/List;

    .line 1028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 1029
    iput p4, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellWidth:I

    .line 1030
    iput p5, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellHeight:I

    .line 1031
    iput-object p6, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->doInBackgroundCallback:Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;

    .line 1032
    iput-object p7, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->postExecuteCallback:Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;

    .line 1033
    return-void
.end method


# virtual methods
.method cleanup(Ljava/lang/String;Z)V
    .locals 1
    .parameter "who"
    .parameter "cancelled"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1043
    :cond_0
    return-void
.end method
