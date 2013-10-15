.class public Lcom/android/launcher2/CellLayoutMenu;
.super Lcom/android/launcher2/CellLayoutNoGap;
.source "CellLayoutMenu.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CellLayoutMenu"


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mNumItemsPushedIn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v0, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    .line 37
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutMenu;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 51
    return-void
.end method

.method private fillFromPageRightSnake()V
    .locals 5

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCell()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 207
    .local v2, screen:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutMenu;

    .line 208
    .local v1, p:Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 212
    .local v0, child:Lcom/android/launcher2/BaseItem;
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutMenu;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getPageItemCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getScreen()I

    move-result v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/launcher2/CellLayoutMenu;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 218
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->getPageItemCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 228
    .end local v0           #child:Lcom/android/launcher2/BaseItem;
    .end local v1           #p:Lcom/android/launcher2/CellLayoutMenu;
    .end local v2           #screen:I
    :cond_1
    :goto_0
    return-void

    .line 222
    .restart local v0       #child:Lcom/android/launcher2/BaseItem;
    .restart local v1       #p:Lcom/android/launcher2/CellLayoutMenu;
    .restart local v2       #screen:I
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->invalidate()V

    goto :goto_0
.end method

.method private getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 310
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    .line 311
    check-cast v0, Lcom/android/launcher2/MenuAppsGrid;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    .line 313
    :goto_0
    return-object v1

    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 303
    const-wide/16 v0, -0x66

    return-wide v0
.end method

.method public handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1
    .parameter "newState"
    .parameter "oldState"

    .prologue
    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    .line 339
    return-void
.end method

.method public hide(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->hide(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0
.end method

.method public isReOrderingEnabled()Z
    .locals 5

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    .line 344
    .local v1, m:Lcom/android/launcher2/MenuView;
    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 345
    .local v0, isCustomGrid:Z
    :goto_0
    const/4 v2, 0x0

    .line 347
    .local v2, result:Z
    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 349
    const/4 v2, 0x1

    .line 352
    :cond_1
    return v2

    .line 344
    .end local v0           #isCustomGrid:Z
    .end local v2           #result:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->onAttachedToWindow()V

    .line 57
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 75
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v8, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/DragState;

    if-nez v5, :cond_1

    :cond_0
    move v5, v7

    .line 146
    :goto_0
    return v5

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    .line 80
    .local v1, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v5

    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v5, v8, :cond_3

    move v2, v6

    .line 83
    .local v2, isCustomGrid:Z
    :goto_1
    if-nez v2, :cond_6

    .line 84
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_2
    :pswitch_0
    move v5, v6

    .line 122
    goto :goto_0

    .end local v2           #isCustomGrid:Z
    :cond_3
    move v2, v7

    .line 80
    goto :goto_1

    .line 88
    .restart local v2       #isCustomGrid:Z
    :pswitch_1
    iget-object v5, v1, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eq v5, p0, :cond_4

    .line 89
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    .line 90
    .local v3, item:Lcom/android/launcher2/BaseItem;
    instance-of v5, v3, Lcom/android/launcher2/AppItem;

    if-eqz v5, :cond_4

    move-object v0, v3

    .line 91
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 92
    .local v0, appItem:Lcom/android/launcher2/AppItem;
    iget-object v5, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v5, :cond_4

    .line 93
    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 94
    iput v9, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 95
    iput v9, v0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    .line 97
    .local v4, mv:Lcom/android/launcher2/MenuView;
    if-eqz v4, :cond_2

    .line 98
    new-instance v5, Lcom/android/launcher2/CellLayoutMenu$1;

    invoke-direct {v5, p0, v4}, Lcom/android/launcher2/CellLayoutMenu$1;-><init>(Lcom/android/launcher2/CellLayoutMenu;Lcom/android/launcher2/MenuView;)V

    invoke-virtual {v1, v5}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 112
    .end local v0           #appItem:Lcom/android/launcher2/AppItem;
    .end local v3           #item:Lcom/android/launcher2/BaseItem;
    .end local v4           #mv:Lcom/android/launcher2/MenuView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e006c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 117
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v5

    sget-object v7, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v5, v7, :cond_5

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    .line 119
    :cond_5
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    goto :goto_2

    .line 125
    :cond_6
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 146
    :goto_3
    :pswitch_3
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 127
    :pswitch_4
    invoke-virtual {p0, v6}, Lcom/android/launcher2/CellLayoutMenu;->undoSnake(Z)Lcom/android/launcher2/AppItem;

    goto :goto_3

    .line 130
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    .line 131
    invoke-virtual {p0, v6}, Lcom/android/launcher2/CellLayoutMenu;->undoSnake(Z)Lcom/android/launcher2/AppItem;

    goto :goto_3

    .line 136
    :pswitch_6
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 137
    iget-boolean v5, p0, Lcom/android/launcher2/CellLayoutMenu;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v5, :cond_7

    .line 138
    const/16 v5, 0x6457

    invoke-virtual {p0, v5, v6}, Lcom/android/launcher2/CellLayoutMenu;->performHapticFeedback(II)Z

    .line 143
    :cond_7
    iput v7, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    goto :goto_3

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 125
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getBackgroundAlpha()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->setCrosshairsVisibility(F)V

    .line 160
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    return-void
.end method

.method public onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V
    .locals 3
    .parameter "event"
    .parameter "fiv"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/DragState;

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 67
    .local v0, isCustomGrid:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/CellLayoutNoGap;->onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V

    goto :goto_0

    .line 65
    .end local v0           #isCustomGrid:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 320
    .local v1, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 321
    .local v0, idx:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v2

    rem-int v2, v0, v2

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 322
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v2

    div-int v2, v0, v2

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 325
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 334
    .end local v0           #idx:I
    .end local v1           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onViewAddedToLayout(Landroid/view/View;)V

    .line 335
    return-void
.end method

.method realTimeReorder()V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCell()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->snake(Lcom/android/launcher2/AppItem;)V

    .line 153
    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 154
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, rc:Z
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    .line 276
    .local v3, state:Lcom/android/launcher2/MenuAppsGrid$State;
    if-eqz v3, :cond_0

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_0

    .line 277
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    .line 278
    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 281
    .local v0, isAlphaGrid:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->cancelAllFolderAnimations()V

    .line 283
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->closeLayoutGap()V

    .line 284
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->fillFromPageRightSnake()V

    .line 285
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 286
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v4, v1, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v4, :cond_0

    .line 287
    check-cast v1, Lcom/android/launcher2/MenuAppsGrid;

    .end local v1           #parent:Landroid/view/ViewParent;
    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->clampCurrentPage()V

    .line 292
    .end local v0           #isAlphaGrid:Z
    :cond_0
    return v2

    .line 279
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method snake(Lcom/android/launcher2/AppItem;)V
    .locals 9
    .parameter "pushIn"

    .prologue
    const/4 v8, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCellIgnoreHidden()Z

    move-result v5

    if-nez v5, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 167
    .local v1, moveOut:Lcom/android/launcher2/AppItem;
    iget-object v5, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v1, v5, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .end local v1           #moveOut:Lcom/android/launcher2/AppItem;
    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 171
    .restart local v1       #moveOut:Lcom/android/launcher2/AppItem;
    :cond_0
    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v4

    .line 173
    .local v4, view:Landroid/view/View;
    instance-of v5, v4, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_1

    .line 174
    check-cast v4, Lcom/android/launcher2/FolderIconView;

    .end local v4           #view:Landroid/view/View;
    invoke-virtual {v4}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    .line 176
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutMenu;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 179
    .local v3, screen:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v2

    .line 180
    .local v2, p:Lcom/android/launcher2/CellLayoutMenu;
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutMenu;->snake(Lcom/android/launcher2/AppItem;)V

    .line 184
    .end local v1           #moveOut:Lcom/android/launcher2/AppItem;
    .end local v2           #p:Lcom/android/launcher2/CellLayoutMenu;
    .end local v3           #screen:I
    :cond_2
    if-eqz p1, :cond_3

    .line 185
    iget v5, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    .line 187
    iput v8, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:I

    .line 190
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 191
    .local v0, _h:Lcom/android/launcher2/BaseItem;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 192
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->realTimeReorder()V

    .line 193
    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 194
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getScreen()I

    move-result v5

    invoke-virtual {p0, p1, v8, v5}, Lcom/android/launcher2/CellLayoutMenu;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutMenu;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 197
    .end local v0           #_h:Lcom/android/launcher2/BaseItem;
    :cond_3
    return-void
.end method

.method undoSnake(Z)Lcom/android/launcher2/AppItem;
    .locals 7
    .parameter "first"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 236
    if-nez p1, :cond_1

    iget v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    if-nez v4, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-object v1

    .line 239
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCellIgnoreHidden()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    :cond_2
    const/4 v1, 0x0

    .line 242
    .local v1, moveOut:Lcom/android/launcher2/AppItem;
    if-nez p1, :cond_4

    .line 245
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .end local v1           #moveOut:Lcom/android/launcher2/AppItem;
    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 246
    .restart local v1       #moveOut:Lcom/android/launcher2/AppItem;
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v1, v4, :cond_3

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .end local v1           #moveOut:Lcom/android/launcher2/AppItem;
    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 249
    .restart local v1       #moveOut:Lcom/android/launcher2/AppItem;
    :cond_3
    if-eqz v1, :cond_4

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutMenu;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 251
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->closeLayoutGap()V

    .line 252
    iget v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    .line 256
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 257
    .local v3, screen:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutMenu;

    .line 258
    .local v2, p:Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayoutMenu;->undoSnake(Z)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 260
    .local v0, fromRight:Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->cancelAllFolderAnimations()V

    .line 264
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->closeLayoutGap()V

    .line 265
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getPageItemCount()I

    move-result v4

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/launcher2/CellLayoutMenu;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0
.end method
