.class Lcom/android/launcher2/MenuEditBar$3;
.super Ljava/lang/Object;
.source "MenuEditBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuEditBar;->newPage(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuEditBar;

.field final synthetic val$mv:Lcom/android/launcher2/MenuView;

.field final synthetic val$newScreenPos:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/MenuView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/launcher2/MenuEditBar$3;->this$0:Lcom/android/launcher2/MenuEditBar;

    iput-object p2, p0, Lcom/android/launcher2/MenuEditBar$3;->val$mv:Lcom/android/launcher2/MenuView;

    iput p3, p0, Lcom/android/launcher2/MenuEditBar$3;->val$newScreenPos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 420
    const-string v1, "MenuEditBar"

    const-string v2, "newPage appModelUpdated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar$3;->val$mv:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->appModelUpdated()V

    .line 422
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar$3;->val$mv:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    .line 423
    .local v0, mag:Lcom/android/launcher2/MenuAppsGrid;
    if-eqz v0, :cond_0

    .line 424
    iget v1, p0, Lcom/android/launcher2/MenuEditBar$3;->val$newScreenPos:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    .line 426
    :cond_0
    return-void
.end method
