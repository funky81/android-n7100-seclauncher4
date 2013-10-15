.class public Lcom/android/launcher2/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragState$6;,
        Lcom/android/launcher2/DragState$VisualMode;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "DragState"


# instance fields
.field private final ctx:Landroid/content/Context;

.field private mAnimateVied:Landroid/view/View;

.field private mBlockDeleteFromSource:Z

.field private mCacheDragView:Landroid/view/View;

.field private mDeleted:Z

.field final mDragOrigin:Lcom/android/launcher2/DragOrigin;

.field private mEndRunnable:Ljava/lang/Runnable;

.field private mFoundValidDrop:Z

.field private mHasEnded:Z

.field final mItem:Lcom/android/launcher2/BaseItem;

.field mOriginalCell:I

.field mOriginalScreen:I

.field private mReceiver:Lcom/android/launcher2/DragReceivable;

.field mRevertDrag:Z

.field private mShadow:Lcom/android/launcher2/ShadowBuilder;

.field private mSwapView:Landroid/view/View;

.field mUnderdragView:Landroid/view/View;

.field private mVisualMode:Lcom/android/launcher2/DragState$VisualMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/DragState;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 74
    invoke-static {p1}, Lcom/android/launcher2/DragState;->findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V
    .locals 3
    .parameter "v"
    .parameter "origin"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    .line 68
    iput v2, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    .line 70
    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mRevertDrag:Z

    .line 736
    sget-object v1, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    iput-object v1, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    .line 78
    iput-object p2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    iput-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    .line 81
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    .line 82
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget v1, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v1, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    .line 83
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v1, v1, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 85
    .local v0, appItem:Lcom/android/launcher2/AppItem;
    iget v1, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v1, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    .line 86
    iget-object v1, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_0

    .line 87
    iput v2, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    .line 88
    iput v2, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    .line 91
    .end local v0           #appItem:Lcom/android/launcher2/AppItem;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragState;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private animateDrop()V
    .locals 6

    .prologue
    .line 774
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    instance-of v3, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v3, :cond_2

    .line 779
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v3, v4}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    .line 781
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 782
    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v2

    .line 783
    .local v2, l:Lcom/android/launcher2/AnimationLayer;
    const/4 v0, 0x0

    .line 784
    .local v0, group:I
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_3

    .line 785
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 786
    .local v1, icon:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v0

    .line 788
    .end local v1           #icon:Lcom/android/launcher2/AppIconView;
    :cond_3
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/launcher2/AnimationLayer;->animateDrop(ILjava/lang/Runnable;Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0
.end method

.method private deleteFromSource()V
    .locals 2

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    if-eqz v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 525
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    .line 526
    iget-object v1, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v0, Lcom/android/launcher2/HomeItem;

    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_0
.end method

.method private fillHomeItemFields(Lcom/android/launcher2/HomeItem;JIIIZ)V
    .locals 2
    .parameter "info"
    .parameter "container"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "resetSpans"

    .prologue
    const/4 v1, -0x1

    .line 152
    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    .line 153
    iput p4, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 154
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 155
    iput p5, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 156
    iput p6, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 157
    if-eqz p7, :cond_0

    .line 158
    iput v1, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 159
    iput v1, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 161
    :cond_0
    return-void
.end method

.method public static findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;
    .locals 2
    .parameter "v"

    .prologue
    .line 691
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 692
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Lcom/android/launcher2/DragOrigin;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 693
    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    goto :goto_0

    .line 695
    :cond_0
    instance-of v1, v0, Lcom/android/launcher2/DragOrigin;

    if-eqz v1, :cond_1

    .line 696
    check-cast v0, Lcom/android/launcher2/DragOrigin;

    .line 698
    .end local v0           #parent:Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z
    .locals 27
    .parameter "item"
    .parameter "receiver"
    .parameter "dragOrigin"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "screen"

    .prologue
    .line 166
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    .line 167
    invoke-interface/range {p2 .. p2}, Lcom/android/launcher2/DragReceivable;->getContainerType()J

    move-result-wide v4

    .line 169
    .local v4, container:J
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    .line 171
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v2, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v0, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v21, v0

    .line 174
    .local v21, homeView:Lcom/android/launcher2/HomeView;
    sget-object v2, Lcom/android/launcher2/DragState$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_0

    .line 199
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown item type: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    move-object/from16 v3, p1

    .line 176
    check-cast v3, Lcom/android/launcher2/HomePendingWidget;

    .line 177
    .local v3, homeWidget:Lcom/android/launcher2/HomePendingWidget;
    const/4 v9, 0x0

    move-object/from16 v2, p0

    move/from16 v6, p8

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/DragState;->fillHomeItemFields(Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 178
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/launcher2/HomeView;->addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;)V

    .line 203
    .end local v3           #homeWidget:Lcom/android/launcher2/HomePendingWidget;
    :goto_0
    const/4 v2, 0x1

    .line 285
    .end local v21           #homeView:Lcom/android/launcher2/HomeView;
    .end local p2
    :goto_1
    return v2

    .restart local v21       #homeView:Lcom/android/launcher2/HomeView;
    .restart local p2
    :pswitch_1
    move-object/from16 v7, p1

    .line 182
    check-cast v7, Lcom/android/launcher2/HomePendingItem;

    const/4 v2, 0x2

    new-array v11, v2, [I

    const/4 v2, 0x0

    aput p4, v11, v2

    const/4 v2, 0x1

    aput p5, v11, v2

    const/4 v12, 0x0

    move-object/from16 v6, v21

    move-wide v8, v4

    move/from16 v10, p8

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher2/HomeView;->processShortcutFromDrop(Lcom/android/launcher2/HomePendingItem;JI[I[I)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v7, p1

    .line 188
    check-cast v7, Lcom/android/launcher2/HomePendingSamsungWidget;

    .line 189
    .local v7, samsungWidget:Lcom/android/launcher2/HomePendingSamsungWidget;
    const/4 v13, 0x1

    move-object/from16 v6, p0

    move-wide v8, v4

    move/from16 v10, p8

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v6 .. v13}, Lcom/android/launcher2/DragState;->fillHomeItemFields(Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 190
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/android/launcher2/HomeView;->addSamsungWidgetFromDrop(Lcom/android/launcher2/HomePendingSamsungWidget;)Z

    goto :goto_0

    .end local v7           #samsungWidget:Lcom/android/launcher2/HomePendingSamsungWidget;
    :pswitch_3
    move-object/from16 v9, p1

    .line 194
    check-cast v9, Lcom/android/launcher2/HomePendingSurfaceWidget;

    .line 195
    .local v9, surfWidget:Lcom/android/launcher2/HomePendingSurfaceWidget;
    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-wide v10, v4

    move/from16 v12, p8

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher2/DragState;->fillHomeItemFields(Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 196
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/android/launcher2/HomeView;->addSurfaceWidgetFromDrop(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z

    goto :goto_0

    .line 204
    .end local v9           #surfWidget:Lcom/android/launcher2/HomePendingSurfaceWidget;
    .end local v21           #homeView:Lcom/android/launcher2/HomeView;
    :cond_0
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_a

    const-wide/16 v10, -0x64

    cmp-long v2, v4, v10

    if-eqz v2, :cond_1

    const-wide/16 v10, -0x65

    cmp-long v2, v4, v10

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_a

    move-object/from16 v2, p2

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v6, :cond_a

    .line 209
    :cond_1
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v2, :cond_8

    .line 210
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    move-object/from16 v11, p1

    check-cast v11, Lcom/android/launcher2/AppFolderItem;

    move-wide v12, v4

    move/from16 v14, p8

    move/from16 v15, p4

    move/from16 v16, p5

    invoke-static/range {v10 .. v16}, Lcom/android/launcher2/HomeFolderItem;->createFromAppFolderItem(Landroid/content/Context;Lcom/android/launcher2/AppFolderItem;JIII)Lcom/android/launcher2/HomeFolderItem;

    move-result-object p1

    .line 256
    :cond_2
    :goto_2
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_3

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 257
    :cond_3
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_4

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_4

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_4

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, p5

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v2, :cond_5

    :cond_4
    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move-wide/from16 v17, v4

    .line 260
    invoke-interface/range {v10 .. v18}, Lcom/android/launcher2/DragReceivable;->setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V

    .line 262
    :cond_5
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_7

    .line 264
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragReceivable;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 267
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_SURFACE_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v6, :cond_6

    move-object/from16 v2, p1

    .line 268
    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v0, v2, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v26, v0

    .line 269
    .local v26, view:Lcom/android/launcher2/SurfaceWidgetView;
    if-eqz v26, :cond_6

    .line 270
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/launcher2/SurfaceWidgetView;->setVisibility(I)V

    .line 271
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    .line 272
    .local v22, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v22

    instance-of v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz v2, :cond_6

    move-object/from16 v19, v22

    .line 273
    check-cast v19, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 274
    .local v19, clp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v6}, Lcom/android/launcher2/SurfaceWidgetView;->repositionSurfaceWidget(II)V

    .line 281
    .end local v19           #clp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v22           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v26           #view:Lcom/android/launcher2/SurfaceWidgetView;
    :cond_6
    if-eqz p3, :cond_7

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/launcher2/DragOrigin;

    if-eqz v2, :cond_7

    .line 282
    check-cast p2, Lcom/android/launcher2/DragOrigin;

    .end local p2
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    .line 285
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 214
    .restart local p2
    :cond_8
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v6, :cond_9

    .line 215
    new-instance v25, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct/range {v25 .. v25}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 216
    .local v25, titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/BaseItem;->mIconResId:I

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v6

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-object v2, v2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v0, v25

    invoke-virtual {v6, v2, v0}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    .line 220
    check-cast p1, Lcom/android/launcher2/AppItem;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object p1

    .restart local p1
    move-object/from16 v2, p1

    .line 221
    check-cast v2, Lcom/android/launcher2/HomeShortcutItem;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 226
    .end local v25           #titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 228
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0e00c6

    invoke-virtual {v2, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_2

    .line 224
    :cond_9
    check-cast p1, Lcom/android/launcher2/AppItem;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object p1

    .restart local p1
    goto :goto_3

    .line 230
    :cond_a
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_2

    .line 231
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    add-int/lit8 v24, v2, 0x1

    .line 232
    .local v24, previousPage:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v0, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v21, v0

    .line 233
    .restart local v21       #homeView:Lcom/android/launcher2/HomeView;
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .line 234
    .local v23, maxPages:I
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v2

    add-int/lit8 v20, v2, 0x1

    .line 235
    .local v20, currentPage:I
    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    rem-int v20, v20, v23

    .line 237
    :cond_b
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v2, :cond_d

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 239
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0e00ca

    invoke-virtual {v2, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_2

    .line 241
    :cond_c
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0e00c8

    invoke-virtual {v2, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_2

    .line 244
    :cond_d
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v2, :cond_e

    .line 246
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0e00cb

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v2, v6, v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    goto/16 :goto_2

    .line 249
    :cond_e
    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    .line 250
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0e00cb

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v2, v6, v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    goto/16 :goto_2

    .line 252
    :cond_f
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0e00c9

    invoke-virtual {v2, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_2

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private swapItems(Landroid/view/View;Landroid/view/View;)V
    .locals 17
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/HomeItem;

    .line 555
    .local v16, i1:Lcom/android/launcher2/HomeItem;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    .line 558
    .local v3, i2:Lcom/android/launcher2/HomeItem;
    iget v15, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 559
    .local v15, cellX:I
    iget v11, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 560
    .local v11, cellY:I
    iget v14, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 561
    .local v14, screen:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/DragState;->getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 562
    .local v4, p1:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragState;->getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    .line 564
    .local v5, p2:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v8, v3, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v9, v3, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    .line 565
    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, v16

    iget v13, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object/from16 v6, p0

    move-object/from16 v7, v16

    move-object v8, v5

    move-object v9, v4

    move v10, v15

    invoke-direct/range {v6 .. v14}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    .line 569
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    .line 571
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    .line 572
    if-ne v4, v5, :cond_1

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v2

    float-to-double v6, v2

    const-wide v8, 0x3feeb851eb851eb8L

    cmpl-double v2, v6, v8

    if-ltz v2, :cond_0

    .line 575
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 577
    :cond_0
    const/high16 v2, 0x3f80

    const/16 v6, 0xfa

    move-object/from16 v0, p2

    invoke-static {v0, v2, v6}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 580
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    .line 582
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    iget-wide v8, v3, Lcom/android/launcher2/HomeItem;->container:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_2

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v2, v6, v8

    if-nez v2, :cond_2

    .line 587
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    .line 589
    :cond_2
    return-void
.end method


# virtual methods
.method public cleanupSwap()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/DragState;->swapItems(Landroid/view/View;Landroid/view/View;)V

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    goto :goto_0
.end method

.method public createHomeFolderFromDragItem()Z
    .locals 15

    .prologue
    .line 598
    const/4 v10, 0x0

    .line 599
    .local v10, folderCreated:Z
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    .line 600
    .local v11, item:Lcom/android/launcher2/BaseItem;
    if-eqz v11, :cond_2

    .line 601
    const/4 v6, 0x0

    .line 602
    .local v6, removeItem:Z
    const/4 v7, 0x0

    .line 603
    .local v7, findNewPosition:Z
    const/4 v1, 0x0

    .line 604
    .local v1, folderItem:Lcom/android/launcher2/HomeShortcutItem;
    const-wide/16 v4, -0x64

    .line 605
    .local v4, destinationContainerId:J
    iget-object v0, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v2, :cond_4

    .line 607
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 608
    new-instance v14, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v14}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 609
    .local v14, titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    iget v0, v11, Lcom/android/launcher2/BaseItem;->mIconResId:I

    iput v0, v14, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 610
    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    move-object v0, v11

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget-object v0, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v0, v14}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    .line 612
    check-cast v11, Lcom/android/launcher2/AppItem;

    .end local v11           #item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    .line 613
    iget-object v0, v14, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 643
    .end local v14           #titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 644
    const/4 v10, 0x0

    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    .line 646
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_1

    const-string v0, "create_folder"

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    const/4 v12, 0x0

    .line 649
    .local v12, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v12, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v12           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-direct {v12, v0}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    .line 650
    .restart local v12       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v12, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v12           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v12}, Lcom/android/launcher2/guide/CreateFolderGuider;->dismissHelpDialog_step3()V

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getContainerType()J

    move-result-wide v2

    iget v8, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    iget v9, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    invoke-static/range {v0 .. v9}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    .line 657
    .end local v1           #folderItem:Lcom/android/launcher2/HomeShortcutItem;
    .end local v4           #destinationContainerId:J
    .end local v6           #removeItem:Z
    .end local v7           #findNewPosition:Z
    :cond_2
    return v10

    .line 616
    .restart local v1       #folderItem:Lcom/android/launcher2/HomeShortcutItem;
    .restart local v4       #destinationContainerId:J
    .restart local v6       #removeItem:Z
    .restart local v7       #findNewPosition:Z
    .restart local v11       #item:Lcom/android/launcher2/BaseItem;
    :cond_3
    check-cast v11, Lcom/android/launcher2/AppItem;

    .end local v11           #item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    goto :goto_0

    .line 618
    .restart local v11       #item:Lcom/android/launcher2/BaseItem;
    :cond_4
    iget-object v0, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v2, :cond_5

    instance-of v0, v11, Lcom/android/launcher2/HomePendingItem;

    if-eqz v0, :cond_5

    .line 620
    check-cast v11, Lcom/android/launcher2/HomePendingItem;

    .end local v11           #item:Lcom/android/launcher2/BaseItem;
    iget-object v13, v11, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    .line 621
    .local v13, name:Landroid/content/ComponentName;
    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v13}, Lcom/android/launcher2/HomeView;->processItemDropToNewFolder(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 622
    .end local v13           #name:Landroid/content/ComponentName;
    .restart local v11       #item:Lcom/android/launcher2/BaseItem;
    :cond_5
    iget-object v0, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v2, :cond_6

    iget-object v0, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v2, :cond_0

    instance-of v0, v11, Lcom/android/launcher2/HomePendingItem;

    if-nez v0, :cond_0

    :cond_6
    move-object v1, v11

    .line 624
    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    .line 625
    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v0, v2, v8

    if-eqz v0, :cond_7

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v0, v2, v8

    if-nez v0, :cond_8

    .line 630
    :cond_7
    const/4 v6, 0x1

    .line 631
    iget-wide v4, v1, Lcom/android/launcher2/HomeItem;->container:J

    goto :goto_0

    .line 636
    :cond_8
    const/4 v6, 0x1

    .line 637
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public foundValidDrop()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    return v0
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method getFolderParent()Lcom/android/launcher2/Folder;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 796
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v3, v3, Landroid/view/View;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 804
    :goto_0
    return-object v0

    .line 797
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Landroid/view/View;

    .line 798
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 799
    .local v0, p:Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 800
    instance-of v3, v0, Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_1

    .line 801
    check-cast v0, Lcom/android/launcher2/Folder;

    goto :goto_0

    .line 802
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 804
    goto :goto_0
.end method

.method public getItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .locals 4
    .parameter "v"

    .prologue
    .line 668
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 669
    .local v1, parent:Landroid/view/ViewGroup;
    instance-of v3, v1, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_0

    .line 670
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 676
    :goto_0
    return-object v3

    .line 674
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 675
    .local v0, item:Lcom/android/launcher2/BaseItem;
    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    .line 676
    .local v2, ws:Lcom/android/launcher2/Workspace;
    iget v3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public getReceiver()Lcom/android/launcher2/DragReceivable;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    return-object v0
.end method

.method public getShadow()Lcom/android/launcher2/ShadowBuilder;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    return-object v0
.end method

.method public hasDeleted()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    return v0
.end method

.method public hasEnded()Z
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    return v0
.end method

.method public initiateSwap(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 538
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    .line 539
    .local v0, dragView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    if-eq p1, v0, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 544
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->cleanupSwap()V

    .line 546
    :cond_2
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    .line 547
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/DragState;->swapItems(Landroid/view/View;Landroid/view/View;)V

    .line 548
    iput-boolean v2, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 549
    iput-boolean v2, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    goto :goto_0
.end method

.method public isMoveInsideOpenFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;)Z
    .locals 1
    .parameter "item"
    .parameter "receiver"

    .prologue
    .line 815
    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logDebugInfo()V
    .locals 4

    .prologue
    .line 746
    sget-boolean v1, Lcom/android/launcher2/DragState;->DEBUGGABLE:Z

    if-eqz v1, :cond_1

    .line 747
    const-string v0, "==============================================================================="

    .line 749
    .local v0, sep:Ljava/lang/String;
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v1, "DragState"

    const-string v2, "DragState member variables:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDragOrigin:     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 754
    const-string v2, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    ...  parent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_0
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFoundValidDrop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasEnded:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSwapView:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEndRunnable:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBlockDeleteFromSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string v1, "DragState"

    const-string v2, "details:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    .end local v0           #sep:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z
    .locals 8
    .parameter "receiver"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "screen"

    .prologue
    .line 139
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z
    .locals 9
    .parameter "receiver"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "screen"
    .parameter "animateDrop"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-eqz v0, :cond_3

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->logDebugInfo()V

    .line 118
    sget-boolean v0, Lcom/android/launcher2/DragState;->DEBUGGABLE:Z

    if-eqz v0, :cond_2

    .line 119
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reciever:        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz p1, :cond_1

    .line 121
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    ...  parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/launcher2/DragReceivable;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   y:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen:          "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to move item after the drop was handled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {p1, v0}, Lcom/android/launcher2/DragReceivable;->show(Lcom/android/launcher2/BaseItem;)V

    .line 130
    if-eqz p7, :cond_4

    .line 131
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    .line 133
    :cond_4
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveItemToWithoutAnimation(Lcom/android/launcher2/DragReceivable;IIIII)Z
    .locals 10
    .parameter "receiver"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "screen"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    move-result v9

    .local v9, rc:Z
    if-eqz v9, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {p1, v0}, Lcom/android/launcher2/DragReceivable;->show(Lcom/android/launcher2/BaseItem;)V

    .line 148
    :cond_0
    return v9
.end method

.method public onDelete()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 318
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_0

    .line 320
    const-string v3, "create_folder"

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v3, :cond_1

    .line 324
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->deleteFromSource()V

    .line 325
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-nez v3, :cond_2

    .line 326
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v3}, Lcom/android/launcher2/ShadowBuilder;->clearSurface()V

    .line 328
    :cond_2
    iput-boolean v6, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    .line 329
    iput-boolean v6, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 330
    iput-boolean v6, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    .line 335
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v3, :cond_6

    .line 336
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v1, Lcom/android/launcher2/HomeWidgetItem;

    .line 337
    .local v1, homeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;
    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    .line 338
    .local v0, appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    if-eqz v0, :cond_3

    .line 339
    new-instance v3, Lcom/android/launcher2/DragState$1;

    const-string v4, "deleteAppWidgetId"

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/android/launcher2/DragState$1;-><init>(Lcom/android/launcher2/DragState;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v3}, Lcom/android/launcher2/DragState$1;->start()V

    .line 359
    .end local v0           #appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    .end local v1           #homeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_4

    .line 360
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->unbind()V

    .line 362
    :cond_4
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_5

    .line 363
    const-string v3, "remove_items"

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 364
    new-instance v4, Lcom/android/launcher2/guide/RemoveItemsGuider;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-direct {v4, v3}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    .line 365
    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 366
    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    const/4 v4, 0x0

    invoke-static {v3, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 367
    .local v2, t:Landroid/widget/Toast;
    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    const v4, 0x7f03000f

    invoke-static {v3, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 368
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 369
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher2/DragState$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/DragState$2;-><init>(Lcom/android/launcher2/DragState;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    .end local v2           #t:Landroid/widget/Toast;
    :cond_5
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v4, 0x7f0e00c7

    invoke-virtual {v3, v4}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_0

    .line 346
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v3, :cond_7

    .line 347
    sget-object v5, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v4, Lcom/android/launcher2/SamsungWidgetItem;

    invoke-virtual {v5, v3, v4}, Lcom/android/launcher2/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungWidgetItem;)V

    goto :goto_1

    .line 349
    :cond_7
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v3, :cond_3

    .line 352
    const-string v3, "SurfaceWidgetFlow"

    const-string v4, "destroying surface widget with delete bucket"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v3, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v4, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    sget-object v5, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher2/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V

    goto/16 :goto_1
.end method

.method public onDragStartedSuccessfully()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->hide(Lcom/android/launcher2/BaseItem;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onDrop()V
    .locals 2

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->logDebugInfo()V

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to call DrageState.onDrop more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 298
    return-void
.end method

.method public onDropSetEndRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "runnable"

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 306
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    .line 307
    return-void
.end method

.method public onEnd()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x1f4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 385
    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v1, v7, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 386
    .local v1, homeView:Lcom/android/launcher2/HomeView;
    iget-boolean v7, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-eqz v7, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    if-eqz v7, :cond_2

    .line 389
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v7}, Lcom/android/launcher2/ShadowBuilder;->clearSurface()V

    .line 391
    :cond_2
    iput-boolean v10, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    .line 392
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v6

    .line 393
    .local v6, v:Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 394
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 395
    .local v0, handler:Landroid/os/Handler;
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    iput-object v9, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 399
    .end local v0           #handler:Landroid/os/Handler;
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v7, :cond_5

    .line 400
    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-nez v7, :cond_4

    .line 402
    const-string v7, "create_folder"

    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 403
    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-static {v7}, Lcom/android/launcher2/guide/GuideFragment;->showWrongActionDialog(Landroid/app/Activity;)V

    .line 407
    :cond_4
    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v7, :cond_0

    const-string v7, "create_folder"

    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 410
    :cond_5
    iget-boolean v7, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v7, :cond_c

    .line 411
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->deleteFromSource()V

    .line 412
    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v7, :cond_6

    .line 413
    const-string v7, "move_app"

    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 414
    sput-boolean v10, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 415
    const/4 v3, 0x0

    .line 416
    .local v3, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/MoveAppsGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v7}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    .line 417
    .restart local v3       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v3, Lcom/android/launcher2/guide/MoveAppsGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/MoveAppsGuider;->dismissHelpDialog()V

    .line 418
    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    const/4 v8, 0x0

    invoke-static {v7, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 419
    .local v5, t:Landroid/widget/Toast;
    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    const v8, 0x7f03000f

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 420
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 421
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 422
    .local v4, mHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/launcher2/DragState$3;

    invoke-direct {v7, p0, v1}, Lcom/android/launcher2/DragState$3;-><init>(Lcom/android/launcher2/DragState;Lcom/android/launcher2/HomeView;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 477
    .end local v4           #mHandler:Landroid/os/Handler;
    .end local v5           #t:Landroid/widget/Toast;
    :cond_6
    :goto_1
    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-nez v7, :cond_0

    .line 478
    const-string v7, "remove_items"

    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 479
    const/4 v3, 0x0

    .line 480
    .restart local v3       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/RemoveItemsGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v7}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    .line 481
    .restart local v3       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v3, Lcom/android/launcher2/guide/RemoveItemsGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    .line 483
    :cond_7
    const-string v7, "create_folder"

    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 484
    const/4 v3, 0x0

    .line 485
    .restart local v3       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v7}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    .line 486
    .restart local v3       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v3, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/CreateFolderGuider;->dismissHelpDialog()V

    .line 488
    :cond_8
    const-string v7, "move_app"

    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 489
    const/4 v3, 0x0

    .line 490
    .restart local v3       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/MoveAppsGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v7}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    .line 491
    .restart local v3       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v3, Lcom/android/launcher2/guide/MoveAppsGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/MoveAppsGuider;->dismissHelpDialog()V

    .line 494
    :cond_9
    sget-boolean v7, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    if-nez v7, :cond_0

    .line 495
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 496
    .restart local v4       #mHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/launcher2/DragState$5;

    invoke-direct {v7, p0}, Lcom/android/launcher2/DragState$5;-><init>(Lcom/android/launcher2/DragState;)V

    invoke-virtual {v4, v7, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 432
    .end local v4           #mHandler:Landroid/os/Handler;
    :cond_a
    const-string v7, "create_folder"

    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 433
    const/4 v3, 0x0

    .line 434
    .restart local v3       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v7}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    .line 435
    .restart local v3       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v3, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/CreateFolderGuider;->dismissHelpDialog()V

    .line 436
    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-static {v7}, Lcom/android/launcher2/guide/GuideFragment;->showWrongActionDialog(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 437
    :cond_b
    const-string v7, "remove_items"

    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 438
    const/4 v3, 0x0

    .line 439
    .restart local v3       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/RemoveItemsGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v7, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v7}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    .line 440
    .restart local v3       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v3, Lcom/android/launcher2/guide/RemoveItemsGuider;

    .end local v3           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    .line 441
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 442
    .restart local v4       #mHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/launcher2/DragState$4;

    invoke-direct {v7, p0}, Lcom/android/launcher2/DragState$4;-><init>(Lcom/android/launcher2/DragState;)V

    invoke-virtual {v4, v7, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 453
    .end local v4           #mHandler:Landroid/os/Handler;
    :cond_c
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v7, v7, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v7, :cond_d

    .line 454
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v2, Lcom/android/launcher2/CellLayoutNoGap;

    .line 455
    .local v2, l:Lcom/android/launcher2/CellLayoutNoGap;
    iget-object v7, v2, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v7, :cond_d

    iget v7, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    if-ltz v7, :cond_d

    .line 456
    iget v7, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    invoke-virtual {v2, v7}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder(I)V

    .line 457
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget v8, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    const/4 v9, -0x1

    invoke-virtual {v2, v7, v8, v9}, Lcom/android/launcher2/CellLayoutNoGap;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 460
    .end local v2           #l:Lcom/android/launcher2/CellLayoutNoGap;
    :cond_d
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v7, :cond_e

    .line 461
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v8, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v7, v8}, Lcom/android/launcher2/DragOrigin;->onFailedDrop(Lcom/android/launcher2/BaseItem;)V

    .line 462
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v8, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v7, v8}, Lcom/android/launcher2/DragOrigin;->show(Lcom/android/launcher2/BaseItem;)V

    .line 464
    :cond_e
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v7, v7, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v7, v7, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v7, :cond_6

    .line 473
    :cond_f
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    goto/16 :goto_1
.end method

.method public setShadow(Lcom/android/launcher2/ShadowBuilder;)V
    .locals 0
    .parameter "shadow"

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    .line 705
    return-void
.end method

.method public setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    if-eq p1, v0, :cond_0

    .line 740
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    .line 741
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/DragState$VisualMode;->enter(Lcom/android/launcher2/UpdateableShadowBuilder;)V

    .line 743
    :cond_0
    return-void
.end method
