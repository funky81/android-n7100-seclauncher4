.class public Lcom/android/launcher2/tabs/TabManager;
.super Ljava/lang/Object;
.source "TabManager.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/tabs/TabManager$DummyTabFactory;,
        Lcom/android/launcher2/tabs/TabManager$TabInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "TabManager"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContainerId:I

.field private mEndTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

.field private final mTabHost:Lcom/android/launcher2/MenuView;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private final mTabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/tabs/TabManager$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/launcher2/MenuView;I)V
    .locals 1
    .parameter "activity"
    .parameter "tabHost"
    .parameter "containerId"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    .line 71
    iput-object p1, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    .line 72
    iput-object p2, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    .line 73
    iput p3, p0, Lcom/android/launcher2/tabs/TabManager;->mContainerId:I

    .line 74
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuView;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 75
    return-void
.end method

.method private onAddTab(Landroid/app/Fragment;)V
    .locals 2
    .parameter "frag"

    .prologue
    .line 346
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/MenuView$NeedsTabHost;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 347
    check-cast v0, Lcom/android/launcher2/MenuView$NeedsTabHost;

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-interface {v0, v1}, Lcom/android/launcher2/MenuView$NeedsTabHost;->setTabHost(Lcom/android/launcher2/MenuView;)V

    .line 348
    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    check-cast p1, Lcom/android/launcher2/MenuView$NeedsTabHost;

    .end local p1
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-interface {p1, v0}, Lcom/android/launcher2/MenuView$NeedsTabHost;->onHideTab(Lcom/android/launcher2/MenuView;)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 351
    .restart local p1
    :cond_1
    check-cast p1, Lcom/android/launcher2/MenuView$NeedsTabHost;

    .end local p1
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-interface {p1, v0}, Lcom/android/launcher2/MenuView$NeedsTabHost;->onShowTab(Lcom/android/launcher2/MenuView;)V

    goto :goto_0
.end method

.method private onHideTab(Landroid/app/Fragment;)V
    .locals 1
    .parameter "frag"

    .prologue
    .line 334
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/MenuView$NeedsTabHost;

    if-eqz v0, :cond_0

    .line 335
    check-cast p1, Lcom/android/launcher2/MenuView$NeedsTabHost;

    .end local p1
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-interface {p1, v0}, Lcom/android/launcher2/MenuView$NeedsTabHost;->onHideTab(Lcom/android/launcher2/MenuView;)V

    .line 337
    :cond_0
    return-void
.end method

.method private onShowTab(Landroid/app/Fragment;)V
    .locals 1
    .parameter "frag"

    .prologue
    .line 340
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/MenuView$NeedsTabHost;

    if-eqz v0, :cond_0

    .line 341
    check-cast p1, Lcom/android/launcher2/MenuView$NeedsTabHost;

    .end local p1
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-interface {p1, v0}, Lcom/android/launcher2/MenuView$NeedsTabHost;->onShowTab(Lcom/android/launcher2/MenuView;)V

    .line 343
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .parameter "tabSpec"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v3, Lcom/android/launcher2/tabs/TabManager$DummyTabFactory;

    iget-object v4, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/android/launcher2/tabs/TabManager$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 85
    new-instance v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3}, Lcom/android/launcher2/tabs/TabManager$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 90
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 91
    .local v1, fragManager:Landroid/app/FragmentManager;
    iget-object v3, v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    #setter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2, v3}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$002(Lcom/android/launcher2/tabs/TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 92
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 98
    :cond_0
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher2/tabs/TabManager;->onAddTab(Landroid/app/Fragment;)V

    .line 101
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/MenuView;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 103
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    .line 104
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v3, :cond_2

    .line 105
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 106
    .local v0, endTabIndex:I
    if-lez v0, :cond_1

    .line 107
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 111
    .end local v0           #endTabIndex:I
    :cond_2
    return-void
.end method

.method public attachFragments()V
    .locals 4

    .prologue
    .line 288
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 289
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 290
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eq v2, v3, :cond_0

    .line 291
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 292
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 296
    .end local v2           #info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 298
    :goto_1
    return-void

    .line 297
    :cond_2
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method public changeTabFragment(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .parameter "tabId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p2, newClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 242
    .local v2, tab:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    if-nez v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    #setter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v2, p2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$102(Lcom/android/launcher2/tabs/TabManager$TabInfo;Ljava/lang/Class;)Ljava/lang/Class;

    .line 245
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$100(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$200(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .line 247
    .local v1, newFrag:Landroid/app/Fragment;
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/tabs/TabManager;->mContainerId:I

    iget-object v5, v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 250
    .local v0, ft:Landroid/app/FragmentTransaction;
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 254
    :cond_2
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 255
    #setter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2, v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$002(Lcom/android/launcher2/tabs/TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 256
    invoke-direct {p0, v1}, Lcom/android/launcher2/tabs/TabManager;->onAddTab(Landroid/app/Fragment;)V

    goto :goto_0
.end method

.method public detachFragments()V
    .locals 4

    .prologue
    .line 266
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 267
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 268
    .local v2, info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eq v2, v3, :cond_0

    .line 269
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 279
    .end local v2           #info:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    :cond_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 280
    return-void
.end method

.method public getCurrentlyShownFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .parameter "tabId"

    .prologue
    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;
    .locals 6
    .parameter "tabId"
    .parameter "createFragmentIfNeccessary"

    .prologue
    .line 210
    iget-object v2, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 211
    .local v1, tab:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 224
    :goto_0
    return-object v2

    .line 213
    :cond_0
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$100(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$200(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    #setter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1, v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$002(Lcom/android/launcher2/tabs/TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 215
    iget-object v2, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/tabs/TabManager;->mContainerId:I

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 218
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 222
    :goto_1
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/tabs/TabManager;->onAddTab(Landroid/app/Fragment;)V

    .line 224
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_1
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    goto :goto_0

    .line 221
    .restart local v0       #ft:Landroid/app/FragmentTransaction;
    :cond_2
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1
.end method

.method public getTabInfo()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/launcher2/tabs/TabManager$TabInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 10
    .parameter "tabId"

    .prologue
    .line 118
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 121
    .local v6, newTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;
    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v7, :cond_4

    .line 123
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "add_widgets"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 125
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {v7}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "APPS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v7}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .restart local v3       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    move-object v7, v3

    .line 129
    check-cast v7, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-virtual {v7}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_step2()V

    .line 130
    check-cast v3, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step3()V

    .line 139
    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "addapps"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "create_folder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_1
    sget-boolean v7, Lcom/android/launcher2/MenuView;->onShowAllAppsClicked:Z

    if-nez v7, :cond_4

    .line 142
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    iget-object v8, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v8}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/MenuView;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 203
    :cond_2
    :goto_0
    return-void

    .line 132
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {v7}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WIDGETS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/android/launcher2/MenuView;->onShowAllAppsClicked:Z

    if-nez v7, :cond_0

    .line 134
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    iget-object v8, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v8}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/MenuView;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_4
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/launcher2/MenuView;->onShowAllAppsClicked:Z

    .line 150
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eq v7, v6, :cond_2

    .line 151
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 152
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eqz v7, :cond_6

    .line 153
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v7}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 154
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v7}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v7, :cond_5

    .line 155
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v7}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v4

    .line 156
    .local v4, mWidgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v4, :cond_5

    .line 157
    invoke-virtual {v4}, Lcom/android/launcher2/MenuWidgets;->changeToWidgetStateNormal()V

    .line 160
    .end local v4           #mWidgets:Lcom/android/launcher2/MenuWidgets;
    :cond_5
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v7}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 161
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v7}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/launcher2/tabs/TabManager;->onHideTab(Landroid/app/Fragment;)V

    .line 164
    :cond_6
    if-eqz v6, :cond_e

    .line 165
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    if-nez v7, :cond_a

    .line 166
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$100(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$200(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    #setter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v6, v7}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$002(Lcom/android/launcher2/tabs/TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 167
    iget v7, p0, Lcom/android/launcher2/tabs/TabManager;->mContainerId:I

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v8

    iget-object v9, v6, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v9}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 168
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/launcher2/tabs/TabManager;->onAddTab(Landroid/app/Fragment;)V

    .line 169
    sget-boolean v7, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_7

    const-string v7, "TabManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTabChanged() adding class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$100(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " obj "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_7
    :goto_1
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v7, :cond_d

    .line 179
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v5

    .line 180
    .local v5, mag:Lcom/android/launcher2/MenuAppsGrid;
    if-eqz v5, :cond_c

    .line 181
    sget-boolean v7, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_8

    const-string v7, "TabManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTabChanged() menu pages: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_8
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_2
    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_d

    .line 183
    invoke-virtual {v5, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    .line 184
    .local v0, clm:Lcom/android/launcher2/CellLayoutMenu;
    sget-boolean v7, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_9

    const-string v7, "TabManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTabChanged() Page "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " contains item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 171
    .end local v0           #clm:Lcom/android/launcher2/CellLayoutMenu;
    .end local v2           #idx:I
    .end local v5           #mag:Lcom/android/launcher2/MenuAppsGrid;
    :cond_a
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Fragment;->isDetached()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 172
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 174
    :cond_b
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 175
    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/launcher2/tabs/TabManager;->onShowTab(Landroid/app/Fragment;)V

    .line 176
    sget-boolean v7, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_7

    const-string v7, "TabManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTabChanged() show fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/android/launcher2/tabs/TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 187
    .restart local v5       #mag:Lcom/android/launcher2/MenuAppsGrid;
    :cond_c
    sget-boolean v7, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_d

    const-string v7, "TabManager"

    const-string v8, "onTabChanged() no MenuAppsGrid!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v5           #mag:Lcom/android/launcher2/MenuAppsGrid;
    :cond_d
    :goto_3
    iput-object v6, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    .line 197
    iget-object v7, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->isResumed()Z

    move-result v7

    if-nez v7, :cond_f

    .line 198
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    .line 191
    :cond_e
    sget-boolean v7, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_d

    const-string v7, "TabManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTabChanged() no tab for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 200
    :cond_f
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_0
.end method

.method public setLastTabKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 2
    .parameter "endTabKeyListener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 79
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 81
    return-void
.end method
