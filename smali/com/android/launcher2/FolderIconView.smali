.class public Lcom/android/launcher2/FolderIconView;
.super Lcom/android/launcher2/AppIconView;
.source "FolderIconView.java"

# interfaces
.implements Lcom/android/launcher2/DragReceivable;
.implements Lcom/android/launcher2/HomeFolderItem$FolderListener;


# static fields
.field static final EMPTY_ICON_OFFSET:I = 0xc

.field private static final EMPTY_PLATE_SCALE:F = 0.8f

.field public static final HOVER_FOLDER_ICON_CNT:I = 0x7

.field private static final HOVER_REMAIN:J = 0x7d0L

.field private static final HOVER_START_DURATION:J = 0x12cL

.field private static mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;


# instance fields
.field private Hover_Refresh_cnt:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field final mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

.field private mDimAmount:F

.field private mDraggedIconId:J

.field private mDraggingOver:Z

.field mDrawPlate:Z

.field final mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

.field private final mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

.field private mFolderHoveringStartTime:J

.field private mFolderItem:Lcom/android/launcher2/FolderItem;

.field private mFromThisFolder:Z

.field final mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

.field mIgnoreSetAlphaOnDragExit:Z

.field private mLastAttachedFolder:Lcom/android/launcher2/Folder;

.field private mOnEnterDelayed:Ljava/lang/Runnable;

.field protected mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

.field protected mPlateBitmap:Landroid/graphics/Bitmap;

.field final mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

.field private mTmpPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/FolderIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/FolderIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderHoveringStartTime:J

    .line 63
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    .line 65
    iput v4, p0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    .line 67
    const v0, 0x3f0ccccd

    iput v0, p0, Lcom/android/launcher2/FolderIconView;->mDimAmount:F

    .line 69
    iput-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 73
    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v0, v5, v6, v2}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    .line 78
    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v0, v5, v6, v2}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    .line 85
    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v0, v5, v6, v2}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    .line 87
    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v1, 0x1f4

    const/high16 v3, 0x3f80

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    .line 204
    iput-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    .line 398
    new-instance v0, Lcom/android/launcher2/FolderIconView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderIconView$2;-><init>(Lcom/android/launcher2/FolderIconView;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mOnEnterDelayed:Ljava/lang/Runnable;

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    .line 610
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mTmpPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v0, Lcom/android/launcher2/FolderAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/launcher2/FolderAnimator;-><init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderIconView;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    .line 100
    return-void
.end method

.method private acceptDrop(Lcom/android/launcher2/DragState;)Z
    .locals 2
    .parameter "dragState"

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 172
    .local v0, item:Lcom/android/launcher2/BaseItem;
    if-eqz v0, :cond_0

    .line 173
    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    const/4 v1, 0x1

    .line 177
    .end local v0           #item:Lcom/android/launcher2/BaseItem;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/FolderIconView;)Lcom/android/launcher2/FolderAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/FolderIconView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderIconView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->onDragEnter()V

    return-void
.end method

.method private draw_(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 595
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getNormalFolderBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 598
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIconView;->drawPlate(Landroid/graphics/Canvas;)V

    .line 599
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 603
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIconView;->drawIconOrText(Landroid/graphics/Canvas;)V

    .line 604
    return-void
.end method

.method private droppedInOurFolder(Lcom/android/launcher2/DragState;)Z
    .locals 5
    .parameter "dragState"

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getReceiver()Lcom/android/launcher2/DragReceivable;

    move-result-object v1

    .line 291
    .local v1, rec:Lcom/android/launcher2/DragReceivable;
    if-nez v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v2

    .line 292
    :cond_1
    instance-of v3, v1, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 293
    check-cast v0, Lcom/android/launcher2/CellLayoutNoGap;

    .line 294
    .local v0, l:Lcom/android/launcher2/CellLayoutNoGap;
    iget-object v3, v0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_0

    .line 295
    iget-object v3, v0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v3, v3, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;
    .locals 6
    .parameter "info"

    .prologue
    .line 699
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 700
    invoke-interface {p1, v0}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 701
    .local v1, item:Lcom/android/launcher2/BaseItem;
    iget-wide v2, v1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v4, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 705
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    :goto_1
    return-object v1

    .line 699
    .restart local v1       #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static mix(FFF)F
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "mix"

    .prologue
    .line 685
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private onDragEnter()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f80

    .line 404
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isTransitioningRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mOnEnterDelayed:Ljava/lang/Runnable;

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/FolderIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 422
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 409
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    .line 410
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->drawAsEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 411
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 412
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 421
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto :goto_0

    .line 414
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    goto :goto_1
.end method

.method private setFolderItem(Lcom/android/launcher2/FolderItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p0}, Lcom/android/launcher2/FolderItem;->removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 738
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    .line 739
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p0}, Lcom/android/launcher2/FolderItem;->addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 742
    :cond_1
    return-void
.end method

.method public static setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 513
    sput-object p0, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    .line 514
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p1}, Lcom/android/launcher2/FolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 183
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e00c1

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public applyBaseItem(Lcom/android/launcher2/BaseItem;)V
    .locals 4
    .parameter "item"

    .prologue
    const/high16 v3, 0x3f80

    .line 134
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 136
    .local v0, icon:Landroid/graphics/Bitmap;
    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, p1

    .line 137
    check-cast v1, Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, v1}, Lcom/android/launcher2/FolderIconView;->setFolderItem(Lcom/android/launcher2/FolderItem;)V

    .line 138
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, v2}, Lcom/android/launcher2/FolderIconView;->getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/BaseItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 141
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 145
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    if-nez v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 149
    new-instance v1, Lcom/android/launcher2/FolderIconView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/FolderIconView$1;-><init>(Lcom/android/launcher2/FolderIconView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/FolderIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    .line 155
    return-void
.end method

.method public cancelFolderAnims()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->cleanupFolderAnims()V

    .line 122
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->cancel()V

    .line 125
    :cond_0
    return-void
.end method

.method public cleanupFolderAnims()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->destroyDrawingCache()V

    .line 104
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->cancel()V

    .line 105
    iput-boolean v2, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->drawAsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 110
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 118
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 114
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 115
    iput-boolean v2, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    goto :goto_0
.end method

.method public createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 2
    .parameter "item"

    .prologue
    .line 392
    instance-of v0, p1, Lcom/android/launcher2/HomeShortcutItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 393
    .end local p1
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    .end local p1
    const v1, 0x7f030020

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/HomeView;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 584
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 587
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isDimmed()Z

    move-result v1

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->isEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isDimmed()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/FolderIconView;->setDimmed(ZZ)V

    .line 590
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconView;->draw_(Landroid/graphics/Canvas;)V

    .line 591
    return-void

    :cond_1
    move v1, v2

    .line 588
    goto :goto_0
.end method

.method public drawAsEmpty()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 475
    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v0

    .line 476
    .local v0, count:I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public drawPlate(Landroid/graphics/Canvas;)V
    .locals 24
    .parameter "canvas"

    .prologue
    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v13

    .line 614
    .local v13, f:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v12

    .line 615
    .local v12, e:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v15

    .line 616
    .local v15, h:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v11

    .line 617
    .local v11, c:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mTmpPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    .line 618
    .local v17, tmpPaint:Landroid/graphics/Paint;
    const/4 v14, 0x0

    .line 620
    .local v14, filter:Landroid/graphics/ColorFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->isDimmed()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-static {}, Lcom/android/launcher2/CellLayout;->isItemApp()Z

    move-result v18

    if-nez v18, :cond_6

    .line 621
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->mDimAmount:F

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/FolderIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v14

    .line 622
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 629
    :goto_0
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 630
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 632
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getNormalFolderBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v10, v0

    .line 633
    .local v10, bitmapHeight:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 634
    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x3e4ccccc

    mul-float v20, v20, v10

    const/high16 v21, 0x3f00

    mul-float v20, v20, v21

    mul-float v21, v12, v13

    invoke-static/range {v19 .. v21}, Lcom/android/launcher2/FolderIconView;->mix(FFF)F

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 636
    const/high16 v18, 0x3f80

    const/16 v19, 0x0

    const/high16 v20, 0x3f80

    sub-float v20, v20, v13

    const/high16 v21, 0x4020

    mul-float v20, v20, v21

    const/high16 v21, 0x3fc0

    sub-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 637
    .local v5, a0:F
    const/high16 v18, 0x3f80

    const/16 v19, 0x0

    const v20, 0x40133333

    mul-float v20, v20, v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 639
    .local v6, a1:F
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getNormalFolderBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v8, v18, v19

    .line 640
    .local v8, anchor_x:F
    move v9, v10

    .line 643
    .local v9, anchor_y:F
    const/16 v18, 0x0

    cmpl-float v18, v5, v18

    if-lez v18, :cond_1

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 645
    const/16 v18, 0x0

    cmpl-float v18, v13, v18

    if-eqz v18, :cond_0

    .line 646
    const/high16 v18, 0x3f80

    const v19, 0x3f333333

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v13}, Lcom/android/launcher2/FolderIconView;->mix(FFF)F

    move-result v18

    const/high16 v19, 0x3f80

    const/high16 v20, 0x4040

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v13}, Lcom/android/launcher2/FolderIconView;->mix(FFF)F

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 648
    :cond_0
    const/high16 v18, 0x437f

    mul-float v18, v18, v5

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 649
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getNormalFolderBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 650
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 653
    :cond_1
    const/16 v18, 0x0

    cmpl-float v18, v6, v18

    if-lez v18, :cond_5

    .line 654
    const/high16 v18, 0x3f80

    cmpl-float v18, v13, v18

    if-eqz v18, :cond_2

    .line 656
    const/high16 v18, 0x3f80

    const v19, 0x3ea8f5c3

    const/high16 v20, 0x3f80

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v13}, Lcom/android/launcher2/FolderIconView;->mix(FFF)F

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 660
    :cond_2
    const/high16 v18, 0x3f80

    const v19, 0x3f4ccccd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v12}, Lcom/android/launcher2/FolderIconView;->mix(FFF)F

    move-result v16

    .line 663
    .local v16, scale:F
    float-to-double v0, v11

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    float-to-double v0, v11

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4008

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x3ff8

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3fe0

    add-double v18, v18, v20

    const/high16 v20, 0x4000

    div-float v20, v11, v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v16, v16, v18

    .line 665
    const/high16 v18, 0x3f80

    cmpl-float v18, v16, v18

    if-eqz v18, :cond_3

    .line 666
    const/high16 v18, 0x4000

    div-float v18, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v16

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 669
    :cond_3
    move v7, v11

    .line 670
    .local v7, alpha:F
    const/high16 v18, 0x437f

    mul-float v18, v18, v7

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->setTextAlpha(I)V

    .line 672
    const/16 v18, 0x0

    cmpl-float v18, v15, v18

    if-lez v18, :cond_4

    .line 673
    mul-float v18, v7, v15

    mul-float v18, v18, v6

    const/high16 v19, 0x437f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 674
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderHighlightBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 676
    :cond_4
    const/high16 v18, 0x3f80

    cmpg-float v18, v15, v18

    if-gez v18, :cond_5

    .line 677
    const/high16 v18, 0x3f80

    sub-float v18, v18, v15

    mul-float v18, v18, v7

    mul-float v18, v18, v6

    const/high16 v19, 0x437f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 678
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 681
    .end local v7           #alpha:F
    .end local v16           #scale:F
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 682
    return-void

    .line 624
    .end local v5           #a0:F
    .end local v6           #a1:F
    .end local v8           #anchor_x:F
    .end local v9           #anchor_y:F
    .end local v10           #bitmapHeight:F
    :cond_6
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/FolderIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v14

    .line 625
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_0
.end method

.method public fromThisFolder()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    return v0
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDragIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderIconWithPlate()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFolderIconWithPlate()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    .local v0, item:Lcom/android/launcher2/FolderItem;
    move-object v1, v0

    .line 695
    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconWithPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getFolderItem()Lcom/android/launcher2/FolderItem;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    return-object v0
.end method

.method getPlateOffsetY()F
    .locals 3

    .prologue
    .line 607
    const/4 v0, 0x0

    const/high16 v1, 0x4140

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/FolderIconView;->mix(FFF)F

    move-result v0

    return v0
.end method

.method public isAnimating()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 468
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 471
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentDragging()Z
    .locals 4

    .prologue
    .line 751
    iget-wide v0, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->drawAsEmpty()Z

    move-result v0

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    return v0
.end method

.method public onAdd(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 715
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->refresh()V

    .line 716
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 746
    invoke-super {p0}, Lcom/android/launcher2/AppIconView;->onDetachedFromWindow()V

    .line 747
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p0}, Lcom/android/launcher2/FolderItem;->removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 748
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/DragState;

    if-nez v1, :cond_1

    const/4 v7, 0x0

    .line 286
    :cond_0
    :goto_0
    return v7

    .line 211
    :cond_1
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_4

    .line 212
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState;

    .line 213
    .local v0, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    .line 214
    .local v11, item:Lcom/android/launcher2/BaseItem;
    if-eqz v11, :cond_3

    iget-object v1, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_2

    iget-object v1, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_2

    instance-of v1, v11, Lcom/android/launcher2/HomePendingItem;

    if-eqz v1, :cond_3

    :cond_2
    const/4 v8, 0x1

    .line 216
    .local v8, dragFromMenu:Z
    :goto_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v8, :cond_4

    .line 217
    const/4 v7, 0x0

    goto :goto_0

    .line 214
    .end local v8           #dragFromMenu:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 226
    .end local v0           #dragState:Lcom/android/launcher2/DragState;
    .end local v11           #item:Lcom/android/launcher2/BaseItem;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .line 227
    .local v12, myParent:Landroid/view/ViewParent;
    instance-of v1, v12, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v1, :cond_5

    .line 228
    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 229
    .local v10, grandParent:Landroid/view/ViewParent;
    instance-of v1, v10, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v1, :cond_5

    .line 230
    check-cast v10, Lcom/android/launcher2/CellLayoutNoGap;

    .end local v10           #grandParent:Landroid/view/ViewParent;
    invoke-virtual {v10, p1, p0}, Lcom/android/launcher2/CellLayoutNoGap;->onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V

    .line 233
    :cond_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState;

    .line 234
    .restart local v0       #dragState:Lcom/android/launcher2/DragState;
    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIconView;->acceptDrop(Lcom/android/launcher2/DragState;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v1, :cond_6

    const/4 v7, 0x1

    .line 235
    .local v7, accept:Z
    :goto_2
    if-eqz v7, :cond_0

    .line 236
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 238
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/BaseItem;->getContainingFolderId(Lcom/android/launcher2/BaseItem;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    goto :goto_0

    .line 234
    .end local v7           #accept:Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 238
    .restart local v7       #accept:Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 241
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-eqz v1, :cond_8

    .line 242
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 243
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 245
    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->onDragEnter()V

    .line 247
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    .line 248
    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_9

    .line 249
    const/16 v1, 0x565f

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/FolderIconView;->performHapticFeedback(II)Z

    .line 251
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto/16 :goto_0

    .line 254
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-eqz v1, :cond_a

    .line 255
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 256
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 260
    :cond_a
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    .line 261
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto/16 :goto_0

    .line 258
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    goto :goto_4

    .line 264
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-eqz v1, :cond_c

    .line 265
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 266
    :cond_c
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v9

    .line 267
    .local v9, dragItem:Lcom/android/launcher2/BaseItem;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v4

    invoke-virtual {v9}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v5

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    .line 270
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 271
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto/16 :goto_0

    .line 274
    .end local v9           #dragItem:Lcom/android/launcher2/BaseItem;
    :pswitch_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    .line 275
    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIconView;->droppedInOurFolder(Lcom/android/launcher2/DragState;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 276
    :cond_e
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 279
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    .line 280
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    .line 281
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 283
    :pswitch_5
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 301
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/AppIconView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "pen_hovering"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 303
    .local v10, isSpenHovringOn:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "finger_air_view"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 304
    .local v9, isFingerHoveringOn:I
    if-nez v10, :cond_0

    if-nez v9, :cond_0

    const/16 v18, 0x0

    .line 388
    :goto_0
    return v18

    .line 306
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 307
    .local v15, res:Landroid/content/res/Resources;
    const v18, 0x7f090005

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 308
    .local v12, onFolderHovering:Z
    if-nez v12, :cond_1

    const/16 v18, 0x0

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_2

    .line 311
    const/16 v18, 0x0

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_3

    .line 315
    const/16 v18, 0x0

    goto :goto_0

    .line 318
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 319
    .local v3, action:I
    const-wide/16 v7, 0x0

    .line 320
    .local v7, inFolderHoverInitTime:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v4

    .line 321
    .local v4, count:I
    const/4 v11, 0x0

    .line 323
    .local v11, need_refresh:I
    and-int/lit16 v0, v3, 0xff

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 388
    :cond_4
    :goto_1
    :pswitch_0
    const/16 v18, 0x1

    goto :goto_0

    .line 325
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/launcher2/FolderAnimator;->setFolderHoveringEndTime(J)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/FolderAnimator;->isCloseAnimating()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 328
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 332
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/FolderIconView;->mFolderHoveringStartTime:J

    goto :goto_1

    .line 337
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/FolderAnimator;->getFolderHoveringEndTime()J

    move-result-wide v7

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 339
    .local v5, currentTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderHoveringStartTime:J

    move-wide/from16 v18, v0

    sub-long v16, v5, v18

    .line 340
    .local v16, startHoverduration:J
    sub-long v13, v5, v7

    .line 342
    .local v13, refreshHoverduration:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v18

    if-nez v18, :cond_8

    const-wide/16 v18, 0x0

    cmp-long v18, v7, v18

    if-nez v18, :cond_8

    const-wide/16 v18, 0x12c

    cmp-long v18, v16, v18

    if-lez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/FolderAnimator;->isCloseAnimating()Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/FolderAnimator;->isHoverAnimating()Z

    move-result v18

    if-nez v18, :cond_8

    .line 349
    if-lez v4, :cond_7

    .line 351
    const/16 v18, 0xa

    const/16 v19, -0x1

    :try_start_0
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :cond_7
    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/FolderAnimator;->animateHoverExpand()V

    .line 358
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 361
    :cond_8
    div-int/lit8 v11, v4, 0x7

    .line 363
    rem-int/lit8 v18, v4, 0x7

    if-nez v18, :cond_9

    if-lez v11, :cond_9

    .line 364
    add-int/lit8 v11, v11, -0x1

    .line 366
    :cond_9
    const/16 v18, 0x7

    move/from16 v0, v18

    if-le v4, v0, :cond_4

    const-wide/16 v18, 0x7d0

    cmp-long v18, v13, v18

    if-lez v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v11, v0, :cond_4

    const-wide/16 v18, 0x0

    cmp-long v18, v7, v18

    if-lez v18, :cond_4

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/FolderAnimator;->FadeInHoverIcon(I)V

    goto/16 :goto_1

    .line 378
    .end local v5           #currentTime:J
    .end local v13           #refreshHoverduration:J
    .end local v16           #startHoverduration:J
    :pswitch_3
    const/16 v18, 0x1

    const/16 v19, -0x1

    :try_start_1
    invoke-static/range {v18 .. v19}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Lcom/android/launcher2/FolderAnimator;->animateCloseAnimsEnd(Lcom/android/launcher2/DragState;ZZ)V

    .line 383
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/launcher2/FolderAnimator;->setFolderHoveringEndTime(J)V

    goto/16 :goto_1

    .line 352
    .restart local v5       #currentTime:J
    .restart local v13       #refreshHoverduration:J
    .restart local v16       #startHoverduration:J
    :catch_0
    move-exception v18

    goto/16 :goto_2

    .line 379
    .end local v5           #currentTime:J
    .end local v13           #refreshHoverduration:J
    .end local v16           #startHoverduration:J
    :catch_1
    move-exception v18

    goto :goto_3

    .line 323
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 731
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->refresh()V

    .line 732
    return-void
.end method

.method public onRemove(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 721
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->refresh()V

    .line 722
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 726
    return-void
.end method

.method public redrawFolderIcon()Z
    .locals 5

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 486
    .local v1, itemInfo:Lcom/android/launcher2/BaseItem;
    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 497
    :goto_0
    return v2

    .line 488
    :cond_1
    iget-object v2, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, v4}, Lcom/android/launcher2/FolderIconView;->getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/BaseItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 489
    .local v0, folderIcon:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_2

    .line 490
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded()V

    .line 493
    :cond_2
    sget-object v2, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v2, v3, :cond_4

    .line 495
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 497
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    .line 502
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 503
    return-void
.end method

.method public resetPlateIfNeeded()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->drawAsEmpty()Z

    move-result v0

    .line 431
    .local v0, drawEmpty:Z
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->drawAsEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 434
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 437
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    goto :goto_0

    .line 441
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 442
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 446
    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-nez v1, :cond_4

    .line 447
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 449
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 451
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 453
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto :goto_0

    .line 444
    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    goto :goto_1
.end method

.method public resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V
    .locals 2
    .parameter "dragState"

    .prologue
    const/4 v1, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded()V

    .line 458
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mEmptyFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 460
    if-eqz p1, :cond_1

    .line 461
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/launcher2/FolderAnimator;->animateCloseAnimsEnd(Lcom/android/launcher2/DragState;ZZ)V

    .line 466
    :cond_1
    return-void
.end method

.method public restoreStateForOpenVisualize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 577
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 578
    iput-boolean v2, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 579
    iput-boolean v2, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 580
    return-void
.end method

.method public setDraggedIconId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 709
    iput-wide p1, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    .line 710
    return-void
.end method

.method public setFolder(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    .line 130
    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V
    .locals 9
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "screen"
    .parameter "container"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 198
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v2, p7

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    .line 202
    :cond_0
    return-void
.end method

.method protected shouldHaveIconShadow()Z
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 519
    return-void
.end method

.method public showBadge()V
    .locals 14

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 524
    .local v11, tag:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 525
    .local v0, badge:Landroid/graphics/drawable/Drawable;
    instance-of v12, v11, Lcom/android/launcher2/AppFolderItem;

    if-eqz v12, :cond_3

    move-object v8, v11

    .line 526
    check-cast v8, Lcom/android/launcher2/AppFolderItem;

    .line 527
    .local v8, item:Lcom/android/launcher2/AppFolderItem;
    const/4 v10, 0x0

    .line 528
    .local v10, sum:I
    invoke-virtual {v8}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v9

    .line 529
    .local v9, itemCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v9, :cond_0

    .line 530
    invoke-virtual {v8, v6}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 531
    .local v1, childItem:Lcom/android/launcher2/AppItem;
    iget v12, v1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    add-int/2addr v10, v12

    .line 529
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 533
    .end local v1           #childItem:Lcom/android/launcher2/AppItem;
    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/launcher2/FolderIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 567
    .end local v6           #i:I
    .end local v8           #item:Lcom/android/launcher2/AppFolderItem;
    .end local v9           #itemCount:I
    .end local v10           #sum:I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isDimmed()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {}, Lcom/android/launcher2/CellLayout;->isItemApp()Z

    move-result v12

    if-nez v12, :cond_2

    .line 568
    iget v12, p0, Lcom/android/launcher2/FolderIconView;->mDimAmount:F

    invoke-static {v12}, Lcom/android/launcher2/FolderIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v4

    .line 569
    .local v4, filter:Landroid/graphics/ColorFilter;
    if-eqz v0, :cond_2

    .line 570
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 572
    .end local v4           #filter:Landroid/graphics/ColorFilter;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 573
    return-void

    .line 534
    :cond_3
    instance-of v12, v11, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v12, :cond_1

    move-object v8, v11

    .line 535
    check-cast v8, Lcom/android/launcher2/HomeFolderItem;

    .line 537
    .local v8, item:Lcom/android/launcher2/HomeFolderItem;
    const/4 v7, 0x0

    .line 538
    .local v7, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 539
    .local v2, compName:Landroid/content/ComponentName;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v3, componentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 541
    .restart local v10       #sum:I
    invoke-direct {p0, v8}, Lcom/android/launcher2/FolderIconView;->getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;

    move-result-object v5

    .line 543
    .local v5, hiddenIconItem:Lcom/android/launcher2/BaseItem;
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_2
    invoke-virtual {v8}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v12

    if-ge v6, v12, :cond_7

    .line 545
    invoke-virtual {v8, v6}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v13, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v12, v13, :cond_4

    invoke-virtual {v8, v6}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v13, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v12, v13, :cond_5

    .line 548
    :cond_4
    invoke-virtual {v8, v6}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v7, v12, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 549
    if-eqz v7, :cond_5

    .line 550
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 553
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 555
    invoke-virtual {v8, v6}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v12

    if-eq v12, v5, :cond_6

    .line 556
    invoke-virtual {v8, v6}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v12

    iget v12, v12, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    add-int/2addr v10, v12

    .line 557
    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_6
    const/4 v7, 0x0

    .line 562
    const/4 v2, 0x0

    .line 543
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 565
    :cond_7
    invoke-virtual {p0, v10}, Lcom/android/launcher2/FolderIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method
