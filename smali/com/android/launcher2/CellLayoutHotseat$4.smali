.class Lcom/android/launcher2/CellLayoutHotseat$4;
.super Ljava/lang/Object;
.source "CellLayoutHotseat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutHotseat;->setupAllAppsIcon(Landroid/content/Context;Lcom/android/launcher2/AllappsIcon;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutHotseat;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutHotseat;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutHotseat$4;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 589
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_1

    .line 590
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat$4;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat$4;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0
.end method
