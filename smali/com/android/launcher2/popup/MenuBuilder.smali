.class public Lcom/android/launcher2/popup/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popup/MenuBuilder$ItemInvoker;,
        Lcom/android/launcher2/popup/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/popup/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/popup/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 178
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mDefaultShowAsAction:I

    .line 134
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mOptionalIconsVisible:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsClosing:Z

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 179
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 185
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 189
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    .line 191
    invoke-direct {p0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 192
    return-void
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 322
    invoke-static {p3}, Lcom/android/launcher2/popup/MenuBuilder;->getOrdering(I)I

    move-result v5

    .line 324
    .local v5, ordering:I
    new-instance v0, Lcom/android/launcher2/popup/MenuItemImpl;

    iget v7, p0, Lcom/android/launcher2/popup/MenuBuilder;->mDefaultShowAsAction:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/popup/MenuItemImpl;-><init>(Lcom/android/launcher2/popup/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 327
    .local v0, item:Lcom/android/launcher2/popup/MenuItemImpl;
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/android/launcher2/popup/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 333
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 335
    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .parameter "cleared"

    .prologue
    .line 228
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 231
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 232
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuPresenter;

    .line 233
    .local v1, presenter:Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v1, :cond_1

    .line 234
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_1
    invoke-interface {v1, p1}, Lcom/android/launcher2/popup/MenuPresenter;->updateMenuView(Z)V

    goto :goto_1

    .line 239
    .end local v1           #presenter:Lcom/android/launcher2/popup/MenuPresenter;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 282
    const-string v6, "android:menu:presenters"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 284
    .local v4, presenterStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 300
    :cond_0
    return-void

    .line 286
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 287
    .local v5, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/MenuPresenter;

    .line 288
    .local v3, presenter:Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v3, :cond_3

    .line 289
    iget-object v6, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_3
    invoke-interface {v3}, Lcom/android/launcher2/popup/MenuPresenter;->getId()I

    move-result v1

    .line 292
    .local v1, id:I
    if-lez v1, :cond_2

    .line 293
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 294
    .local v2, parcel:Landroid/os/Parcelable;
    if-eqz v2, :cond_2

    .line 295
    invoke-interface {v3, v2}, Lcom/android/launcher2/popup/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    .line 259
    iget-object v6, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 279
    :goto_0
    return-void

    .line 261
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 263
    .local v3, presenterStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v6, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 264
    .local v4, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popup/MenuPresenter;

    .line 265
    .local v2, presenter:Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v2, :cond_2

    .line 266
    iget-object v6, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 268
    :cond_2
    invoke-interface {v2}, Lcom/android/launcher2/popup/MenuPresenter;->getId()I

    move-result v1

    .line 269
    .local v1, id:I
    if-lez v1, :cond_1

    .line 270
    invoke-interface {v2}, Lcom/android/launcher2/popup/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 271
    .local v5, state:Landroid/os/Parcelable;
    if-eqz v5, :cond_1

    .line 272
    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 278
    .end local v1           #id:I
    .end local v2           #presenter:Lcom/android/launcher2/popup/MenuPresenter;
    .end local v4           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    .end local v5           #state:Landroid/os/Parcelable;
    :cond_3
    const-string v6, "android:menu:presenters"

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Lcom/android/launcher2/popup/SubMenuBuilder;)Z
    .locals 5
    .parameter "subMenu"

    .prologue
    .line 243
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 255
    :cond_0
    return v3

    .line 245
    :cond_1
    const/4 v3, 0x0

    .line 247
    .local v3, result:Z
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 248
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuPresenter;

    .line 249
    .local v1, presenter:Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v1, :cond_3

    .line 250
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_3
    if-nez v3, :cond_2

    .line 252
    invoke-interface {v1, p1}, Lcom/android/launcher2/popup/MenuPresenter;->onSubMenuSelected(Lcom/android/launcher2/popup/SubMenuBuilder;)Z

    move-result v3

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .parameter
    .parameter "ordering"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 687
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 688
    .local v1, item:Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 689
    add-int/lit8 v2, v0, 0x1

    .line 693
    .end local v1           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :goto_1
    return v2

    .line 686
    .restart local v1       #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 693
    .end local v1           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 3
    .parameter "categoryOrder"

    .prologue
    .line 617
    const/high16 v1, -0x1

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 619
    .local v0, index:I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/android/launcher2/popup/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 620
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    :cond_1
    sget-object v1, Lcom/android/launcher2/popup/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .parameter "index"
    .parameter "updateChildrenOnMenuViews"

    .prologue
    .line 434
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 438
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .parameter "titleRes"
    .parameter "title"
    .parameter "iconRes"
    .parameter "icon"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 1033
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1035
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 1036
    iput-object p5, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1039
    iput-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1040
    iput-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1059
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 1060
    return-void

    .line 1042
    :cond_0
    if-lez p1, :cond_3

    .line 1043
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1048
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1049
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1055
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1044
    :cond_3
    if-eqz p2, :cond_1

    .line 1045
    iput-object p2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1050
    :cond_4
    if-eqz p4, :cond_2

    .line 1051
    iput-object p4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 2
    .parameter "shortcutsVisible"

    .prologue
    const/4 v0, 0x1

    .line 649
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mShortcutsVisible:Z

    .line 655
    return-void

    .line 649
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 347
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .parameter "outSpecificItems"

    .prologue
    .line 376
    iget-object v10, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 377
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 379
    .local v6, lri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 381
    .local v3, N:I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->removeGroup(I)V

    .line 385
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 386
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 387
    .local v8, ri:Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_3

    move-object/from16 v10, p6

    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 389
    .local v9, rintent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 392
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/android/launcher2/popup/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .line 395
    .local v5, item:Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_1

    .line 396
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 385
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 379
    .end local v3           #N:I
    .end local v4           #i:I
    .end local v5           #item:Landroid/view/MenuItem;
    .end local v8           #ri:Landroid/content/pm/ResolveInfo;
    .end local v9           #rintent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 387
    .restart local v3       #N:I
    .restart local v4       #i:I
    .restart local v8       #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2

    .line 400
    .end local v8           #ri:Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method public addMenuPresenter(Lcom/android/launcher2/popup/MenuPresenter;)V
    .locals 2
    .parameter "presenter"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/android/launcher2/popup/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    .line 210
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/launcher2/popup/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher2/popup/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 363
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 364
    .local v0, item:Lcom/android/launcher2/popup/MenuItemImpl;
    new-instance v1, Lcom/android/launcher2/popup/SubMenuBuilder;

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/android/launcher2/popup/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)V

    .line 365
    .local v1, subMenu:Lcom/android/launcher2/popup/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuItemImpl;->setSubMenu(Lcom/android/launcher2/popup/SubMenuBuilder;)V

    .line 367
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Lcom/android/launcher2/popup/MenuBuilder$Callback;->onMenuModeChange(Lcom/android/launcher2/popup/MenuBuilder;)V

    .line 683
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->collapseItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 460
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 461
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 446
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 447
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->clear()V

    .line 448
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->clearHeader()V

    .line 449
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 450
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 451
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 452
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1024
    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1025
    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1026
    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1028
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 1029
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    .line 868
    return-void
.end method

.method final close(Z)V
    .locals 4
    .parameter "allMenusAreClosing"

    .prologue
    .line 851
    iget-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsClosing:Z

    if-eqz v3, :cond_0

    .line 863
    :goto_0
    return-void

    .line 853
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsClosing:Z

    .line 854
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 855
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuPresenter;

    .line 856
    .local v1, presenter:Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v1, :cond_1

    .line 857
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 859
    :cond_1
    invoke-interface {v1, p0, p1}, Lcom/android/launcher2/popup/MenuPresenter;->onCloseMenu(Lcom/android/launcher2/popup/MenuBuilder;Z)V

    goto :goto_1

    .line 862
    .end local v1           #presenter:Lcom/android/launcher2/popup/MenuPresenter;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsClosing:Z

    goto :goto_0
.end method

.method public collapseItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 1184
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    if-eq v4, p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1202
    :cond_1
    :goto_0
    return v0

    .line 1186
    :cond_2
    const/4 v0, 0x0

    .line 1188
    .local v0, collapsed:Z
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1189
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1190
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popup/MenuPresenter;

    .line 1191
    .local v2, presenter:Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v2, :cond_4

    .line 1192
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1193
    :cond_4
    invoke-interface {v2, p0, p1}, Lcom/android/launcher2/popup/MenuPresenter;->collapseItemActionView(Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1197
    .end local v2           #presenter:Lcom/android/launcher2/popup/MenuPresenter;
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1199
    if-eqz v0, :cond_1

    .line 1200
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher2/popup/MenuBuilder$Callback;->onMenuItemSelected(Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 1162
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 1180
    :cond_0
    :goto_0
    return v0

    .line 1164
    :cond_1
    const/4 v0, 0x0

    .line 1166
    .local v0, expanded:Z
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1167
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1168
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popup/MenuPresenter;

    .line 1169
    .local v2, presenter:Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v2, :cond_3

    .line 1170
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1171
    :cond_3
    invoke-interface {v2, p0, p1}, Lcom/android/launcher2/popup/MenuPresenter;->expandItemActionView(Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1175
    .end local v2           #presenter:Lcom/android/launcher2/popup/MenuPresenter;
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1177
    if-eqz v0, :cond_0

    .line 1178
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 1
    .parameter "group"

    .prologue
    .line 564
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/popup/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .parameter "group"
    .parameter "start"

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->size()I

    move-result v2

    .line 570
    .local v2, size:I
    if-gez p2, :cond_0

    .line 571
    const/4 p2, 0x0

    .line 574
    :cond_0
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 575
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 577
    .local v1, item:Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 582
    .end local v0           #i:I
    .end local v1           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :goto_1
    return v0

    .line 574
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    .end local v1           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5
    .parameter "id"

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->size()I

    move-result v3

    .line 534
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 535
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 536
    .local v1, item:Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 547
    .end local v1           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :goto_1
    return-object v1

    .line 538
    .restart local v1       #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 539
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 541
    .local v2, possibleItem:Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 542
    goto :goto_1

    .line 534
    .end local v2           #possibleItem:Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    .end local v1           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->size()I

    move-result v2

    .line 553
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 554
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 555
    .local v1, item:Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 560
    .end local v0           #i:I
    .end local v1           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :goto_1
    return v0

    .line 553
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    .end local v1           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/launcher2/popup/MenuItemImpl;
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 767
    iget-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 768
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 769
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/launcher2/popup/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 771
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-object v8

    .line 775
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 776
    .local v3, metaState:I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 778
    .local v4, possibleChars:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 781
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 782
    .local v7, size:I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 783
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/popup/MenuItemImpl;

    goto :goto_0

    .line 786
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 789
    .local v5, qwerty:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 790
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 791
    .local v1, item:Lcom/android/launcher2/popup/MenuItemImpl;
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    .line 793
    .local v6, shortcutChar:C
    :goto_2
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_3

    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_4

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v5, :cond_7

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    const/16 v9, 0x43

    if-ne p1, v9, :cond_7

    :cond_5
    move-object v8, v1

    .line 799
    goto :goto_0

    .line 791
    .end local v6           #shortcutChar:C
    :cond_6
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_2

    .line 789
    .restart local v6       #shortcutChar:C
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .parameter
    .parameter "keyCode"
    .parameter "event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    const/16 v10, 0x43

    .line 722
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 723
    .local v6, qwerty:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 724
    .local v4, metaState:I
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 726
    .local v5, possibleChars:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 728
    .local v2, isKeyCodeMapped:Z
    if-nez v2, :cond_1

    if-eq p2, v10, :cond_1

    .line 750
    :cond_0
    return-void

    .line 733
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 734
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 735
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 736
    .local v3, item:Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 737
    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Lcom/android/launcher2/popup/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 739
    :cond_2
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    .line 740
    .local v7, shortcutChar:C
    :goto_1
    and-int/lit8 v8, v4, 0x5

    if-nez v8, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    if-eqz v6, :cond_4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    if-ne p2, v10, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 747
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 739
    .end local v7           #shortcutChar:C
    :cond_5
    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    goto :goto_1
.end method

.method public flagActionItems()V
    .locals 10

    .prologue
    .line 975
    iget-boolean v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v8, :cond_0

    .line 1011
    :goto_0
    return-void

    .line 980
    :cond_0
    const/4 v0, 0x0

    .line 981
    .local v0, flagged:Z
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 982
    .local v6, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/popup/MenuPresenter;

    .line 983
    .local v5, presenter:Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v5, :cond_1

    .line 984
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 986
    :cond_1
    invoke-interface {v5}, Lcom/android/launcher2/popup/MenuPresenter;->flagActionItems()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_1

    .line 990
    .end local v5           #presenter:Lcom/android/launcher2/popup/MenuPresenter;
    .end local v6           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 991
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 992
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 993
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 994
    .local v7, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 995
    .local v4, itemsSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_5

    .line 996
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 997
    .local v3, item:Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->isActionButton()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 998
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1000
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1006
    .end local v1           #i:I
    .end local v3           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    .end local v4           #itemsSize:I
    .end local v7           #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    :cond_4
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1007
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1008
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1010
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    goto :goto_0
.end method

.method getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->flagActionItems()V

    .line 1015
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/android/launcher2/popup/MenuItemImpl;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->flagActionItems()V

    .line 1020
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .prologue
    .line 1158
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/android/launcher2/popup/MenuBuilder;
    .locals 0

    .prologue
    .line 1139
    return-object p0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 932
    iget-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 947
    :goto_0
    return-object v3

    .line 935
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 937
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 939
    .local v2, itemsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 940
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 941
    .local v1, item:Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 944
    .end local v1           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 945
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    .line 947
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->size()I

    move-result v2

    .line 522
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 523
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 524
    .local v1, item:Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    const/4 v3, 0x1

    .line 529
    .end local v1           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :goto_1
    return v3

    .line 522
    .restart local v1       #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    .end local v1           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method isQwertyMode()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 596
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/popup/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/android/launcher2/popup/MenuItemImpl;)V
    .locals 1
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 927
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    .line 928
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 929
    return-void
.end method

.method onItemVisibleChanged(Lcom/android/launcher2/popup/MenuItemImpl;)V
    .locals 1
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 917
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 918
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 919
    return-void
.end method

.method onItemsChanged(Z)V
    .locals 2
    .parameter "structureChanged"

    .prologue
    const/4 v1, 0x1

    .line 878
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_1

    .line 879
    if-eqz p1, :cond_0

    .line 880
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 881
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    .line 884
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 888
    :goto_0
    return-void

    .line 886
    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 807
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher2/popup/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 7
    .parameter "item"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 811
    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 813
    .local v1, itemImpl:Lcom/android/launcher2/popup/MenuItemImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v0, v4

    .line 838
    :cond_1
    :goto_0
    return v0

    .line 817
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->invoke()Z

    move-result v0

    .line 819
    .local v0, invoked:Z
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 820
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->expandActionView()Z

    move-result v4

    or-int/2addr v0, v4

    .line 821
    if-eqz v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 822
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 823
    invoke-virtual {p0, v4}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    .line 825
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/SubMenuBuilder;

    .line 826
    .local v3, subMenu:Lcom/android/launcher2/popup/SubMenuBuilder;
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    .line 827
    .local v2, provider:Landroid/view/ActionProvider;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 828
    invoke-virtual {v2, v3}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 830
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/launcher2/popup/MenuBuilder;->dispatchSubMenuSelected(Lcom/android/launcher2/popup/SubMenuBuilder;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 831
    if-nez v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 833
    .end local v2           #provider:Landroid/view/ActionProvider;
    .end local v3           #subMenu:Lcom/android/launcher2/popup/SubMenuBuilder;
    :cond_5
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_1

    .line 834
    invoke-virtual {p0, v6}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 698
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/popup/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v1

    .line 700
    .local v1, item:Lcom/android/launcher2/popup/MenuItemImpl;
    const/4 v0, 0x0

    .line 702
    .local v0, handled:Z
    if-eqz v1, :cond_0

    .line 703
    invoke-virtual {p0, v1, p3}, Lcom/android/launcher2/popup/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 706
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 707
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    .line 710
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5
    .parameter "group"

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 410
    .local v0, i:I
    if-ltz v0, :cond_1

    .line 411
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 412
    .local v1, maxRemovable:I
    const/4 v2, 0x0

    .local v2, numRemoved:I
    move v3, v2

    .line 413
    .end local v2           #numRemoved:I
    .local v3, numRemoved:I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #numRemoved:I
    .restart local v2       #numRemoved:I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 415
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/android/launcher2/popup/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2           #numRemoved:I
    .restart local v3       #numRemoved:I
    goto :goto_0

    .line 419
    .end local v3           #numRemoved:I
    .restart local v2       #numRemoved:I
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 421
    .end local v1           #maxRemovable:I
    .end local v2           #numRemoved:I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->removeItemAtInt(IZ)V

    .line 405
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 442
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/popup/MenuBuilder;->removeItemAtInt(IZ)V

    .line 443
    return-void
.end method

.method public removeMenuPresenter(Lcom/android/launcher2/popup/MenuPresenter;)V
    .locals 4
    .parameter "presenter"

    .prologue
    .line 219
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 220
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuPresenter;

    .line 221
    .local v1, item:Lcom/android/launcher2/popup/MenuPresenter;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .end local v1           #item:Lcom/android/launcher2/popup/MenuPresenter;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    :cond_2
    return-void
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 308
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 304
    return-void
.end method

.method public setCallback(Lcom/android/launcher2/popup/MenuBuilder$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

    .line 316
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menuInfo"

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1151
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 0
    .parameter "defaultShowAsAction"

    .prologue
    .line 195
    iput p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mDefaultShowAsAction:I

    .line 196
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 464
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 466
    .local v2, group:I
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 467
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 468
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 469
    .local v1, curItem:Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 470
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 467
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 474
    if-ne v1, p1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/launcher2/popup/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 477
    .end local v1           #curItem:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_3
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 480
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 482
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 483
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 484
    .local v2, item:Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 485
    invoke-virtual {v2, p3}, Lcom/android/launcher2/popup/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 486
    invoke-virtual {v2, p2}, Lcom/android/launcher2/popup/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 482
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    .end local v2           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .parameter "group"
    .parameter "enabled"

    .prologue
    .line 509
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 511
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 512
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 513
    .local v2, item:Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 514
    invoke-virtual {v2, p2}, Lcom/android/launcher2/popup/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 511
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    .end local v2           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .parameter "group"
    .parameter "visible"

    .prologue
    .line 492
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 497
    .local v0, N:I
    const/4 v1, 0x0

    .line 498
    .local v1, changedAtLeastOneItem:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 499
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 500
    .local v3, item:Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 501
    invoke-virtual {v3, p2}, Lcom/android/launcher2/popup/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 498
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    .end local v3           #item:Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_1
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 506
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6
    .parameter "iconRes"

    .prologue
    const/4 v2, 0x0

    .line 1106
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1107
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1094
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1095
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6
    .parameter "titleRes"

    .prologue
    const/4 v2, 0x0

    .line 1082
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1083
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1070
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1071
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1118
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1119
    return-object p0
.end method

.method public setOptionalIconsVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1154
    iput-boolean p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1155
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .parameter "isQwerty"

    .prologue
    .line 600
    iput-boolean p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mQwertyMode:Z

    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 603
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .parameter "shortcutsVisible"

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 645
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 903
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 905
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    .line 906
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 907
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 909
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 900
    :cond_0
    return-void
.end method
