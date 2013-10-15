.class public Lcom/android/launcher2/CreateFolderDialog;
.super Landroid/app/DialogFragment;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    }
.end annotation


# static fields
.field private static final FIND_NEW_POS_KEY:Ljava/lang/String; = "FIND_NEW_POSITION"

.field private static final FOLDER_TITLE_KEY:Ljava/lang/String; = "FOLDER_TITLE"

.field private static final ITEM_DESTINATION_CONTAINER_ID_KEY:Ljava/lang/String; = "ITEM_DESTINATION_CONTAINER_ID"

.field private static final ITEM_ID_KEY:Ljava/lang/String; = "ITEM_ID"

.field private static final ITEM_ORIGIN_CONTAINER_ID_KEY:Ljava/lang/String; = "ITEM_ORIGIN_CONTAINER_ID"

.field private static final ORIGINAL_CONTAINER_CELL_KEY:Ljava/lang/String; = "ORIGINAL_CONTAINER_CELL"

.field private static final ORIGINAL_CONTAINER_SCREEN_KEY:Ljava/lang/String; = "ORIGINAL_CONTAINER_SCREEN"

.field private static final REMOVE_ITEM_KEY:Ljava/lang/String; = "REMOVE_ITEM"

.field static okButtonSelected:Z = false

.field private static final sFragmentTag:Ljava/lang/String; = "CreateFolderDialog"


# instance fields
.field private mDestinationContainerId:J

.field private mDismissDialog:Z

.field private mFindNewPosition:Z

.field private mFolderChildItem:Lcom/android/launcher2/BaseItem;

.field private mFolderTitle:Landroid/widget/EditText;

.field private mItemId:J

.field private mOriginContainerId:J

.field private mOriginalContainerCell:I

.field private mOriginalContainerScreen:I

.field private mRemoveItem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    .line 56
    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    .line 57
    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    .line 58
    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    .line 60
    iput-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    .line 388
    iput-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/CreateFolderDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/CreateFolderDialog;)Lcom/android/launcher2/BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CreateFolderDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/CreateFolderDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/CreateFolderDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/CreateFolderDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/CreateFolderDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/CreateFolderDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/CreateFolderDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    return v0
.end method

.method static createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V
    .locals 10
    .parameter "manager"
    .parameter "childItem"
    .parameter "originContainerId"
    .parameter "destinationContainerId"
    .parameter "removeItem"
    .parameter "findNewPosition"
    .parameter "originalScreen"
    .parameter "originalCell"

    .prologue
    .line 107
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/launcher2/CreateFolderDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    new-instance v0, Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct {v0}, Lcom/android/launcher2/CreateFolderDialog;-><init>()V

    .local v0, df:Lcom/android/launcher2/CreateFolderDialog;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 111
    invoke-direct/range {v0 .. v9}, Lcom/android/launcher2/CreateFolderDialog;->init(Lcom/android/launcher2/BaseItem;JJZZII)V

    .line 113
    const-string v1, "CreateFolderDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/CreateFolderDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    .line 121
    const-string v1, "CreateFolderDialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 122
    .local v0, dialog:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 125
    :cond_0
    return-void
.end method

.method private init(Lcom/android/launcher2/BaseItem;JJZZII)V
    .locals 2
    .parameter "childItem"
    .parameter "originContainerId"
    .parameter "destinationContainerId"
    .parameter "removeItem"
    .parameter "findNewPosition"
    .parameter "originalContainerScreen"
    .parameter "originalContainerCell"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    .line 78
    iput-wide p2, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-wide v0, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    .line 83
    :cond_0
    iput p8, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    .line 84
    iput p9, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    .line 85
    iput-wide p4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    .line 86
    iput-boolean p6, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    .line 87
    iput-boolean p7, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    .line 88
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .parameter "manager"

    .prologue
    .line 117
    if-eqz p0, :cond_0

    const-string v0, "CreateFolderDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 391
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    .line 394
    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    .line 300
    .local v9, launcher:Lcom/android/launcher2/Launcher;
    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    .line 301
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    .line 302
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, folderTitle:Ljava/lang/String;
    const/4 v1, 0x0

    .line 308
    .local v1, item:Lcom/android/launcher2/BaseItem;
    const/4 v0, 0x0

    .line 310
    .local v0, listener:Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_5

    .line 311
    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    .line 331
    :cond_0
    :goto_0
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 333
    :cond_1
    if-eqz v9, :cond_2

    .line 334
    iget-object v0, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 345
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 347
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iget-boolean v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iget-boolean v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    iget v7, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    iget v8, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    invoke-interface/range {v0 .. v8}, Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;->onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V

    .line 353
    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 356
    .end local v0           #listener:Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    .end local v2           #folderTitle:Ljava/lang/String;
    :cond_4
    return-void

    .line 312
    .restart local v0       #listener:Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    .restart local v1       #item:Lcom/android/launcher2/BaseItem;
    .restart local v2       #folderTitle:Ljava/lang/String;
    :cond_5
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 314
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 316
    :cond_6
    iget-object v3, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v1

    goto :goto_0

    .line 317
    :cond_7
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 318
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    goto :goto_0

    .line 319
    :cond_8
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 321
    :cond_9
    iget-object v3, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v1

    goto :goto_0

    .line 322
    :cond_a
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 323
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    goto/16 :goto_0

    .line 335
    :cond_b
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 336
    if-eqz v9, :cond_2

    .line 337
    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v10

    .line 338
    .local v10, mMenuView:Lcom/android/launcher2/MenuView;
    if-eqz v10, :cond_2

    .line 339
    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v11, -0x1

    const-wide/16 v9, -0x66

    const/4 v8, 0x0

    .line 129
    sput-boolean v8, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030008

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 131
    .local v4, vg:Landroid/view/ViewGroup;
    const v5, 0x7f070030

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    .line 132
    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0094

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, abortDialog:Z
    if-eqz p1, :cond_1

    .line 136
    const-string v5, "ITEM_ID"

    invoke-virtual {p1, v5, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    .line 137
    const-string v5, "ITEM_ORIGIN_CONTAINER_ID"

    invoke-virtual {p1, v5, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    .line 140
    const-string v5, "ITEM_DESTINATION_CONTAINER_ID"

    invoke-virtual {p1, v5, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    .line 141
    const-string v5, "REMOVE_ITEM"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    .line 142
    const-string v5, "FIND_NEW_POSITION"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    .line 143
    const-string v5, "ORIGINAL_CONTAINER_SCREEN"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    .line 144
    const-string v5, "ORIGINAL_CONTAINER_CELL"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    .line 145
    const-string v5, "FOLDER_TITLE"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, folderTitle:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    if-nez v5, :cond_1

    iget-wide v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_1

    :cond_0
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    .line 154
    const/4 v0, 0x1

    .line 158
    .end local v2           #folderTitle:Ljava/lang/String;
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e0087

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e000d

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e000e

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 166
    .local v1, dialog:Landroid/app/Dialog;
    const v5, 0x7f070031

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 167
    .local v3, mAddButton:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 169
    iget-wide v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_5

    .line 171
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :goto_0
    new-instance v5, Lcom/android/launcher2/CreateFolderDialog$1;

    invoke-direct {v5, p0}, Lcom/android/launcher2/CreateFolderDialog$1;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    :cond_2
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_3

    .line 191
    sget-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v6, "create_folder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 192
    new-instance v5, Lcom/android/launcher2/CreateFolderDialog$2;

    invoke-direct {v5, p0}, Lcom/android/launcher2/CreateFolderDialog$2;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 213
    :cond_3
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x25

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 214
    new-instance v5, Lcom/android/launcher2/CreateFolderDialog$3;

    invoke-direct {v5, p0}, Lcom/android/launcher2/CreateFolderDialog$3;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 291
    if-eqz v0, :cond_4

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismiss()V

    .line 294
    :cond_4
    return-object v1

    .line 175
    :cond_5
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 381
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismiss()V

    .line 387
    :cond_1
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 360
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 362
    const-string v0, "ITEM_ID"

    iget-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 363
    const-string v0, "ITEM_ORIGIN_CONTAINER_ID"

    iget-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 364
    const-string v0, "ITEM_DESTINATION_CONTAINER_ID"

    iget-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 365
    const-string v0, "REMOVE_ITEM"

    iget-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 366
    const-string v0, "FIND_NEW_POSITION"

    iget-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 367
    const-string v0, "FOLDER_TITLE"

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "ORIGINAL_CONTAINER_SCREEN"

    iget v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 369
    const-string v0, "ORIGINAL_CONTAINER_CELL"

    iget v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 370
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 375
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getShowsDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismissAllowingStateLoss()V

    .line 378
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 398
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    .line 400
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismissAllowingStateLoss()V

    .line 402
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 403
    return-void
.end method
