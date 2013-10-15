.class Lcom/android/launcher2/CreateFolderDialog$2$1;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CreateFolderDialog$2;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/CreateFolderDialog$2;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CreateFolderDialog$2;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog$2$1;->this$1:Lcom/android/launcher2/CreateFolderDialog$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 202
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    .line 203
    return-void
.end method
