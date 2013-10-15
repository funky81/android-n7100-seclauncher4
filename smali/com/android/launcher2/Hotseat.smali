.class public Lcom/android/launcher2/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;
.implements Lcom/android/launcher2/CellLayoutContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Hotseat$3;
    }
.end annotation


# static fields
.field private static final HOTSEAT_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Hotseat"


# instance fields
.field private isSecretItem:Z

.field private isWidgetItem:Z

.field private itemFromMenu:Z

.field private mBackground:Landroid/view/View;

.field mContent:Lcom/android/launcher2/CellLayoutHotseat;

.field private mDragInContentArea:Z

.field private mEntered:Z

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mIsLandscape:Z

.field private final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mMaxCellCount:I

.field private mShowHotseatTitle:Z

.field private tmp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 505
    new-instance v0, Lcom/android/launcher2/Hotseat$2;

    invoke-direct {v0}, Lcom/android/launcher2/Hotseat$2;-><init>()V

    sput-object v0, Lcom/android/launcher2/Hotseat;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Lcom/android/launcher2/Hotseat$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Hotseat$1;-><init>(Lcom/android/launcher2/Hotseat;)V

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 209
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    .line 211
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->isSecretItem:Z

    .line 440
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    .line 459
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    .line 464
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/HomeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Hotseat;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    return v0
.end method

.method public static normalizeContents(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    const-string v3, "Hotseat"

    const-string v4, "normalizeContents"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    sget-object v3, Lcom/android/launcher2/Hotseat;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v0, changes:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 536
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 537
    .local v2, item:Lcom/android/launcher2/HomeItem;
    iget v3, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v3, v1, :cond_0

    .line 538
    iput v1, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 539
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 542
    .end local v2           #item:Lcom/android/launcher2/HomeItem;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 543
    invoke-static {p0, v0}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 545
    :cond_2
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/HomeItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 548
    const-string v0, "Hotseat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutHotseat;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    return v0
.end method

.method checkHotSeatInteraction(Lcom/android/launcher2/DragState;ILandroid/view/View;)Z
    .locals 9
    .parameter "dragState"
    .parameter "action"
    .parameter "dragOverView"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 372
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    .line 373
    .local v4, view:Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 374
    .local v0, dragItem:Lcom/android/launcher2/BaseItem;
    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    .line 375
    .local v3, isWidget:Z
    iget-object v7, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v7, v8, :cond_0

    iget-object v7, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v7, v8, :cond_0

    iget-object v7, v0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v7, :cond_3

    :cond_0
    move v2, v5

    .line 378
    .local v2, fromApps:Z
    :goto_0
    packed-switch p2, :pswitch_data_0

    .end local p3
    :cond_1
    :goto_1
    move v5, v6

    .line 434
    :cond_2
    :goto_2
    return v5

    .end local v2           #fromApps:Z
    .restart local p3
    :cond_3
    move v2, v6

    .line 375
    goto :goto_0

    .line 380
    .restart local v2       #fromApps:Z
    :pswitch_0
    iget-object v7, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v7

    if-eqz v7, :cond_4

    instance-of v7, p3, Lcom/android/launcher2/AllappsIcon;

    if-nez v7, :cond_2

    .line 382
    :cond_4
    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v7, :cond_5

    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 385
    :cond_5
    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-nez v7, :cond_6

    .line 386
    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 391
    :cond_6
    if-nez v3, :cond_8

    if-nez v2, :cond_8

    if-eq p3, v4, :cond_8

    if-eqz p3, :cond_8

    iget-object v7, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 392
    instance-of v6, p3, Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_7

    .line 395
    invoke-static {v4}, Lcom/android/launcher2/DragState;->findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;

    move-result-object v1

    .line 396
    .local v1, dragOrigin:Lcom/android/launcher2/DragOrigin;
    instance-of v6, v1, Lcom/android/launcher2/CellLayoutNoGap;

    if-nez v6, :cond_2

    .line 400
    .end local v1           #dragOrigin:Lcom/android/launcher2/DragOrigin;
    :cond_7
    invoke-virtual {p1, p3}, Lcom/android/launcher2/DragState;->initiateSwap(Landroid/view/View;)V

    goto :goto_2

    .line 404
    :cond_8
    if-eqz v3, :cond_1

    goto :goto_2

    .line 411
    :pswitch_1
    iget-boolean v7, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    if-eqz v7, :cond_1

    .line 412
    if-nez v3, :cond_2

    if-eqz p3, :cond_1

    if-eq p3, v4, :cond_1

    goto :goto_2

    .line 420
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    goto :goto_1

    .line 423
    :pswitch_3
    iget-boolean v5, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    if-eqz v5, :cond_1

    .line 424
    iput-boolean v6, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    .line 425
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->cleanupSwap()V

    goto :goto_1

    .line 428
    :pswitch_4
    if-eqz p3, :cond_1

    instance-of v5, p3, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_1

    .line 429
    check-cast p3, Lcom/android/launcher2/FolderIconView;

    .end local p3
    invoke-virtual {p3}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    goto :goto_1

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 12
    .parameter "workspace"
    .parameter "oldState"
    .parameter "newState"
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p5, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 230
    .local v3, context:Landroid/content/Context;
    const/4 v4, 0x0

    .line 231
    .local v4, drag:Z
    const/4 v7, 0x0

    .line 232
    .local v7, shrink:Z
    sget-object v8, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v8, :cond_9

    .line 233
    const/4 v7, 0x1

    .line 234
    sget-object v8, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne p2, v8, :cond_0

    .line 235
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    .line 240
    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    .line 241
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v9, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v8, v9, :cond_1

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v9, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v8, v9, :cond_1

    move-object/from16 v0, p4

    instance-of v8, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v8, :cond_b

    :cond_1
    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    .line 243
    invoke-static/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    .line 251
    :cond_2
    if-nez v7, :cond_3

    if-eqz v4, :cond_c

    .line 252
    :cond_3
    const v8, 0x7f050001

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 253
    .local v2, animator:Landroid/animation/Animator;
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 254
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    const v8, 0x7f05000b

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 257
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 258
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher2/CellLayoutHotseat;->setAllAppsIconDimState(ZZZ)V

    .line 262
    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    if-eqz v8, :cond_6

    .line 263
    :cond_5
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/launcher2/Hotseat;->setDimHotseatItems(Lcom/android/launcher2/CellLayoutHotseat;ZZ)V

    .line 289
    :cond_6
    :goto_2
    sget-object v8, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq p3, v8, :cond_7

    sget-object v8, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v8, :cond_f

    .line 291
    :cond_7
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutHotseat;->getPageChildCount()I

    move-result v6

    .line 292
    .local v6, itemCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-ge v5, v6, :cond_f

    .line 293
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v8, v5}, Lcom/android/launcher2/CellLayoutHotseat;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 294
    .local v1, Childview:Landroid/view/View;
    instance-of v8, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v8, :cond_8

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    .end local v1           #Childview:Landroid/view/View;
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 292
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 236
    .end local v2           #animator:Landroid/animation/Animator;
    .end local v5           #i:I
    .end local v6           #itemCount:I
    :cond_9
    sget-object v8, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v8, :cond_0

    .line 237
    if-eqz p4, :cond_a

    const/4 v4, 0x1

    :goto_4
    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    goto :goto_4

    .line 241
    :cond_b
    const/4 v8, 0x0

    goto :goto_1

    .line 269
    :cond_c
    const/high16 v8, 0x7f05

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 270
    .restart local v2       #animator:Landroid/animation/Animator;
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 271
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const v8, 0x7f05000c

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 274
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 275
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher2/CellLayoutHotseat;->setAllAppsIconDimState(ZZZ)V

    .line 278
    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v8

    if-nez v8, :cond_e

    :cond_d
    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    if-eqz v8, :cond_6

    .line 279
    :cond_e
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/launcher2/Hotseat;->setDimHotseatItems(Lcom/android/launcher2/CellLayoutHotseat;ZZ)V

    .line 280
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    .line 281
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    goto :goto_2

    .line 298
    :cond_f
    const v8, 0x7f050001

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 299
    invoke-virtual {v2, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 300
    invoke-virtual {v2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 301
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "aCanvas"

    .prologue
    .line 135
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 136
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 137
    return-void
.end method

.method getCellXFromOrder(I)I
    .locals 1
    .parameter "rank"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    return p1
.end method

.method getCellYFromOrder(II)I
    .locals 1
    .parameter "rank"
    .parameter "size"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    sub-int v0, p2, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "v"

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 367
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method getLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Hotseat;->mMaxCellCount:I

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    .end local p1
    :cond_0
    return p1
.end method

.method public getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    return-object v0
.end method

.method isLandscape()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 311
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "a"

    .prologue
    const/4 v5, 0x0

    .line 320
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 322
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 323
    .local v2, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 324
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 325
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 336
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6
    .parameter "a"

    .prologue
    const/4 v5, 0x2

    .line 345
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 346
    .local v2, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 347
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 348
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 351
    return-void
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 361
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 362
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 470
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 498
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0

    .line 473
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->pointToCellExact(II[I)V

    .line 476
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->cellToPosition(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 477
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutHotseat;->onDragEvent(Landroid/view/DragEvent;)Z

    goto :goto_0

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    .line 482
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    .line 483
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->cancelRealTimeReorder()V

    .line 484
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->clearDragOutlines()V

    goto :goto_0

    .line 489
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    .line 490
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    .line 491
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->cancelRealTimeReorder()V

    .line 492
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->clearDragOutlines()V

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 355
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 356
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 357
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 158
    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    .line 159
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-static {p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator;->create(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/HotseatSwapAnimator;

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 163
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    .line 554
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 555
    .local v0, action:I
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    .line 557
    .local v1, workspace:Lcom/android/launcher2/Workspace;
    if-nez v1, :cond_1

    .line 568
    :cond_0
    :goto_0
    return v2

    .line 559
    :cond_1
    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 561
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Workspace;->isHoveringAreaX(F)I

    move-result v3

    if-eqz v3, :cond_0

    .line 562
    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setHoveringSpenIcon(I)V

    .line 563
    const/4 v2, 0x1

    goto :goto_0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public reapplyIconViewStyles()V
    .locals 12

    .prologue
    const v11, 0x7f0f0015

    const v10, 0x7f0f0014

    .line 182
    const v2, 0x7f0f0014

    .line 183
    .local v2, appIconStyle:I
    const v8, 0x7f0f0015

    .line 185
    .local v8, folderIconStyle:I
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 186
    .local v4, context:Landroid/content/Context;
    invoke-static {v4, v10}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 187
    .local v0, aivTextView:Landroid/content/res/TypedArray;
    invoke-static {v4, v10}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 189
    .local v1, aivView:Landroid/content/res/TypedArray;
    invoke-static {v4, v11}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 190
    .local v5, fivTextView:Landroid/content/res/TypedArray;
    invoke-static {v4, v11}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 192
    .local v6, fivView:Landroid/content/res/TypedArray;
    iget-object v10, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutHotseat;->getPageChildCount()I

    move-result v10

    add-int/lit8 v9, v10, -0x1

    .local v9, j:I
    :goto_0
    if-ltz v9, :cond_2

    .line 193
    iget-object v10, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v10, v9}, Lcom/android/launcher2/CellLayoutHotseat;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 194
    .local v3, childView:Landroid/view/View;
    instance-of v10, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v10, :cond_1

    move-object v7, v3

    .line 195
    check-cast v7, Lcom/android/launcher2/FolderIconView;

    .line 196
    .local v7, folderIcon:Lcom/android/launcher2/FolderIconView;
    invoke-virtual {v7, v6, v5}, Lcom/android/launcher2/FolderIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 199
    invoke-virtual {v7}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 192
    .end local v3           #childView:Landroid/view/View;
    .end local v7           #folderIcon:Lcom/android/launcher2/FolderIconView;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 200
    .restart local v3       #childView:Landroid/view/View;
    :cond_1
    instance-of v10, v3, Lcom/android/launcher2/AppIconView;

    if-eqz v10, :cond_0

    .line 201
    check-cast v3, Lcom/android/launcher2/AppIconView;

    .end local v3           #childView:Landroid/view/View;
    invoke-virtual {v3, v1, v0}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_1

    .line 205
    :cond_2
    invoke-static {v1, v0}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 206
    invoke-static {v6, v5}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 207
    return-void
.end method

.method resetLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 166
    const-string v1, "Hotseat"

    const-string v2, "resetLayout()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutHotseat;->removeAllViewsInLayout()V

    .line 170
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1, v3, v3}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    .line 171
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f090011

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    .line 175
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-boolean v2, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher2/CellLayoutHotseat;->inflateAllAppsIcon(Lcom/android/launcher2/Hotseat;Z)Lcom/android/launcher2/AllappsIcon;

    .line 177
    return-void

    .line 172
    :cond_0
    const v1, 0x7f090010

    goto :goto_0
.end method

.method public setDimHotseatItems(Lcom/android/launcher2/CellLayoutHotseat;ZZ)V
    .locals 4
    .parameter "content"
    .parameter "isDim"
    .parameter "isEnable"

    .prologue
    .line 449
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayoutHotseat;->getPageChildCount()I

    move-result v2

    .line 450
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 451
    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayoutHotseat;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 452
    .local v0, app:Lcom/android/launcher2/AppIconView;
    if-eqz v0, :cond_0

    .line 453
    const/4 v3, 0x1

    invoke-virtual {v0, p2, v3}, Lcom/android/launcher2/AppIconView;->setDimmed(ZZ)V

    .line 454
    invoke-virtual {v0, p3}, Lcom/android/launcher2/AppIconView;->setEnabled(Z)V

    .line 450
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    .end local v0           #app:Lcom/android/launcher2/AppIconView;
    :cond_1
    return-void
.end method

.method setDragInContentArea(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    .line 462
    return-void
.end method

.method public setup(Lcom/android/launcher2/HomeView;)V
    .locals 4
    .parameter "homeView"

    .prologue
    const/4 v1, 0x0

    .line 109
    const-string v2, "Hotseat"

    const-string v3, "setup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 112
    sget-object v2, Lcom/android/launcher2/FocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Hotseat;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x320

    if-lt v2, v3, :cond_0

    .line 116
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    .line 121
    :goto_0
    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0a0022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Hotseat;->mMaxCellCount:I

    .line 123
    const-string v1, "Hotseat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setup :: mIsLandscape:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMaxCellCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/Hotseat;->mMaxCellCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutHotseat;->setHomeView(Lcom/android/launcher2/HomeView;)V

    .line 125
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 126
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-boolean v2, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    iget v3, p0, Lcom/android/launcher2/Hotseat;->mMaxCellCount:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->setup(ZI)V

    .line 127
    return-void

    .line 118
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    goto :goto_0
.end method
