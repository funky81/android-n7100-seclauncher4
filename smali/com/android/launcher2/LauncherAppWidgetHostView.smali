.class public Lcom/android/launcher2/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/android/launcher2/DynamicShadowMixin$Holder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;
    }
.end annotation


# static fields
.field private static ENABLE_SHADOW:Z


# instance fields
.field private final lastSpanBitmap:[I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field final mLastTouch:[I

.field private mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

.field private mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/LauncherAppWidgetHostView;->ENABLE_SHADOW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 48
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 43
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    .line 45
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    .line 49
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    sget-boolean v0, Lcom/android/launcher2/LauncherAppWidgetHostView;->ENABLE_SHADOW:Z

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/android/launcher2/DynamicShadowMixin;

    invoke-direct {v0, p0}, Lcom/android/launcher2/DynamicShadowMixin;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    .line 52
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherAppWidgetHostView;)Landroid/view/ViewParent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherAppWidgetHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/LauncherAppWidgetHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private getViewBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->clearFocus()V

    .line 86
    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setPressed(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->willNotCacheDrawing()Z

    move-result v4

    .line 89
    .local v4, willNotCache:Z
    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setWillNotCacheDrawing(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getDrawingCacheBackgroundColor()I

    move-result v3

    .line 94
    .local v3, color:I
    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setDrawingCacheBackgroundColor(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAlpha()F

    move-result v0

    .line 96
    .local v0, alpha:F
    const/high16 v5, 0x3f80

    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setAlpha(F)V

    .line 98
    if-eqz v3, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->destroyDrawingCache()V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->buildDrawingCache()V

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 103
    .local v2, cacheBitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 104
    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    .line 107
    :cond_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 110
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->destroyDrawingCache()V

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setAlpha(F)V

    .line 112
    invoke-virtual {p0, v4}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setWillNotCacheDrawing(Z)V

    .line 113
    invoke-virtual {p0, v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method private postCheckForLongClick()V
    .locals 3

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 227
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/android/launcher2/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 231
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    return-void
.end method


# virtual methods
.method public bitmapNeedsUpdated(II)Z
    .locals 3
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 55
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    aget v2, v2, v1

    if-eq p2, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 239
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 242
    :cond_0
    return-void
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 246
    const/high16 v0, 0x6

    return v0
.end method

.method public getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    return-object v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 260
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    .line 261
    .local v0, ret:Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    invoke-virtual {v2}, Lcom/android/launcher2/DynamicShadowMixin;->invalidate()V

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    .line 269
    .local v1, w:Lcom/android/launcher2/Workspace;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 272
    :cond_1
    return-object v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 127
    .local v1, toolType:I
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 128
    .local v0, isHoveringOn:I
    if-nez v0, :cond_0

    move v2, v3

    .line 134
    :goto_0
    return v2

    .line 131
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 132
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 134
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    .line 177
    :goto_0
    return v0

    .line 146
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 147
    iput-boolean v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v0, v1

    .line 177
    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    .line 156
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    .line 157
    invoke-direct {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->postCheckForLongClick()V

    goto :goto_1

    .line 163
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 164
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v2, :cond_3

    .line 165
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 168
    :cond_3
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_2

    .line 169
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 3
    .parameter "wMeasureSpec"
    .parameter "hMeasureSpec"

    .prologue
    const/high16 v2, 0x4000

    const/high16 v1, -0x8000

    .line 196
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 197
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 199
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 200
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 202
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onMeasure(II)V

    .line 203
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 184
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 186
    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 189
    :cond_0
    return v0
.end method

.method public updateBitmapForSpan(Lcom/android/launcher2/CellLayout;IILcom/android/launcher2/ShadowBuilder;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "cl"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "sb"

    .prologue
    .line 59
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->bitmapNeedsUpdated(II)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    .line 81
    :goto_0
    return-object v5

    .line 60
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    const/4 v6, 0x0

    aput p2, v5, v6

    .line 61
    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    const/4 v6, 0x1

    aput p3, v5, v6

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 65
    .local v2, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v3, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 66
    .local v3, tempSpanX:I
    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 67
    .local v4, tempSpanY:I
    iput p2, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 68
    iput p3, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 70
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/launcher2/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 72
    iget v0, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 73
    .local v0, childLeft:I
    iget v1, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 74
    .local v1, childTop:I
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v5, v0

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v6, v1

    invoke-virtual {p0, v0, v1, v5, v6}, Lcom/android/launcher2/LauncherAppWidgetHostView;->layout(IIII)V

    .line 76
    invoke-direct {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    .line 77
    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4, v5}, Lcom/android/launcher2/ShadowBuilder;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    iput v3, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 80
    iput v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 81
    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
