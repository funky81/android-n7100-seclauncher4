.class public Lcom/android/launcher2/SecretPageManager;
.super Ljava/lang/Object;
.source "SecretPageManager.java"


# static fields
.field public static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field public static final TAG:Ljava/lang/String; = "SecretPageManager"


# instance fields
.field private mCompleteShowHidedPage:Z

.field private mHidedPage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/SecretPageManager;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    .line 37
    iput-object p1, p0, Lcom/android/launcher2/SecretPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 38
    return-void
.end method

.method private checkHomeViewItemListByPageName(Lcom/android/launcher2/CellLayout;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .parameter "cl"
    .parameter
    .parameter "pkName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, hItemList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 171
    invoke-virtual {p1, v3}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 174
    .local v6, tag:Ljava/lang/Object;
    instance-of v7, v6, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v7, :cond_1

    move-object v2, v6

    .line 175
    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    .line 177
    .local v2, folder:Lcom/android/launcher2/HomeFolderItem;
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 178
    invoke-virtual {v2, v5}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 179
    .local v0, childItem:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 180
    check-cast v0, Lcom/android/launcher2/HomeItem;

    .end local v0           #childItem:Lcom/android/launcher2/BaseItem;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 182
    .end local v2           #folder:Lcom/android/launcher2/HomeFolderItem;
    .end local v5           #k:I
    :cond_1
    instance-of v7, v6, Lcom/android/launcher2/HomeItem;

    if-eqz v7, :cond_2

    move-object v4, v6

    .line 183
    check-cast v4, Lcom/android/launcher2/HomeItem;

    .line 184
    .local v4, item:Lcom/android/launcher2/HomeItem;
    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 185
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v4           #item:Lcom/android/launcher2/HomeItem;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    .end local v1           #childView:Landroid/view/View;
    .end local v6           #tag:Ljava/lang/Object;
    :cond_3
    return-void
.end method


# virtual methods
.method public ShowEqualPageWithItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/Workspace$State;)V
    .locals 10
    .parameter "item"
    .parameter "state"

    .prologue
    const/4 v9, 0x1

    .line 46
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v7, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, c:Lcom/android/launcher2/CellLayout;
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/launcher2/SecretPageManager;->setCompleteShowHidedPage(Z)V

    .line 54
    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    .line 55
    .local v5, previousPageIndex:I
    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 56
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 57
    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #c:Lcom/android/launcher2/CellLayout;
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 58
    .restart local v0       #c:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v7

    if-ne v7, v9, :cond_2

    iget-boolean v7, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v7, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v7

    if-eq v7, v9, :cond_4

    iget-boolean v7, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v7, :cond_4

    .line 61
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_9

    .line 67
    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #c:Lcom/android/launcher2/CellLayout;
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 69
    .restart local v0       #c:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v7

    if-ne v7, v9, :cond_6

    iget-boolean v7, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v7, :cond_7

    :cond_6
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v7

    if-eq v7, v9, :cond_8

    iget-boolean v7, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v7, :cond_8

    .line 72
    :cond_7
    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v1}, Lcom/android/launcher2/Workspace;->removeViewAt(I)V

    .line 73
    add-int/lit8 v1, v1, -0x1

    .line 66
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 77
    :cond_9
    const-string v7, "SecretPageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ShowEqualPageWithItem - (isSecret:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pages removed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v4, 0x0

    .line 83
    .local v4, leftSidePageCount:I
    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 84
    .local v3, key:I
    if-le v5, v3, :cond_a

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 88
    .end local v3           #key:I
    :cond_b
    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getPendingSnapToPage()I

    move-result v6

    .line 89
    .local v6, whichPage:I
    sget-object v7, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p2, v7, :cond_d

    if-ltz v6, :cond_d

    .line 90
    iget-boolean v7, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v7, :cond_c

    .line 91
    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v6}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 98
    :goto_4
    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->setPendingSnapToPage(I)V

    goto/16 :goto_0

    .line 93
    :cond_c
    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_4

    .line 96
    :cond_d
    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    sub-int v8, v5, v4

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_4
.end method

.method public ShowHidedPage()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 103
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 104
    const-string v5, "SecretPageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShowHidedPage - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pages will be added"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v6

    add-int v3, v5, v6

    .line 107
    .local v3, totalPageCount:I
    const/4 v2, -0x1

    .line 109
    .local v2, restoredPageIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 110
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 109
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_0
    if-gez v2, :cond_1

    .line 112
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    .line 113
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 114
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v5

    add-int/2addr v2, v5

    .line 116
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5, v1}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 120
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 121
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 122
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->destroyDummyPanel()V

    .line 120
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 125
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 126
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 127
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 129
    invoke-virtual {p0, v8}, Lcom/android/launcher2/SecretPageManager;->setCompleteShowHidedPage(Z)V

    .line 133
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 134
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->removeCreatedPageForDrag()V

    .line 137
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getPendingSnapToPage()I

    move-result v4

    .line 138
    .local v4, whichPage:I
    if-ltz v4, :cond_6

    .line 139
    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 144
    .end local v1           #i:I
    .end local v2           #restoredPageIndex:I
    .end local v3           #totalPageCount:I
    .end local v4           #whichPage:I
    :cond_6
    return-void
.end method

.method public getCompleteShowHidedPage()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/launcher2/SecretPageManager;->mCompleteShowHidedPage:Z

    return v0
.end method

.method public getHomeViewItemListByPackageName(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "pkName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, hItemList:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 158
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/SecretPageManager;->checkHomeViewItemListByPageName(Lcom/android/launcher2/CellLayout;Ljava/util/List;Ljava/lang/String;)V

    .line 156
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/SecretPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-nez v2, :cond_3

    .line 165
    :cond_2
    :goto_1
    return-void

    .line 162
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/SecretPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 163
    .restart local v0       #cl:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/SecretPageManager;->checkHomeViewItemListByPageName(Lcom/android/launcher2/CellLayout;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSecretPageCount()I
    .locals 5

    .prologue
    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, returnCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 210
    iget-object v3, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 211
    .local v0, c:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 212
    add-int/lit8 v2, v2, 0x1

    .line 209
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v0           #c:Lcom/android/launcher2/CellLayout;
    :cond_1
    return v2
.end method

.method public initSecretPage(Lcom/android/launcher2/HomeView;)V
    .locals 1
    .parameter "homeView"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/launcher2/SecretPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 42
    iget-object v0, p0, Lcom/android/launcher2/SecretPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 43
    return-void
.end method

.method public printWorkspaceInfo()V
    .locals 6

    .prologue
    .line 191
    const-string v2, "|"

    .line 192
    .local v2, sinfo:Ljava/lang/String;
    const/4 v0, 0x0

    .line 194
    .local v0, c:Lcom/android/launcher2/CellLayout;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/android/launcher2/SecretPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #c:Lcom/android/launcher2/CellLayout;
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 196
    .restart local v0       #c:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "S|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "N|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 202
    :cond_1
    const-string v3, "SecretPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WorkspaceInfo - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v3, "SecretPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HidedPage size - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/SecretPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method public setCompleteShowHidedPage(Z)V
    .locals 0
    .parameter "isComplete"

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/android/launcher2/SecretPageManager;->mCompleteShowHidedPage:Z

    .line 148
    return-void
.end method
