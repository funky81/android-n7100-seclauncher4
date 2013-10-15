.class Lcom/android/launcher2/HomeMagazineSoftKey$4;
.super Ljava/lang/Object;
.source "HomeMagazineSoftKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeMagazineSoftKey;->setup(Lcom/android/launcher2/HomeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeMagazineSoftKey;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeMagazineSoftKey;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/launcher2/HomeMagazineSoftKey$4;->this$0:Lcom/android/launcher2/HomeMagazineSoftKey;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 98
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey$4;->this$0:Lcom/android/launcher2/HomeMagazineSoftKey;

    #getter for: Lcom/android/launcher2/HomeMagazineSoftKey;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/HomeMagazineSoftKey;->access$000(Lcom/android/launcher2/HomeMagazineSoftKey;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    goto :goto_0
.end method
