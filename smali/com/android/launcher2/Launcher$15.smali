.class Lcom/android/launcher2/Launcher$15;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->showMagazineCling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

.field final synthetic val$m_cling:Landroid/widget/RelativeLayout;

.field final synthetic val$magazine_cling_message_checkbox_check:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;[Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3456
    iput-object p1, p0, Lcom/android/launcher2/Launcher$15;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$15;->val$magazine_cling_message_checkbox_check:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$15;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p4, p0, Lcom/android/launcher2/Launcher$15;->val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    iput-object p5, p0, Lcom/android/launcher2/Launcher$15;->val$m_cling:Landroid/widget/RelativeLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3459
    iget-object v1, p0, Lcom/android/launcher2/Launcher$15;->val$magazine_cling_message_checkbox_check:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3460
    iget-object v1, p0, Lcom/android/launcher2/Launcher$15;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SHOW_MAGAZINE_CLING_MSG"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3461
    iget-object v1, p0, Lcom/android/launcher2/Launcher$15;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3463
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher$15;->val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher$15;->val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 3464
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher$15;->val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Launcher$15;->val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 3465
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher$15;->val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v5

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/Launcher$15;->val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 3466
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/Launcher$15;->val$m_cling:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3469
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3470
    const-string v1, "helphub:section"

    const-string v2, "mymagazine"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3471
    iget-object v1, p0, Lcom/android/launcher2/Launcher$15;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 3472
    return-void
.end method
