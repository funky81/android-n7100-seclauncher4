.class public Lcom/android/launcher2/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"


# static fields
.field static final BOTH_WALLPAPER:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field static final DOWNLOAD_WALLPAPER:I = -0x1

.field private static final GALLERY:Ljava/lang/String; = "com.sec.android.gallery3d"

.field static final HOME_SCREEN_WALLPAPER:I = 0x0

.field private static final LIVE_WALLPAPERS:Ljava/lang/String; = "com.android.wallpaper.livepicker"

.field static final LOCK_SCREEN_WALLPAPER:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final WALLPAPER_GALLERY:Ljava/lang/String; = "com.sec.android.app.wallpaperchooser"


# instance fields
.field private ItemName:[Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mode:I

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/launcher2/ChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ChooserActivity;->TAG:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/ChooserActivity;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 58
    iget v3, p0, Lcom/android/launcher2/ChooserActivity;->mode:I

    packed-switch v3, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 64
    :pswitch_1
    const-string v3, "com.sec.android.gallery3d"

    iget-object v4, p0, Lcom/android/launcher2/ChooserActivity;->ItemName:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.BothScreen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ChooserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v3, "com.android.wallpaper.livepicker"

    iget-object v4, p0, Lcom/android/launcher2/ChooserActivity;->ItemName:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v2, intentLiveWallpaperChooser:Landroid/content/Intent;
    const-string v3, "SET_LOCKSCREEN_WALLPAPER"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.wallpaper.livepicker"

    const-string v5, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v2}, Lcom/android/launcher2/ChooserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    .end local v2           #intentLiveWallpaperChooser:Landroid/content/Intent;
    :cond_2
    const-string v3, "com.sec.android.app.wallpaperchooser"

    iget-object v4, p0, Lcom/android/launcher2/ChooserActivity;->ItemName:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v1, intentCallWallpaperChooser:Landroid/content/Intent;
    const-string v3, "SET_WALLPAPER_MODE"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.wallpaperchooser"

    const-string v5, "com.sec.android.app.wallpaperchooser.WallpaperChooser"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ChooserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/high16 v1, 0x4

    const/16 v0, 0x20

    const/4 v6, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher2/ChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 90
    .local v13, window:Landroid/view/Window;
    invoke-virtual {v13, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 92
    invoke-virtual {v13, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher2/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 96
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    .line 97
    .local v12, targetParcelable:Landroid/os/Parcelable;
    instance-of v0, v12, Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 98
    sget-boolean v0, Lcom/android/launcher2/ChooserActivity;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/ChooserActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target is not an intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/ChooserActivity;->finish()V

    .line 172
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 104
    .local v9, pa:[Landroid/os/Parcelable;
    const/4 v4, 0x0

    .line 105
    .local v4, initialIntents:[Landroid/content/Intent;
    if-eqz v9, :cond_4

    .line 106
    array-length v0, v9

    new-array v4, v0, [Landroid/content/Intent;

    .line 107
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v9

    if-ge v7, v0, :cond_4

    .line 108
    aget-object v0, v9, v7

    instance-of v0, v0, Landroid/content/Intent;

    if-nez v0, :cond_3

    .line 109
    sget-boolean v0, Lcom/android/launcher2/ChooserActivity;->DEBUGGABLE:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/launcher2/ChooserActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial intent #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not an Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v9, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/ChooserActivity;->finish()V

    goto :goto_0

    .line 113
    :cond_3
    aget-object v0, v9, v7

    check-cast v0, Landroid/content/Intent;

    aput-object v0, v4, v7

    .line 107
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7           #i:I
    :cond_4
    move-object v2, v12

    .line 117
    check-cast v2, Landroid/content/Intent;

    const v0, 0x7f0e0010

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher2/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 122
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v10, pickWallpaper:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/launcher2/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v10, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ChooserActivity;->rList:Ljava/util/List;

    .line 125
    iget-object v0, p0, Lcom/android/launcher2/ChooserActivity;->rList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/ChooserActivity;->ItemName:[Ljava/lang/String;

    .line 127
    new-instance v11, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v0, p0, Lcom/android/launcher2/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v11, v0}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 129
    .local v11, rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    iget-object v0, p0, Lcom/android/launcher2/ChooserActivity;->rList:Ljava/util/List;

    invoke-static {v0, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 131
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/ChooserActivity;->rList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 132
    iget-object v1, p0, Lcom/android/launcher2/ChooserActivity;->ItemName:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher2/ChooserActivity;->rList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    aput-object v0, v1, v7

    .line 131
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 135
    :cond_5
    const-string v0, "mode"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ChooserActivity;->mode:I

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher2/ChooserActivity;->dismiss()V

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
