.class public Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LockScreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/launcher2/LockScreenWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LockScreenWallpaper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->mContext:Landroid/content/Context;

    .line 206
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 248
    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$100(Lcom/android/launcher2/LockScreenWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    const-string v3, "com.sec.android.gallery3d"

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "com.sec.android.app.wallpaperchooser"

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "com.android.wallpaper.livepicker"

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 247
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_2
    const-string v3, "com.sec.android.gallery3d"

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v3, "com.sec.android.app.wallpaperchooser"

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v3, "com.samsung.android.service.travel"

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v3, "com.samsung.android.service.coverlock"

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    :cond_4
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 275
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    .line 287
    if-nez p2, :cond_3

    .line 288
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$200(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x1090141

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 292
    new-instance v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;

    invoke-direct {v1}, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;-><init>()V

    .line 293
    .local v1, holder:Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;
    const v4, 0x1020014

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    .line 294
    const v4, 0x1020015

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    .line 295
    const v4, 0x1020006

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 296
    iget-object v4, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 297
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->mIconSize:I
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$300(Lcom/android/launcher2/LockScreenWallpaper;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 299
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 307
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    move v0, p1

    .line 308
    .local v0, count:I
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$100(Lcom/android/launcher2/LockScreenWallpaper;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 309
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 310
    const-string v5, "com.sec.android.gallery3d"

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v5, "com.sec.android.app.wallpaperchooser"

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v5, "com.android.wallpaper.livepicker"

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    :cond_0
    if-nez v0, :cond_1

    .line 314
    iget-object v5, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/launcher2/LockScreenWallpaper;->access$400(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v4, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v5, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/launcher2/LockScreenWallpaper;->access$400(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$500(Lcom/android/launcher2/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    aput-object v4, v5, p1

    .line 319
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 309
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 303
    .end local v0           #count:I
    .end local v1           #holder:Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;
    .end local v2           #i:I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;

    .restart local v1       #holder:Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;
    goto/16 :goto_0

    .line 323
    .restart local v0       #count:I
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 325
    const-string v5, "com.sec.android.gallery3d"

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v5, "com.sec.android.app.wallpaperchooser"

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v5, "com.samsung.android.service.travel"

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v5, "com.samsung.android.service.coverlock"

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 330
    :cond_5
    if-nez v0, :cond_6

    .line 331
    iget-object v5, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/launcher2/LockScreenWallpaper;->access$400(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v4, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v5, v1, Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/launcher2/LockScreenWallpaper;->access$400(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$500(Lcom/android/launcher2/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/launcher2/LockScreenWallpaper;

    #getter for: Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/LockScreenWallpaper;->access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    aput-object v4, v5, p1

    .line 336
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 323
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 341
    :cond_8
    return-object p2
.end method
