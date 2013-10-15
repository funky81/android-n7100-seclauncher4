.class Lcom/android/launcher2/QuickViewWorkspace$1;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickViewWorkspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;)V
    .locals 0
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 685
    .local v7, tag:Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/Number;

    if-nez v8, :cond_0

    .line 725
    .end local v7           #tag:Ljava/lang/Object;
    :goto_0
    return-void

    .line 686
    .restart local v7       #tag:Ljava/lang/Object;
    :cond_0
    check-cast v7, Ljava/lang/Number;

    .end local v7           #tag:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 693
    .local v6, index:I
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 695
    .local v1, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v8

    if-eq v6, v8, :cond_1

    .line 697
    const v8, 0x7f0e006d

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 703
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    iget-object v8, v8, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v8, v6}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setHomeScreenAt(I)V

    .line 708
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v2

    .line 709
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_4

    .line 710
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8, v5}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 711
    .local v0, child:Landroid/view/View;
    instance-of v8, v0, Landroid/view/ViewGroup;

    if-eqz v8, :cond_2

    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lt v8, v9, :cond_2

    .line 712
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 713
    .local v4, homeButtonContainer:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lt v8, v9, :cond_2

    .line 714
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 715
    .local v3, homeButton:Landroid/view/View;
    instance-of v8, v3, Landroid/widget/CompoundButton;

    if-eqz v8, :cond_2

    .line 719
    check-cast v3, Landroid/widget/CompoundButton;

    .end local v3           #homeButton:Landroid/view/View;
    if-ne v5, v6, :cond_3

    move v8, v9

    :goto_2
    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 709
    .end local v4           #homeButtonContainer:Landroid/view/ViewGroup;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .restart local v4       #homeButtonContainer:Landroid/view/ViewGroup;
    :cond_3
    move v8, v10

    .line 719
    goto :goto_2

    .line 724
    .end local v4           #homeButtonContainer:Landroid/view/ViewGroup;
    :cond_4
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto :goto_0
.end method
