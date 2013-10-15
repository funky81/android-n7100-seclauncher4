.class public Lcom/android/launcher2/HomeMagazineSoftKey;
.super Landroid/widget/FrameLayout;
.source "HomeMagazineSoftKey.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeMagazineSoftKey"

.field public static final TAG_APPS:Ljava/lang/String; = "Apps"

.field public static final TAG_FOLDER:Ljava/lang/String; = "Folder"

.field public static final TAG_MAGAZINE:Ljava/lang/String; = "Magazine"

.field public static final TAG_SEARCH:Ljava/lang/String; = "Search"


# instance fields
.field private mAppsBtn:Landroid/widget/ImageButton;

.field private mFolderBtn:Landroid/widget/ImageButton;

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mMagazineBtn:Landroid/widget/ImageButton;

.field private mSearchBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/HomeMagazineSoftKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HomeMagazineSoftKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomeMagazineSoftKey;)Lcom/android/launcher2/HomeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeMagazineSoftKey;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public getFirstIcon()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mMagazineBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mMagazineBtn:Landroid/widget/ImageButton;

    .line 156
    :goto_0
    return-object v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextButton(Ljava/lang/String;I)Landroid/widget/ImageButton;
    .locals 3
    .parameter "current"
    .parameter "delta"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 126
    const-string v0, "Magazine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p2, v2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mFolderBtn:Landroid/widget/ImageButton;

    .line 148
    :goto_0
    return-object v0

    .line 128
    :cond_0
    const-string v0, "Folder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    goto :goto_0

    .line 130
    :cond_1
    const-string v0, "Search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, v2, :cond_3

    .line 131
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mMagazineBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mMagazineBtn:Landroid/widget/ImageButton;

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mFolderBtn:Landroid/widget/ImageButton;

    goto :goto_0

    .line 136
    :cond_3
    const-string v0, "Apps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p2, v1, :cond_4

    .line 137
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mFolderBtn:Landroid/widget/ImageButton;

    goto :goto_0

    .line 138
    :cond_4
    const-string v0, "Folder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p2, v1, :cond_6

    .line 139
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mMagazineBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 140
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mMagazineBtn:Landroid/widget/ImageButton;

    goto :goto_0

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mSearchBtn:Landroid/widget/ImageButton;

    goto :goto_0

    .line 144
    :cond_6
    const-string v0, "Magazine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne p2, v1, :cond_7

    .line 145
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mSearchBtn:Landroid/widget/ImageButton;

    goto :goto_0

    .line 148
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher2/HomeView;)V
    .locals 3
    .parameter "homeView"

    .prologue
    const/4 v2, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 62
    const v0, 0x7f070056

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeMagazineSoftKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mMagazineBtn:Landroid/widget/ImageButton;

    .line 63
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mMagazineBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/launcher2/HomeMagazineSoftKey$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeMagazineSoftKey$1;-><init>(Lcom/android/launcher2/HomeMagazineSoftKey;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mMagazineBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 71
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mMagazineBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 74
    :cond_0
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeMagazineSoftKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    .line 75
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/launcher2/HomeMagazineSoftKey$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeMagazineSoftKey$2;-><init>(Lcom/android/launcher2/HomeMagazineSoftKey;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeMagazineSoftKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mFolderBtn:Landroid/widget/ImageButton;

    .line 82
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mFolderBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/launcher2/HomeMagazineSoftKey$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeMagazineSoftKey$3;-><init>(Lcom/android/launcher2/HomeMagazineSoftKey;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeMagazineSoftKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mSearchBtn:Landroid/widget/ImageButton;

    .line 95
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mSearchBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/launcher2/HomeMagazineSoftKey$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeMagazineSoftKey$4;-><init>(Lcom/android/launcher2/HomeMagazineSoftKey;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mMagazineBtn:Landroid/widget/ImageButton;

    const-string v1, "Magazine"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mMagazineBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 110
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    const-string v1, "Apps"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 112
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mFolderBtn:Landroid/widget/ImageButton;

    const-string v1, "Folder"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mFolderBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 114
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mSearchBtn:Landroid/widget/ImageButton;

    const-string v1, "Search"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mSearchBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 117
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mMagazineBtn:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_MAGAZINE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_MAGAZINE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mFolderBtn:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_MAGAZINE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey;->mSearchBtn:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_MAGAZINE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 122
    return-void
.end method
