.class public Lcom/android/launcher2/AppIconView;
.super Landroid/widget/TextView;
.source "AppIconView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppIconView$ShadowReadyCallback;
    }
.end annotation


# static fields
.field private static final HOME:I = 0x0

.field private static final MENU:I = 0x1

.field static final PADDING_V:F = 3.0f

.field static final SHADOW_LARGE_COLOUR:I = -0x23000000

.field static final SHADOW_LARGE_RADIUS:F = 4.0f

.field static final SHADOW_SMALL_COLOUR:I = -0x34000000

.field static final SHADOW_SMALL_RADIUS:F = 1.75f

.field static final SHADOW_Y_OFFSET:F = 2.0f

.field private static sBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private static sFontSizeDefault:I

.field private static sFontSizeSmall:I

.field private static sIconCenterXOffset:I

.field static sIconTopToTopOffset:I

.field static sIsDragState:Z

.field static sMovieIconSize:I

.field static sMovieLeftX:I

.field static sMovieLeftY:I

.field static sMovieRightX:I

.field static sMovieRightY:I

.field static sThumbnailSize:I


# instance fields
.field private dialIntentAction:Ljava/lang/String;

.field private mBoundsRect:Landroid/graphics/Rect;

.field private mCheckedOverlay:Landroid/graphics/drawable/Drawable;

.field private mDimAmount:F

.field protected mDrawIcon:Z

.field protected mDrawShadow:Z

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconDestination:I

.field private mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsChecked:Z

.field private mIsCheckingEnabled:Z

.field private mIsDimmed:Z

.field private final mLastTouch:[I

.field private mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field final mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

.field final mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

.field protected mTextVisible:Z

.field private mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

.field private messageIntentAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v7, 0x64

    const/high16 v5, 0x3f80

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    .line 68
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 69
    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    .line 72
    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    .line 79
    iput v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    .line 82
    const v2, 0x3f0ccccd

    iput v2, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    .line 83
    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    .line 99
    const-string v2, "android.intent.action.SENDTO"

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->messageIntentAction:Ljava/lang/String;

    .line 100
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->dialIntentAction:Ljava/lang/String;

    .line 102
    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v2, v7, v8, v5}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    .line 103
    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v2, v7, v8, v5}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    .line 388
    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 389
    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 607
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    .line 116
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->AppIconView:[I

    invoke-virtual {p1, p2, v2, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    iget v2, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-ne v2, v4, :cond_0

    .line 124
    new-instance v2, Ljava/util/MissingResourceException;

    const-string v3, "AppIconView must have the attribute launcher:destination set to either \'home\' or \'menu\' set"

    const-string v4, "launcher:destination"

    const-string v5, "value of either \'home\' or \'menu\'"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 130
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f020065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    const v2, 0x7f0c00c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sIconCenterXOffset:I

    .line 132
    const v2, 0x7f0c00c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    .line 133
    const v2, 0x7f0c0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    .line 134
    const v2, 0x7f0c00c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    .line 135
    const v2, 0x7f0c00c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sFontSizeSmall:I

    .line 136
    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    .line 137
    const v2, 0x7f0c0041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sMovieLeftX:I

    .line 138
    const v2, 0x7f0c0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sMovieLeftY:I

    .line 139
    const v2, 0x7f0c0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sMovieRightX:I

    .line 140
    const v2, 0x7f0c0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->sMovieRightY:I

    .line 142
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    .line 143
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 145
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 148
    const/high16 v2, 0x4080

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    const/high16 v5, -0x2300

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/launcher2/AppIconView;->setShadowLayer(FFFI)V

    .line 149
    invoke-virtual {p0, v6}, Lcom/android/launcher2/AppIconView;->setHoverPopupType(I)V

    .line 150
    return-void
.end method

.method static createDarkenColorFilter(F)Landroid/graphics/ColorFilter;
    .locals 4
    .parameter "mult"

    .prologue
    .line 760
    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 762
    const/high16 v2, 0x437f

    mul-float/2addr v2, p0

    float-to-int v0, v2

    .line 763
    .local v0, alpha:I
    rsub-int v0, v0, 0xff

    .line 764
    const/16 v2, 0xff

    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 765
    .local v1, color:I
    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    return-object v2
.end method

.method public static getHomeIconLayout(Lcom/android/launcher2/BaseItem;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v0, :cond_0

    const v0, 0x7f030020

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030023

    goto :goto_0
.end method

.method public static getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "context"
    .parameter "style"

    .prologue
    .line 821
    sget-object v0, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "context"
    .parameter "style"

    .prologue
    .line 817
    sget-object v0, Landroid/R$styleable;->View:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private playCheckStatus(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 580
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    if-eqz p1, :cond_0

    const v0, 0x7f0e0061

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 583
    return-void

    .line 580
    :cond_0
    const v0, 0x7f0e0062

    goto :goto_0
.end method

.method public static recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter "viewStyle"
    .parameter "textViewStyle"

    .prologue
    .line 825
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 826
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 827
    return-void
.end method

.method static setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V
    .locals 1
    .parameter "mult"
    .parameter "paint"

    .prologue
    .line 755
    invoke-static {p0}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 756
    .local v0, filter:Landroid/graphics/ColorFilter;
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 757
    return-void
.end method

.method private setIconShadow(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 351
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    .line 352
    return-void
.end method

.method private updateCheckingOverlay()V
    .locals 2

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    if-eqz v0, :cond_3

    .line 561
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 566
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 577
    :goto_0
    return-void

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 575
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public applyBaseItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 153
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V

    .line 154
    return-void
.end method

.method protected applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "item"
    .parameter "icon"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 159
    .local v4, newTitle:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 160
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 162
    :cond_0
    iget-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_1
    iget-object v6, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v6, v7, :cond_2

    iget-object v6, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v7, :cond_4

    .line 166
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 167
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0058

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e00c4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 187
    :goto_1
    if-nez p2, :cond_9

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/android/launcher2/FolderIconView;

    if-ne v6, v7, :cond_8

    const/4 v2, 0x1

    .line 189
    .local v2, isFolder:Z
    :goto_2
    new-instance v6, Ljava/lang/NullPointerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to create a FastBitmapDrawable with a null bitmap. See attached item info: isFolder= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 171
    .end local v2           #isFolder:Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0059

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, folderString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 173
    .local v1, folderStringLen:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 174
    .local v5, newTitleLen:I
    if-lt v5, v1, :cond_6

    sub-int v6, v5, v1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 176
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 184
    .end local v0           #folderString:Ljava/lang/String;
    .end local v1           #folderStringLen:I
    .end local v5           #newTitleLen:I
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 188
    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    .line 192
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/launcher2/AppIconView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 194
    iget-object v6, p1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v6, :cond_a

    .line 195
    const/4 v3, 0x0

    .local v3, mPhoneIcon:Landroid/graphics/Bitmap;
    move-object v6, p1

    .line 196
    check-cast v6, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/AppIconView;->dialIntentAction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 197
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020015

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 206
    :goto_3
    iget-object v6, p1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    invoke-virtual {p0, v6, v3}, Lcom/android/launcher2/AppIconView;->setIconMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;)V

    .line 210
    .end local v3           #mPhoneIcon:Landroid/graphics/Bitmap;
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->resetShadow()V

    .line 211
    return-void

    .restart local v3       #mPhoneIcon:Landroid/graphics/Bitmap;
    :cond_b
    move-object v6, p1

    .line 199
    check-cast v6, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/AppIconView;->messageIntentAction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 200
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020016

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_3

    .line 203
    :cond_c
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public applyStyle(I)V
    .locals 3
    .parameter "style"

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 838
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 839
    .local v2, viewStyle:Landroid/content/res/TypedArray;
    invoke-static {v0, p1}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 840
    .local v1, textViewStyle:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 841
    invoke-static {v2, v1}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 842
    return-void
.end method

.method public applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter "viewStyle"
    .parameter "textViewStyle"

    .prologue
    .line 812
    invoke-static {p1, p0}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    .line 813
    invoke-static {p2, p0}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    .line 814
    return-void
.end method

.method public createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 21
    .parameter "badgeCount"

    .prologue
    .line 614
    if-nez p1, :cond_0

    const/16 v18, 0x0

    .line 662
    :goto_0
    return-object v18

    .line 616
    :cond_0
    const/16 v18, 0x64

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget v19, Lcom/android/launcher2/AppIconView;->sFontSizeSmall:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 621
    :goto_1
    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/Rect;->left:I

    .line 623
    .local v14, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 624
    .local v15, paddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v16, v14, v18

    .line 625
    .local v16, paddingWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v13, v15, v18

    .line 626
    .local v13, paddingHeight:I
    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    sub-int v11, v18, v16

    .line 627
    .local v11, defaultContentsWidth:I
    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    sub-int v10, v18, v13

    .line 629
    .local v10, defaultContentsHeight:I
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 630
    .local v5, badgeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    .line 631
    .local v6, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 636
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int/lit8 v9, v18, 0xa

    .line 637
    .local v9, contentsWidth:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 638
    .local v8, contentsHeight:I
    if-ge v9, v11, :cond_1

    .line 640
    move v9, v11

    .line 643
    :cond_1
    if-ge v8, v10, :cond_2

    .line 645
    sub-int v18, v10, v8

    div-int/lit8 v18, v18, 0x2

    add-int v15, v15, v18

    .line 646
    move v8, v10

    .line 648
    :cond_2
    add-int v17, v9, v16

    .line 649
    .local v17, width:I
    add-int v12, v8, v13

    .line 651
    .local v12, height:I
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 652
    .local v4, b:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 654
    .local v7, c:Landroid/graphics/Canvas;
    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 655
    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 661
    div-int/lit8 v18, v9, 0x2

    add-int v18, v18, v14

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v19, v15, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v7, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 662
    new-instance v18, Lcom/android/launcher2/FastBitmapDrawable;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 619
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v5           #badgeText:Ljava/lang/String;
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v7           #c:Landroid/graphics/Canvas;
    .end local v8           #contentsHeight:I
    .end local v9           #contentsWidth:I
    .end local v10           #defaultContentsHeight:I
    .end local v11           #defaultContentsWidth:I
    .end local v12           #height:I
    .end local v13           #paddingHeight:I
    .end local v14           #paddingLeft:I
    .end local v15           #paddingTop:I
    .end local v16           #paddingWidth:I
    .end local v17           #width:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget v19, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_1
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 218
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/DragState;

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 222
    sput-boolean v2, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    .line 226
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 224
    sput-boolean v0, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 428
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 430
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->drawIconOrText(Landroid/graphics/Canvas;)V

    .line 431
    return-void
.end method

.method public drawIconOrText(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 439
    const v10, 0xffffff

    .line 440
    .local v10, color_mask:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v8, v1

    .line 441
    .local v8, alpha:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getCurrentTextColor()I

    move-result v9

    .line 442
    .local v9, color:I
    const v1, 0xffffff

    and-int/2addr v9, v1

    .line 443
    shl-int/lit8 v1, v8, 0x18

    or-int/2addr v9, v1

    .line 444
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/AppIconView;->setTextColor(I)V

    .line 446
    const/4 v14, 0x0

    .line 447
    .local v14, shadow_color:I
    shl-int/lit8 v1, v8, 0x18

    or-int/2addr v14, v1

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x4080

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-virtual {v1, v2, v3, v4, v14}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 450
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    if-nez v1, :cond_4

    .line 451
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 454
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppIconView;->mScrollX:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppIconView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppIconView;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppIconView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 457
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 463
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 468
    :cond_0
    const/4 v14, 0x0

    .line 469
    shl-int/lit8 v1, v8, 0x18

    or-int/2addr v14, v1

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x3fe0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v14}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 472
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 473
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppIconView;->mScrollX:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppIconView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppIconView;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppIconView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 475
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 476
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 482
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 483
    .local v12, overlay:Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    if-eqz v1, :cond_3

    .line 484
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 486
    const/4 v7, 0x1

    .line 487
    .local v7, OverlayIconToptoTopOffset:I
    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_1

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 490
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v1

    sget v2, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    add-int/2addr v1, v2

    add-int v15, v1, v7

    .line 491
    .local v15, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v16

    .line 492
    .local v16, viewWidth:I
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 493
    .local v13, overlayWidth:I
    div-int/lit8 v1, v16, 0x2

    sget v2, Lcom/android/launcher2/AppIconView;->sIconCenterXOffset:I

    add-int v11, v1, v2

    .line 494
    .local v11, left:I
    add-int v1, v11, v13

    move/from16 v0, v16

    if-le v1, v0, :cond_2

    .line 495
    add-int v1, v11, v13

    sub-int v1, v1, v16

    sub-int/2addr v11, v1

    .line 498
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getScrollX()I

    move-result v1

    add-int/2addr v11, v1

    .line 499
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, v11

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v15

    invoke-virtual {v12, v11, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 501
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 503
    .end local v7           #OverlayIconToptoTopOffset:I
    .end local v11           #left:I
    .end local v13           #overlayWidth:I
    .end local v15           #top:I
    .end local v16           #viewWidth:I
    :cond_3
    return-void

    .line 460
    .end local v12           #overlay:Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public drawShadow(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 404
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    if-eqz v3, :cond_0

    .line 405
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 406
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 407
    .local v2, dw:I
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v1, v3, v4

    .line 408
    .local v1, dh:I
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v4

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 415
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getAlpha()F

    move-result v4

    mul-float/2addr v4, v3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float/2addr v3, v4

    const/high16 v4, 0x437f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 416
    .local v0, alpha:I
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 417
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 420
    .end local v0           #alpha:I
    .end local v1           #dh:I
    .end local v2           #dw:I
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 514
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 515
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 516
    .local v0, overlay:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 518
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 520
    :cond_0
    return-void
.end method

.method public generateShadowIfNeeded()V
    .locals 6

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->shouldHaveIconShadow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 252
    .local v0, item:Lcom/android/launcher2/BaseItem;
    if-eqz v0, :cond_0

    .line 253
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/Bitmap;)V

    .line 262
    .end local v0           #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    :goto_0
    return-void

    .line 256
    .restart local v0       #item:Lcom/android/launcher2/BaseItem;
    :cond_1
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;-><init>(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher2/ShadowGen;->queueBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher2/ShadowGen$GeneratedCallback;Landroid/os/Handler;Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method public getAnimGroup()I
    .locals 7

    .prologue
    .line 783
    const/4 v1, 0x0

    .line 784
    .local v1, group:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 785
    .local v2, parent:Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    .line 786
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 787
    .local v0, grandParent:Landroid/view/ViewParent;
    instance-of v3, v0, Lcom/android/launcher2/DragReceivable;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/DragReceivable;

    .end local v0           #grandParent:Landroid/view/ViewParent;
    invoke-interface {v0}, Lcom/android/launcher2/DragReceivable;->getContainerType()J

    move-result-wide v3

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 790
    const/4 v1, 0x1

    .line 793
    :cond_0
    return v1
.end method

.method public getDimAmount()F
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    return v0
.end method

.method public getDragIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getItemId()J
    .locals 2

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    return-wide v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getMovieDrawable()Lcom/android/launcher2/MovieDrawable;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    return-object v0
.end method

.method public getTextVisible()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    return v0
.end method

.method public hideBadge()V
    .locals 4

    .prologue
    .line 699
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 702
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 703
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 704
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 706
    .local v0, item:Lcom/android/launcher2/BaseItem;
    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    .line 707
    :cond_0
    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 710
    .end local v0           #item:Lcom/android/launcher2/BaseItem;
    :cond_1
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDimmed()Z
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    return v0
.end method

.method public onDrop()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 399
    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 400
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 401
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 373
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 385
    :goto_0
    return v0

    .line 377
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 378
    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    goto :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "vis"

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 232
    if-eqz p1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->generateShadowIfNeeded()V

    goto :goto_0
.end method

.method public refreshBadge()V
    .locals 0

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 714
    return-void
.end method

.method public resetShadow()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 246
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->generateShadowIfNeeded()V

    .line 247
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    .line 593
    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->updateCheckingOverlay()V

    .line 595
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    if-eqz v0, :cond_0

    .line 596
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppIconView;->playCheckStatus(Z)V

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 599
    return-void
.end method

.method public setCheckingEnabled(Z)V
    .locals 0
    .parameter "checkingEnabled"

    .prologue
    .line 554
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    .line 555
    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->updateCheckingOverlay()V

    .line 556
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 557
    return-void
.end method

.method public setDimAmount(F)V
    .locals 1
    .parameter "dimAmount"

    .prologue
    .line 771
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    iput p1, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    goto :goto_0
.end method

.method public setDimmed(ZZ)V
    .locals 6
    .parameter "isDim"
    .parameter "invalidate"

    .prologue
    .line 732
    iget-boolean v5, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    if-ne v5, p1, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    .line 735
    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    .line 736
    .local v0, dimValue:F
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 737
    .local v4, p:Landroid/graphics/Paint;
    invoke-static {v0, v4}, Lcom/android/launcher2/AppIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    .line 738
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 739
    .local v1, drawables:[Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 740
    .local v2, filter:Landroid/graphics/ColorFilter;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_5

    .line 741
    aget-object v5, v1, v3

    if-eqz v5, :cond_3

    .line 742
    instance-of v5, p0, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/launcher2/CellLayout;->isItemApp()Z

    move-result v5

    if-nez v5, :cond_3

    .line 743
    :cond_2
    aget-object v5, v1, v3

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 740
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 735
    .end local v0           #dimValue:F
    .end local v1           #drawables:[Landroid/graphics/drawable/Drawable;
    .end local v2           #filter:Landroid/graphics/ColorFilter;
    .end local v3           #i:I
    .end local v4           #p:Landroid/graphics/Paint;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 747
    .restart local v0       #dimValue:F
    .restart local v1       #drawables:[Landroid/graphics/drawable/Drawable;
    .restart local v2       #filter:Landroid/graphics/ColorFilter;
    .restart local v3       #i:I
    .restart local v4       #p:Landroid/graphics/Paint;
    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/launcher2/AppIconView;->setDimmedBadge(ZZLandroid/graphics/ColorFilter;)V

    .line 749
    if-eqz p2, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    goto :goto_0
.end method

.method public setDimmedBadge(ZZLandroid/graphics/ColorFilter;)V
    .locals 3
    .parameter "isDim"
    .parameter "invalidate"
    .parameter "filter"

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 719
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget v2, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-nez v2, :cond_2

    .line 720
    :cond_0
    const/4 v0, 0x0

    .line 724
    .end local v1           #tag:Ljava/lang/Object;
    .local v0, badge:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 726
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 727
    return-void

    .line 722
    .end local v0           #badge:Landroid/graphics/drawable/Drawable;
    .restart local v1       #tag:Ljava/lang/Object;
    :cond_2
    check-cast v1, Lcom/android/launcher2/BaseItem;

    .end local v1           #tag:Ljava/lang/Object;
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #badge:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method setDrawShadow(Z)V
    .locals 0
    .parameter "draw"

    .prologue
    .line 423
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 424
    return-void
.end method

.method public setHotseatText(Lcom/android/launcher2/HomeItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 799
    iget-wide v0, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 800
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090011

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    .line 805
    :cond_0
    return-void

    .line 800
    :cond_1
    const v0, 0x7f090010

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 291
    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 292
    new-instance v1, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v1, p1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 293
    .local v1, iconDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isDimmed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/CellLayout;->isItemApp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    iget v2, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    invoke-static {v2}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 295
    .local v0, filter:Landroid/graphics/ColorFilter;
    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v1, v0}, Lcom/android/launcher2/FastBitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 298
    .end local v0           #filter:Landroid/graphics/ColorFilter;
    :cond_0
    invoke-virtual {p0, v3, v1, v3, v3}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->destroyDrawingCache()V

    .line 302
    return-void
.end method

.method public setIconMovie(Landroid/graphics/Movie;)V
    .locals 6
    .parameter "movie"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 305
    new-instance v1, Lcom/android/launcher2/MovieDrawable;

    sget v2, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    sget v3, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    invoke-direct {v1, p1, v2, v3}, Lcom/android/launcher2/MovieDrawable;-><init>(Landroid/graphics/Movie;II)V

    iput-object v1, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    .line 307
    sget v1, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    sget v2, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 308
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 309
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v0, v5, v5}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 310
    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    invoke-virtual {p0, v4, v1, v4, v4}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 311
    return-void
.end method

.method public setIconMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "movie"
    .parameter "mPhoneBitmap"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 314
    new-instance v3, Lcom/android/launcher2/MovieDrawable;

    sget v4, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    sget v5, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    invoke-direct {v3, p1, v4, v5}, Lcom/android/launcher2/MovieDrawable;-><init>(Landroid/graphics/Movie;II)V

    iput-object v3, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    .line 318
    sget v3, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    sget v4, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 321
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v0, v7, v7}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 326
    if-eqz p2, :cond_0

    .line 327
    sget v3, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    sget v4, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    invoke-static {p2, v3, v4, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 328
    .local v1, mPhoneBitmapTemp:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 329
    .local v2, mPhoneDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    invoke-virtual {p0, v6, v3, v2, v6}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v9

    sget v4, Lcom/android/launcher2/AppIconView;->sMovieLeftX:I

    sget v5, Lcom/android/launcher2/AppIconView;->sMovieLeftY:I

    sget v6, Lcom/android/launcher2/AppIconView;->sMovieRightX:I

    sget v7, Lcom/android/launcher2/AppIconView;->sMovieRightY:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 331
    const/16 v3, 0xf

    invoke-virtual {p0, v3, v8, v8, v8}, Lcom/android/launcher2/AppIconView;->setPaddingRelative(IIII)V

    .line 335
    .end local v1           #mPhoneBitmapTemp:Landroid/graphics/Bitmap;
    .end local v2           #mPhoneDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    const/high16 v3, -0x100

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppIconView;->setTextColor(I)V

    .line 336
    return-void

    .line 333
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    invoke-virtual {p0, v6, v3, v6, v6}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method setIconShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 360
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 361
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 363
    .local v0, cellLayout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 365
    .end local v0           #cellLayout:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public setLastTouchPoint(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 528
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 529
    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "overlay"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 507
    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 508
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 510
    :cond_0
    return-void
.end method

.method public setTextAlpha(I)V
    .locals 1
    .parameter "a"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 777
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 537
    if-eqz p1, :cond_1

    .line 538
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 539
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    if-nez v1, :cond_0

    .line 540
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .end local v0           #tag:Ljava/lang/Object;
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    goto :goto_0
.end method

.method protected shouldHaveIconShadow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 265
    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBadge()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 666
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 668
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/launcher2/BaseItem;

    iget v4, v4, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-nez v4, :cond_4

    .line 669
    :cond_0
    const/4 v0, 0x0

    .line 673
    .local v0, badge:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 676
    if-eqz v3, :cond_3

    instance-of v4, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_3

    move-object v2, v3

    .line 677
    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 678
    .local v2, item:Lcom/android/launcher2/BaseItem;
    const/4 v1, 0x0

    .line 680
    .local v1, description:Ljava/lang/String;
    iget-object v4, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v5, :cond_1

    iget-object v4, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_3

    .line 681
    :cond_1
    iget v4, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-le v4, v7, :cond_5

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00cc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 689
    :goto_1
    invoke-static {v2}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 693
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 696
    .end local v1           #description:Ljava/lang/String;
    .end local v2           #item:Lcom/android/launcher2/BaseItem;
    :cond_3
    return-void

    .end local v0           #badge:Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object v4, v3

    .line 671
    check-cast v4, Lcom/android/launcher2/BaseItem;

    iget v4, v4, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #badge:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 683
    .restart local v1       #description:Ljava/lang/String;
    .restart local v2       #item:Lcom/android/launcher2/BaseItem;
    :cond_5
    iget v4, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-ne v4, v7, :cond_6

    .line 684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 686
    :cond_6
    iget-object v1, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method public startFadeShadow()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 391
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    .line 392
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 395
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 396
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    .line 604
    return-void

    .line 603
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
