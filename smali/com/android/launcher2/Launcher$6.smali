.class Lcom/android/launcher2/Launcher$6;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Lcom/android/launcher2/popup/PopupMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 2257
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$702(Z)Z

    .line 2258
    return-void
.end method
