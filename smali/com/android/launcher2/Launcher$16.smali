.class Lcom/android/launcher2/Launcher$16;
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
    .line 3477
    iput-object p1, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$16;->val$magazine_cling_message_checkbox_check:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$16;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p4, p0, Lcom/android/launcher2/Launcher$16;->val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    iput-object p5, p0, Lcom/android/launcher2/Launcher$16;->val$m_cling:Landroid/widget/RelativeLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3480
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$magazine_cling_message_checkbox_check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3481
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SHOW_MAGAZINE_CLING_MSG"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3482
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3484
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 3485
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 3486
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 3487
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$m_cling:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3488
    return-void
.end method
