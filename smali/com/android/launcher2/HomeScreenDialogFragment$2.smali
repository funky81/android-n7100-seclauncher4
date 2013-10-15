.class Lcom/android/launcher2/HomeScreenDialogFragment$2;
.super Ljava/lang/Object;
.source "HomeScreenDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$download_contents:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenDialogFragment;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->val$download_contents:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->val$c:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 150
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->val$download_contents:Ljava/lang/String;

    const-string v4, "Wallpaper"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    add-int/lit8 p3, p3, -0x1

    .line 152
    :cond_0
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_1

    if-nez p3, :cond_2

    .line 153
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismiss()V

    .line 154
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenDialogFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    packed-switch p3, :pswitch_data_0

    .line 188
    :cond_3
    :goto_0
    return-void

    .line 157
    :pswitch_0
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v3, :cond_3

    .line 161
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://waprd.telstra.com/redirect?target=3glatestpics"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 163
    .local v2, chooserDownloadWallpaper:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/HomeScreenDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    .end local v2           #chooserDownloadWallpaper:Landroid/content/Intent;
    :pswitch_1
    sput-boolean v5, Lcom/android/launcher2/HomeScreenDialogFragment;->homescreenSelected:Z

    .line 167
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->val$c:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, p3}, Lcom/android/launcher2/HomeView;->startWallpaper(I)V

    goto :goto_0

    .line 170
    :pswitch_2
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v3, :cond_3

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string v3, "sec.android.launcher2.intent.action.LOCK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, chooserBothWallpaper:Landroid/content/Intent;
    const-string v3, "both"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/HomeScreenDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    .end local v1           #chooserBothWallpaper:Landroid/content/Intent;
    :pswitch_3
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v3, :cond_3

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v3, "sec.android.launcher2.intent.action.LOCK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, chooser:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenDialogFragment$2;->this$0:Lcom/android/launcher2/HomeScreenDialogFragment;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/HomeScreenDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
