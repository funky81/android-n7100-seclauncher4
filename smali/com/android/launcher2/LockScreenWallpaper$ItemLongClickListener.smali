.class Lcom/android/launcher2/LockScreenWallpaper$ItemLongClickListener;
.super Ljava/lang/Object;
.source "LockScreenWallpaper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LockScreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LockScreenWallpaper;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LockScreenWallpaper;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/launcher2/LockScreenWallpaper$ItemLongClickListener;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper$ItemLongClickListener;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/launcher2/LockScreenWallpaper;->access$500(Lcom/android/launcher2/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 376
    .local v0, in:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 377
    iget-object v1, p0, Lcom/android/launcher2/LockScreenWallpaper$ItemLongClickListener;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    .line 378
    const/4 v1, 0x1

    return v1
.end method
