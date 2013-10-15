.class public Lcom/android/launcher2/LockScreenWallpaper;
.super Lcom/android/internal/app/AlertActivity;
.source "LockScreenWallpaper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LockScreenWallpaper$ItemLongClickListener;,
        Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;,
        Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;,
        Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;
    }
.end annotation


# static fields
.field private static final COVERLOCK_WALLPAPER:Ljava/lang/String; = "com.samsung.android.service.coverlock"

.field private static final GALLERY:Ljava/lang/String; = "com.sec.android.gallery3d"

.field private static final LIVE_WALLPAPERS:Ljava/lang/String; = "com.android.wallpaper.livepicker"

.field static final MODE_BOTH_WALLPAPER:I = 0x2

.field static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final TRAVEL_WALLPAPER:Ljava/lang/String; = "com.samsung.android.service.travel"

.field private static final WALLPAPER_GALLERY:Ljava/lang/String; = "com.sec.android.app.wallpaperchooser"

.field static final WALLPAPER_MODE:Ljava/lang/String; = "SET_WALLPAPER_MODE"


# instance fields
.field private ItemName:[Ljava/lang/String;

.field private isTypeBoth:Z

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mGrid:Landroid/widget/GridView;

.field private mIconSize:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private rList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rListLock:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    .line 370
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LockScreenWallpaper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/LockScreenWallpaper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->mIconSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/LockScreenWallpaper;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/high16 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 78
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/launcher2/LockScreenWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    iput-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "both"

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 83
    iput-boolean v11, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    .line 87
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v6, pickWallpaper:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v6, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    .line 91
    iget-boolean v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    if-nez v8, :cond_3

    .line 92
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.samsung.android.service.travel"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, LockpickWallpaper:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    .line 96
    iget-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v11, :cond_1

    .line 97
    iget-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-object v9, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rListLock"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    iget-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.samsung.android.service.coverlock"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, CoverLockPicWallpaper:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v0, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    .line 108
    iget-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 109
    iget-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-object v9, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_2
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rListLock"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    .end local v0           #CoverLockPicWallpaper:Landroid/content/Intent;
    .end local v1           #LockpickWallpaper:Landroid/content/Intent;
    :cond_3
    new-instance v5, Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;

    invoke-direct {v5, p0}, Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;-><init>(Lcom/android/launcher2/LockScreenWallpaper;)V

    .line 119
    .local v5, mAlphaComparator:Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;
    iget-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-static {v8, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 123
    .local v4, isLightTheme:Z
    const v7, 0x1030332

    .line 124
    .local v7, theme:I
    if-eqz v4, :cond_4

    .line 125
    const v7, 0x1030333

    .line 126
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/launcher2/LockScreenWallpaper;->setTheme(I)V

    .line 128
    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 130
    .local v3, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0010

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 132
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/launcher2/LockScreenWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 133
    .local v2, am:Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->mIconSize:I

    .line 134
    new-instance v8, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;

    invoke-direct {v8, p0}, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;-><init>(Lcom/android/launcher2/LockScreenWallpaper;)V

    iput-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->mAdapter:Landroid/widget/BaseAdapter;

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x1090142

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 136
    iget-object v8, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v9, 0x1020446

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridView;

    iput-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    .line 137
    iget-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/android/launcher2/LockScreenWallpaper;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v8, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iget-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    new-instance v9, Lcom/android/launcher2/LockScreenWallpaper$ItemLongClickListener;

    invoke-direct {v9, p0}, Lcom/android/launcher2/LockScreenWallpaper$ItemLongClickListener;-><init>(Lcom/android/launcher2/LockScreenWallpaper;)V

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->resizeGrid()V

    .line 142
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->setupAlert()V

    .line 143
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    .line 189
    const-string v5, "com.sec.android.gallery3d"

    iget-object v6, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v6, v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v5, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v5, :cond_0

    .line 192
    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "com.sec.android.gallery3d.app.BothScreen"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    .line 231
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->finish()V

    .line 232
    return-void

    .line 194
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "com.sec.android.gallery3d.app.LockScreen"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 196
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v5, "com.android.wallpaper.livepicker"

    iget-object v6, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v6, v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 197
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v3, intentLiveWallpaperChooser:Landroid/content/Intent;
    const-string v5, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.wallpaper.livepicker"

    const-string v7, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v3}, Lcom/android/launcher2/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 205
    .end local v3           #intentLiveWallpaperChooser:Landroid/content/Intent;
    :cond_2
    const-string v5, "com.samsung.android.service.travel"

    iget-object v6, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v6, v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v4, intentTravelWallpaper:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.service.travel"

    const-string v7, "com.samsung.android.travel.TravelWallActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v4}, Lcom/android/launcher2/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 213
    .end local v4           #intentTravelWallpaper:Landroid/content/Intent;
    :cond_3
    const-string v5, "com.samsung.android.service.coverlock"

    iget-object v6, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v6, v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 214
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v2, intentCoverLockWallpaper:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.service.coverlock"

    const-string v7, "com.samsung.android.coverlock.CoverLockWallActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v2}, Lcom/android/launcher2/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 221
    .end local v2           #intentCoverLockWallpaper:Landroid/content/Intent;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v1, intentCallWallpaperChooser:Landroid/content/Intent;
    iget-boolean v5, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v5, :cond_5

    .line 223
    const-string v5, "SET_WALLPAPER_MODE"

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    :goto_2
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.wallpaperchooser"

    const-string v7, "com.sec.android.app.wallpaperchooser.WallpaperChooser"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v1}, Lcom/android/launcher2/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 225
    :cond_5
    const-string v5, "SET_WALLPAPER_MODE"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x1

    .line 146
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 148
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    if-nez v4, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    .line 152
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v3, pickWallpaper:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    .line 156
    iget-boolean v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    if-nez v4, :cond_3

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.service.travel"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, LockpickWallpaper:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    .line 160
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 161
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rListLock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.android.service.coverlock"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, CoverLockPicWallpaper:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    .line 171
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 172
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rListLock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    .end local v0           #CoverLockPicWallpaper:Landroid/content/Intent;
    .end local v1           #LockpickWallpaper:Landroid/content/Intent;
    :cond_3
    new-instance v2, Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;

    invoke-direct {v2, p0}, Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;-><init>(Lcom/android/launcher2/LockScreenWallpaper;)V

    .line 181
    .local v2, mAlphaComparator:Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->resizeGrid()V

    .line 184
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 185
    return-void
.end method

.method resizeGrid()V
    .locals 4

    .prologue
    .line 235
    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 236
    .local v0, itemCount:I
    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 237
    .local v1, maxColumns:I
    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 239
    :cond_0
    return-void
.end method
