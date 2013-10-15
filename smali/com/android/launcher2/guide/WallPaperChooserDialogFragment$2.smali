.class Lcom/android/launcher2/guide/WallPaperChooserDialogFragment$2;
.super Ljava/lang/Object;
.source "WallPaperChooserDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment$2;->this$0:Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment$2;->this$0:Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->createdialog:Z

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, intentCallWallpaperChooser:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.wallpaperchooser"

    const-string v3, "com.sec.android.app.wallpaperchooser.WallpaperChooser"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 109
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    const-string v1, "mode"

    const-string v2, "Guide_Mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment$2;->this$0:Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;

    const/16 v2, 0x6f

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/guide/WallPaperChooserDialogFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    return-void
.end method
