.class public Lcom/android/launcher2/CellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "CellLayoutChildren.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "CellLayoutChildren"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mGapX:I

.field private mGapY:I

.field private mHiddenItem:Lcom/android/launcher2/BaseItem;

.field private mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mTmpCellXY:[I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 52
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->setMotionEventSplittingEnabled(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;Z)Z
    .locals 3
    .parameter "item"
    .parameter "createView"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    sget-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add a duplicate entry for this item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    if-eqz p2, :cond_2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;)V

    .line 96
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 7
    .parameter "v"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 367
    .local v0, grandParent:Landroid/view/View;
    instance-of v4, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v4, :cond_0

    .line 368
    instance-of v4, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 369
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 370
    .local v1, icon:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 371
    .local v2, item:Lcom/android/launcher2/BaseItem;
    if-eqz v2, :cond_2

    .line 372
    sget-boolean v4, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "CellLayoutChildren"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addView() adding view to Hotseat\'s CellLayoutChildren @ index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and title = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " child count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v1           #icon:Lcom/android/launcher2/AppIconView;
    .end local v2           #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 381
    instance-of v4, p1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    if-eqz v4, :cond_1

    .line 382
    check-cast p1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    .end local p1
    invoke-interface {p1}, Lcom/android/launcher2/DynamicShadowMixin$Holder;->getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;

    move-result-object v3

    .line 383
    .local v3, shadow:Lcom/android/launcher2/DynamicShadowMixin;
    if-eqz v3, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DynamicShadowMixin;->setViewToInvalidate(Landroid/view/View;)V

    .line 387
    .end local v3           #shadow:Lcom/android/launcher2/DynamicShadowMixin;
    :cond_1
    return-void

    .line 374
    .restart local v1       #icon:Lcom/android/launcher2/AppIconView;
    .restart local v2       #item:Lcom/android/launcher2/BaseItem;
    .restart local p1
    :cond_2
    instance-of v4, v1, Lcom/android/launcher2/AllappsIcon;

    if-eqz v4, :cond_0

    .line 375
    sget-boolean v4, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "CellLayoutChildren"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addView() adding all apps icon to Hotseat\'s CellLayoutChildren @ index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " child count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 3
    .parameter "item"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 111
    .local v0, l:Lcom/android/launcher2/CellLayout;
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-interface {v2, p1, v0}, Lcom/android/launcher2/ItemViewBuilder;->buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;

    move-result-object v1

    .line 112
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne p1, v2, :cond_0

    .line 113
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_0
    return-object v1
.end method

.method public buildViews()V
    .locals 4

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 101
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Tried to build item views when we already had views."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 105
    .local v1, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 107
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    :cond_1
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 313
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 316
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 317
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 318
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public disableHardwareLayers()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    .line 68
    :cond_0
    return-void
.end method

.method public drawShadows(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 390
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 391
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 392
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    .end local v2           #v:Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    .restart local v2       #v:Landroid/view/View;
    :cond_1
    instance-of v3, v2, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 395
    check-cast v3, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    invoke-interface {v3}, Lcom/android/launcher2/DynamicShadowMixin$Holder;->getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;

    move-result-object v1

    .line 396
    .local v1, shadow:Lcom/android/launcher2/DynamicShadowMixin;
    if-eqz v1, :cond_2

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 398
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 399
    invoke-virtual {v1, p1}, Lcom/android/launcher2/DynamicShadowMixin;->draw(Landroid/graphics/Canvas;)V

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 403
    .end local v1           #shadow:Lcom/android/launcher2/DynamicShadowMixin;
    :cond_2
    instance-of v3, v2, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_0

    .line 404
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 405
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 406
    check-cast v2, Lcom/android/launcher2/AppIconView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/android/launcher2/AppIconView;->drawShadow(Landroid/graphics/Canvas;)V

    .line 407
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 410
    :cond_3
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 59
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getLayerType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 60
    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    .line 62
    :cond_0
    return-void
.end method

.method public findFolderItem(J)Lcom/android/launcher2/BaseItem;
    .locals 4
    .parameter "id"

    .prologue
    .line 358
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 359
    .local v1, item:Lcom/android/launcher2/BaseItem;
    iget-wide v2, v1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 361
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 187
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 188
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/android/launcher2/AllappsIcon;

    if-nez v4, :cond_1

    .line 187
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 192
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    .line 197
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 9
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 173
    if-nez p1, :cond_1

    move-object v3, v4

    .line 183
    :cond_0
    :goto_0
    return-object v3

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 176
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 178
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, tag:Ljava/lang/Object;
    instance-of v5, v2, Lcom/android/launcher2/BaseItem;

    if-eqz v5, :cond_2

    .line 180
    check-cast v2, Lcom/android/launcher2/BaseItem;

    .end local v2           #tag:Ljava/lang/Object;
    iget-wide v5, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v7, p1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 176
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #v:Landroid/view/View;
    :cond_3
    move-object v3, v4

    .line 183
    goto :goto_0
.end method

.method public getChildFromPosition(I)Landroid/view/View;
    .locals 4
    .parameter "pos"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 207
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 208
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 207
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 216
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getHiddenItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method public getItemAt(I)Lcom/android/launcher2/BaseItem;
    .locals 3
    .parameter "pos"

    .prologue
    .line 220
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 221
    .local v1, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 225
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemAt(II)Lcom/android/launcher2/BaseItem;
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 202
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method public hasItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterateBaseItems(Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Closure:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator",
            "<TClosure;>;TClosure;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, iterator:Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;,"Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator<TClosure;>;"
    .local p2, closure:Ljava/lang/Object;,"TClosure;"
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 428
    .local v1, item:Lcom/android/launcher2/BaseItem;
    invoke-interface {p1, v1, p2}, Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;->iterate(Lcom/android/launcher2/BaseItem;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 432
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    :cond_1
    return-void
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    const/high16 v7, 0x4000

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 258
    .local v2, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iget v6, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    .line 259
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 260
    .local v1, childWidth:I
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 261
    .local v0, childHeight:I
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 263
    return-void
.end method

.method notifyWidgetsOfPageScroll(IIII)V
    .locals 4
    .parameter "currentPageIndex"
    .parameter "pageIndex"
    .parameter "pageWidth"
    .parameter "pageOffset"

    .prologue
    .line 413
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 414
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 415
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 416
    check-cast v2, Lcom/android/launcher2/SurfaceWidgetView;

    .line 417
    .local v2, swv:Lcom/android/launcher2/SurfaceWidgetView;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/launcher2/SurfaceWidgetView;->onPageScroll(IIII)V

    .line 413
    .end local v2           #swv:Lcom/android/launcher2/SurfaceWidgetView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v11

    .line 268
    .local v11, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v11, :cond_2

    .line 269
    invoke-virtual {p0, v13}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 270
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 271
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 273
    .local v14, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v9, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 274
    .local v9, childLeft:I
    iget v10, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 277
    .local v10, childTop:I
    :try_start_0
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v0, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    :goto_1
    iget-boolean v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_1

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 285
    iget-object v7, p0, Lcom/android/launcher2/CellLayoutChildren;->mTmpCellXY:[I

    .line 286
    .local v7, cellXY:[I
    invoke-virtual {p0, v7}, Lcom/android/launcher2/CellLayoutChildren;->getLocationOnScreen([I)V

    .line 287
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 268
    .end local v7           #cellXY:[I
    .end local v9           #childLeft:I
    .end local v10           #childTop:I
    .end local v14           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 278
    .restart local v9       #childLeft:I
    .restart local v10       #childTop:I
    .restart local v14       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :catch_0
    move-exception v12

    .line 279
    .local v12, e:Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child layout exception. child tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    .end local v8           #child:Landroid/view/View;
    .end local v9           #childLeft:I
    .end local v10           #childTop:I
    .end local v12           #e:Ljava/lang/Exception;
    .end local v14           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 234
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-nez v5, :cond_1

    .line 236
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "CellLayoutChildren cannot accept an UNSPECIFIED MeasureSpec"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 238
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 239
    .local v4, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 240
    .local v2, height:I
    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/CellLayoutChildren;->setMeasuredDimension(II)V

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 244
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 245
    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 244
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    .end local v0           #child:Landroid/view/View;
    :cond_3
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    const-string v1, "CellLayoutChildren"

    const-string v2, "Adding view to CellLayoutChildren without an associated item."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 129
    .local v0, l:Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    if-eqz v1, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-interface {v2, p1, v1, v0}, Lcom/android/launcher2/ItemViewBuilder;->onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V

    .line 133
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->onViewAddedToLayout(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeAllItems()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 153
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 138
    .local v0, rc:Z
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne p1, v2, :cond_0

    .line 139
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 141
    :cond_0
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    .line 143
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 147
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 303
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 304
    if-eqz p1, :cond_0

    .line 305
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 306
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 307
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 309
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCellDimensions(IIII)V
    .locals 3
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "gapX"
    .parameter "gapY"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    .line 72
    iput p2, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    .line 73
    iput p3, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    .line 74
    iput p4, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    .line 75
    sget-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCellDimensions. width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gapX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gapY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 326
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 327
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 328
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 330
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 331
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 326
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 339
    return-void
.end method

.method public setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 86
    return-void
.end method

.method public setItemVisibility(Lcom/android/launcher2/BaseItem;I)V
    .locals 2
    .parameter "item"
    .parameter "v"

    .prologue
    .line 157
    if-nez p2, :cond_1

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 162
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v1, :cond_0

    .line 164
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_0
    return-void

    .line 160
    .end local v0           #view:Landroid/view/View;
    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method public setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V
    .locals 4
    .parameter "lp"

    .prologue
    .line 253
    iget v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    iget v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    iget v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iget v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    .line 254
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public updateChildrenToNewPage(ILjava/util/List;)V
    .locals 5
    .parameter "page"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p2, ls:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 343
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 347
    .local v2, item:Lcom/android/launcher2/HomeItem;
    instance-of v4, v2, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v4, :cond_0

    .line 348
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    .local v3, v:Landroid/view/View;
    move-object v4, v2

    .line 349
    check-cast v4, Lcom/android/launcher2/HomeFolderItem;

    check-cast v3, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {v4, v3}, Lcom/android/launcher2/HomeFolderItem;->addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 351
    :cond_0
    iput p1, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 353
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    .end local v2           #item:Lcom/android/launcher2/HomeItem;
    :cond_1
    return-void
.end method
