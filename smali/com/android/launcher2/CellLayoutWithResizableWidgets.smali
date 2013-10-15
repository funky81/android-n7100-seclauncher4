.class public Lcom/android/launcher2/CellLayoutWithResizableWidgets;
.super Lcom/android/launcher2/CellLayout;
.source "CellLayoutWithResizableWidgets.java"

# interfaces
.implements Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;
.implements Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;


# instance fields
.field private mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method public canAcceptDrop(Lcom/android/launcher2/DragState;IIIZ)Z
    .locals 19
    .parameter "dragState"
    .parameter "x"
    .parameter "y"
    .parameter "screen"
    .parameter "animate"

    .prologue
    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v15

    .line 227
    .local v15, parent:Lcom/android/launcher2/CellLayoutContainer;
    if-nez v15, :cond_0

    .line 228
    const/4 v2, 0x0

    .line 265
    :goto_0
    return v2

    .line 231
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v17

    .line 233
    .local v17, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->findDragCell(Lcom/android/launcher2/DragState;II[I[IZ)Z

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x0

    aget v6, v2, v3

    .line 235
    .local v6, spanX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x1

    aget v7, v2, v3

    .line 237
    .local v7, spanY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v11, 0x1

    .line 238
    .local v11, hasDroppableCell:Z
    :goto_1
    if-nez v11, :cond_2

    .line 239
    const/4 v2, 0x0

    goto :goto_0

    .line 237
    .end local v11           #hasDroppableCell:Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 241
    .restart local v11       #hasDroppableCell:Z
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v13

    .line 242
    .local v13, item:Lcom/android/launcher2/BaseItem;
    instance-of v2, v13, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_3

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/HomeItem;

    .line 244
    .local v10, hItem:Lcom/android/launcher2/HomeItem;
    iput v6, v10, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 245
    iput v7, v10, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 247
    .end local v10           #hItem:Lcom/android/launcher2/HomeItem;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    aget v5, v2, v3

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_4

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v18

    .local v18, ws:Lcom/android/launcher2/Workspace;
    move-object/from16 v2, v17

    .line 250
    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 253
    .end local v18           #ws:Lcom/android/launcher2/Workspace;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 255
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_5

    .line 256
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout$LayoutParams;

    .local v14, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v16, v17

    .line 257
    check-cast v16, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 258
    .local v16, resize_view:Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/HomeWidgetItem;

    .line 260
    .local v12, info:Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    iget v3, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v8, v12, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v2, v3, v4, v5, v8}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    .line 265
    .end local v12           #info:Lcom/android/launcher2/HomeWidgetItem;
    .end local v14           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v16           #resize_view:Lcom/android/launcher2/LauncherAppWidgetHostView;
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public clearResizeFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->realRemoveView(Landroid/view/View;)V

    .line 85
    iput-object v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->setCurrentResizeWidgetItem(Lcom/android/launcher2/BaseItem;)V

    .line 87
    return-void
.end method

.method public findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z
    .locals 1
    .parameter "dragState"
    .parameter "x"
    .parameter "y"
    .parameter "resXY"
    .parameter "resSpan"

    .prologue
    .line 147
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z

    move-result v0

    .line 148
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->invalidatePageIndicatorPreview()V

    .line 149
    return v0
.end method

.method public findDragCell(Lcom/android/launcher2/DragState;II[I[IZ)Z
    .locals 1
    .parameter "dragState"
    .parameter "x"
    .parameter "y"
    .parameter "resXY"
    .parameter "resSpan"
    .parameter "preventIgnoreOccupied"

    .prologue
    .line 154
    invoke-super/range {p0 .. p6}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[IZ)Z

    move-result v0

    .line 155
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->invalidatePageIndicatorPreview()V

    .line 156
    return v0
.end method

.method public getDeltas(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, deltas:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 116
    .local v1, item:Lcom/android/launcher2/BaseItem;
    new-instance v2, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v2, v1}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/BaseItem;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    return-void
.end method

.method public getNumColumns()I
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getCountX()I

    move-result v0

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getCountY()I

    move-result v0

    return v0
.end method

.method public getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    return-object v0
.end method

.method protected invalidatePageIndicatorPreview()V
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    iget-object v0, v1, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    .line 140
    .local v0, pipm:Lcom/android/launcher2/PageIndicatorPreviewManager;
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 143
    :cond_0
    return-void
.end method

.method public isPointInRegion(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 95
    .local v0, temp:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 97
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/4 v1, 0x1

    .line 102
    :goto_0
    return v1

    .line 101
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getHitRect(Landroid/graphics/Rect;)V

    .line 102
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    goto :goto_0
.end method

.method newCellPositioner()Lcom/android/launcher2/CellPositioner;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/launcher2/CellPositionerWorkspace;

    invoke-direct {v0, p0, p0}, Lcom/android/launcher2/CellPositionerWorkspace;-><init>(Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;)V

    return-object v0
.end method

.method public noRoomForDrop(Lcom/android/launcher2/DragState;III)V
    .locals 13
    .parameter "dragState"
    .parameter "screen"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/Workspace;

    .line 163
    .local v12, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    .line 165
    .local v6, checkExtra:Z
    :goto_0
    if-eqz v6, :cond_4

    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .line 173
    .local v9, count:I
    :goto_1
    const/high16 v10, -0x8000

    .line 174
    .local v10, snapToPage:I
    const/4 v7, 0x1

    .line 175
    .local v7, checkToEnd:Z
    const/4 v11, 0x0

    .line 177
    .local v11, usedNewPage:Z
    add-int/lit8 v4, p2, 0x1

    .line 179
    .local v4, i:I
    :goto_2
    if-eqz v7, :cond_0

    if-lt v4, v9, :cond_0

    .line 180
    const/4 v7, 0x0

    .line 181
    const/4 v4, 0x0

    .line 183
    :cond_0
    if-nez v7, :cond_6

    if-lt v4, p2, :cond_6

    .line 184
    if-nez v6, :cond_5

    .line 202
    :goto_3
    const/high16 v1, -0x8000

    if-eq v1, v10, :cond_2

    .line 206
    if-nez v11, :cond_1

    .line 207
    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->removeCreatedPageForDrag()V

    .line 209
    :cond_1
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v1, :cond_9

    .line 210
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v1, :cond_8

    .line 211
    invoke-virtual {v12, v10}, Lcom/android/launcher2/Workspace;->setPendingSnapToPage(I)V

    .line 219
    :cond_2
    :goto_4
    return-void

    .line 163
    .end local v4           #i:I
    .end local v6           #checkExtra:Z
    .end local v7           #checkToEnd:Z
    .end local v9           #count:I
    .end local v10           #snapToPage:I
    .end local v11           #usedNewPage:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 165
    .restart local v6       #checkExtra:Z
    :cond_4
    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v9

    goto :goto_1

    .line 187
    .restart local v4       #i:I
    .restart local v7       #checkToEnd:Z
    .restart local v9       #count:I
    .restart local v10       #snapToPage:I
    .restart local v11       #usedNewPage:Z
    :cond_5
    move v4, v9

    .line 188
    const/4 v6, 0x0

    .line 189
    const/4 v11, 0x1

    .line 191
    :cond_6
    invoke-virtual {v12, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 192
    .local v8, child:Landroid/view/View;
    if-eqz v8, :cond_7

    instance-of v1, v8, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v1, :cond_7

    move-object v0, v8

    .line 193
    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 194
    .local v0, cl:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    const/4 v5, 0x0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->canAcceptDrop(Lcom/android/launcher2/DragState;IIIZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 195
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->commitDeltas()V

    .line 196
    move v10, v4

    .line 197
    goto :goto_3

    .line 200
    .end local v0           #cl:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 201
    goto :goto_2

    .line 213
    .end local v8           #child:Landroid/view/View;
    :cond_8
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v12, v1}, Lcom/android/launcher2/Workspace;->setPendingSnapToPage(I)V

    goto :goto_4

    .line 216
    :cond_9
    invoke-virtual {v12, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_4
.end method

.method notifyWidgetsOfPageScroll(IIII)V
    .locals 2
    .parameter "currentPageIndex"
    .parameter "pageIndex"
    .parameter "pageWidth"
    .parameter "pageOffset"

    .prologue
    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/launcher2/CellLayoutChildren;->notifyWidgetsOfPageScroll(IIII)V

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->onDragExit()V

    .line 292
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method public onDragExit()V
    .locals 0

    .prologue
    .line 297
    invoke-super {p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->invalidatePageIndicatorPreview()V

    .line 299
    return-void
.end method

.method public onPreDeltaVisualize(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "v"
    .parameter "item"

    .prologue
    .line 107
    instance-of v0, p1, Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 108
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    .line 110
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->onPreDeltaVisualize(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V

    .line 111
    return-void
.end method

.method rearrangeWorkspaceForSpace(Lcom/android/launcher2/BaseItem;IIII)Z
    .locals 7
    .parameter "ignoreItem"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 269
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_1

    .line 270
    new-instance v1, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v1, p1}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/BaseItem;)V

    .line 271
    .local v1, dragDelta:Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v1, p2}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 272
    invoke-virtual {v1, p3}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 273
    invoke-virtual {v1, p4}, Lcom/android/launcher2/PositionDelta;->setSpanX(I)V

    .line 274
    invoke-virtual {v1, p5}, Lcom/android/launcher2/PositionDelta;->setSpanY(I)V

    .line 276
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move v2, p4

    move v3, p5

    move v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/android/launcher2/CellPositioner;->updateDeltasForDrag(Lcom/android/launcher2/PositionDelta;IIZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v2}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/DeltaVisualizer;->updateForDeltas(Ljava/util/List;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->invalidatePageIndicatorPreview()V

    .line 284
    .end local v1           #dragDelta:Lcom/android/launcher2/PositionDelta;
    :goto_0
    return v4

    .line 281
    .restart local v1       #dragDelta:Lcom/android/launcher2/PositionDelta;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v0}, Lcom/android/launcher2/CellPositioner;->resetDragDelta()V

    .end local v1           #dragDelta:Lcom/android/launcher2/PositionDelta;
    :cond_1
    move v4, v5

    .line 284
    goto :goto_0
.end method

.method public setResizeFrame(Landroid/view/View;Ljava/lang/Runnable;Lcom/android/launcher2/Workspace$State;)V
    .locals 5
    .parameter "widget"
    .parameter "onFinish"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 52
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq p3, v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 56
    .local v0, item:Lcom/android/launcher2/HomeItem;
    new-instance v2, Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1, p0}, Lcom/android/launcher2/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher2/HomeItem;Landroid/view/View;Lcom/android/launcher2/CellLayoutWithResizableWidgets;)V

    iput-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 58
    if-eqz p2, :cond_2

    .line 59
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    new-instance v3, Lcom/android/launcher2/CellLayoutWithResizableWidgets$1;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets$1;-><init>(Lcom/android/launcher2/CellLayoutWithResizableWidgets;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppWidgetResizeFrame;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 70
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->addView(Landroid/view/View;)V

    .line 71
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 73
    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setClipChildren(Z)V

    .line 74
    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setClipToPadding(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 76
    .local v1, p:Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    move-object v2, v1

    .line 77
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 78
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #p:Landroid/view/ViewParent;
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/HomeView;->setCurrentResizeWidgetItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0
.end method
