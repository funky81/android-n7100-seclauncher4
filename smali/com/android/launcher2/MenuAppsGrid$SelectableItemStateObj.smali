.class abstract Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SelectableItemStateObj"
.end annotation


# static fields
.field private static final CHECKED_APPS:Ljava/lang/String; = "CHECKED_APPS"


# instance fields
.field private mCheckedState:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDoneButton:Landroid/view/View;

.field private mNumSelected:Landroid/widget/TextView;

.field private mSelectedCnt:I

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1
    .parameter

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    .line 1506
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1505
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method protected abstract complete()V
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 15
    .parameter
    .parameter "oldState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1562
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 1563
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v10}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v7

    .line 1564
    .local v7, selectTitleBar:Landroid/view/ViewGroup;
    if-eqz v7, :cond_2

    .line 1565
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v10}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v11

    sget-object v10, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, p2

    if-ne v0, v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7, v10}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 1567
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 1568
    .local v8, selectedTitleBar:Landroid/view/ViewGroup;
    if-eqz v8, :cond_1

    .line 1569
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 1570
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/FocusHelper;->TITLEBAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1569
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1565
    .end local v4           #i:I
    .end local v8           #selectedTitleBar:Landroid/view/ViewGroup;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 1576
    .restart local v8       #selectedTitleBar:Landroid/view/ViewGroup;
    :cond_1
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    iput v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1578
    const v10, 0x7f070093

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    .line 1579
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$4300(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0e0043

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1582
    const v10, 0x7f07005d

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    .line 1583
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    new-instance v11, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$1;

    invoke-direct {v11, p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1589
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v9

    .line 1590
    .local v9, state:Lcom/android/launcher2/MenuAppsGrid$State;
    move-object/from16 v6, p2

    .line 1591
    .local v6, prevState:Lcom/android/launcher2/MenuAppsGrid$State;
    sget-object v10, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v9, v10, :cond_3

    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4400()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1593
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1600
    :goto_2
    new-instance v3, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;

    invoke-direct {v3, p0, v9, v6}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1621
    .local v3, cancelListener:Landroid/view/View$OnClickListener;
    const v10, 0x7f070095

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1623
    const v10, 0x7f070092

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1626
    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v10, :cond_2

    .line 1627
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v5

    .line 1628
    .local v5, loader:Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v5}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1629
    const v10, 0x7f070094

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1630
    .local v1, allAppsButton:Landroid/widget/ImageView;
    const-string v10, "all_apps_button_icon"

    invoke-virtual {v5, v10}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1631
    .local v2, allAppsIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 1632
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1638
    .end local v1           #allAppsButton:Landroid/widget/ImageView;
    .end local v2           #allAppsIcon:Landroid/graphics/drawable/Drawable;
    .end local v3           #cancelListener:Landroid/view/View$OnClickListener;
    .end local v5           #loader:Lcom/android/launcher2/ThemeLoader;
    .end local v6           #prevState:Lcom/android/launcher2/MenuAppsGrid$State;
    .end local v8           #selectedTitleBar:Landroid/view/ViewGroup;
    .end local v9           #state:Lcom/android/launcher2/MenuAppsGrid$State;
    :cond_2
    return-void

    .line 1597
    .restart local v6       #prevState:Lcom/android/launcher2/MenuAppsGrid$State;
    .restart local v8       #selectedTitleBar:Landroid/view/ViewGroup;
    .restart local v9       #state:Lcom/android/launcher2/MenuAppsGrid$State;
    :cond_3
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    iget v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v11, v10}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    const/4 v6, 0x1

    .line 1657
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 1658
    .local v2, v:Lcom/android/launcher2/AppIconView;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #calls: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    invoke-static {v3, v6, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V

    .line 1659
    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 1660
    .local v1, item:Lcom/android/launcher2/BaseItem;
    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    .line 1661
    invoke-virtual {v2, v6}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    .line 1662
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    iget-wide v4, v1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1663
    invoke-virtual {v2, v6}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    goto :goto_0

    .line 1667
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    .end local v2           #v:Lcom/android/launcher2/AppIconView;
    :cond_1
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .parameter
    .parameter "newState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1642
    .local p1, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v0, :cond_0

    .line 1643
    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :goto_0
    return-void

    .line 1649
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    goto :goto_0
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    const/4 v4, 0x0

    .line 1671
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1674
    .local v1, v:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/launcher2/AppIconView;

    if-ne v2, v3, :cond_0

    .line 1675
    invoke-virtual {v1, v4}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    .line 1676
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/MenuAppsGrid;->mExitingSelectableState:Z

    .line 1677
    invoke-virtual {v1, v4}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    goto :goto_0

    .line 1680
    .end local v1           #v:Lcom/android/launcher2/AppIconView;
    :cond_1
    return-void
.end method

.method protected getCheckedDisabledItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1691
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1692
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1695
    .local v1, id:Ljava/lang/Long;
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppModel;->findDisabledItemById(Ljava/lang/Long;)Lcom/android/launcher2/AppItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1696
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppModel;->findDisabledItemById(Ljava/lang/Long;)Lcom/android/launcher2/AppItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1699
    .end local v1           #id:Ljava/lang/Long;
    :cond_1
    return-object v2
.end method

.method protected getCheckedItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1683
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1684
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1685
    .local v1, id:Ljava/lang/Long;
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1687
    .end local v1           #id:Ljava/lang/Long;
    :cond_0
    return-object v2
.end method

.method protected getCheckedViews()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1707
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1708
    .local v9, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    .line 1709
    .local v0, count:I
    move v5, v0

    .line 1710
    .local v5, l:I
    const/4 v7, 0x0

    .line 1711
    .local v7, r:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    if-gt v4, v0, :cond_1

    .line 1712
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10, v4}, Lcom/android/launcher2/MenuAppsGrid;->isPageConstructed(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1713
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1714
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1711
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1718
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->getCheckedItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 1719
    .local v2, i:Lcom/android/launcher2/AppItem;
    const/4 v1, 0x0

    .line 1720
    .local v1, found:Z
    move v4, v5

    :goto_2
    if-gt v4, v7, :cond_3

    .line 1721
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 1722
    .local v6, page:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v8

    .line 1723
    .local v8, v:Landroid/view/View;
    if-eqz v8, :cond_4

    .line 1724
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1725
    const/4 v1, 0x1

    .line 1729
    .end local v6           #page:Lcom/android/launcher2/CellLayout;
    .end local v8           #v:Landroid/view/View;
    :cond_3
    if-nez v1, :cond_2

    .line 1730
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;
    invoke-static {v10}, Lcom/android/launcher2/MenuAppsGrid;->access$4500(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/ItemViewBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v12, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v10, v12}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    invoke-interface {v11, v2, v10}, Lcom/android/launcher2/ItemViewBuilder;->buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1720
    .restart local v6       #page:Lcom/android/launcher2/CellLayout;
    .restart local v8       #v:Landroid/view/View;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1732
    .end local v1           #found:Z
    .end local v2           #i:Lcom/android/launcher2/AppItem;
    .end local v6           #page:Lcom/android/launcher2/CellLayout;
    .end local v8           #v:Landroid/view/View;
    :cond_5
    return-object v9
.end method

.method protected hasCheckedItems()Z
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 8
    .parameter "item"
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1517
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lcom/android/launcher2/AppIconView;

    if-ne v2, v5, :cond_0

    move-object v1, p2

    .line 1518
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1519
    .local v1, chkable:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->toggle()V

    .line 1521
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1522
    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1523
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    iget-wide v5, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1524
    iget-object v2, p1, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1529
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1530
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$4000(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0043

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1534
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$4100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f04000a

    invoke-static {v2, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1536
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1537
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1539
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    .end local v1           #chkable:Lcom/android/launcher2/AppIconView;
    :cond_0
    return v3

    .line 1526
    .restart local v1       #chkable:Lcom/android/launcher2/AppIconView;
    :cond_1
    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1527
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    iget-wide v5, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v2, v4

    .line 1529
    goto :goto_1
.end method

.method public preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V
    .locals 6
    .parameter "item"
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    .line 1543
    if-nez p2, :cond_1

    .line 1558
    :cond_0
    :goto_0
    return-void

    .line 1547
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/launcher2/AppIconView;

    if-ne v1, v2, :cond_0

    move-object v0, p2

    .line 1548
    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 1549
    .local v0, chkable:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->toggle()V

    .line 1551
    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    .line 1552
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1553
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1555
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1556
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$4200(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0043

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "bundle"

    .prologue
    .line 1752
    if-eqz p1, :cond_0

    .line 1753
    const-string v2, "CHECKED_APPS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 1754
    .local v0, checkedAppIds:[J
    if-eqz v0, :cond_0

    .line 1755
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1756
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1757
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1756
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1761
    .end local v0           #checkedAppIds:[J
    .end local v1           #i:I
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    .line 1739
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return-void

    .line 1741
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v0, v5, [J

    .line 1742
    .local v0, checkedAppIds:[J
    const/4 v1, 0x0

    .line 1743
    .local v1, counter:I
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1744
    .local v4, id:Ljava/lang/Long;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #counter:I
    .local v2, counter:I
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v0, v1

    move v1, v2

    .end local v2           #counter:I
    .restart local v1       #counter:I
    goto :goto_1

    .line 1747
    .end local v4           #id:Ljava/lang/Long;
    :cond_2
    const-string v5, "CHECKED_APPS"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0
.end method
