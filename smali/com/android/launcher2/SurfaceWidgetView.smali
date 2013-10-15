.class public Lcom/android/launcher2/SurfaceWidgetView;
.super Landroid/view/TextureView;
.source "SurfaceWidgetView.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final RESTART_AUTOMATICALLY_LIMIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SurfaceWidgetView"

.field private static final debugMode:Z


# instance fields
.field final mLastTouch:[I

.field private mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/SurfaceWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/SurfaceWidgetView;->mVisibility:I

    .line 58
    invoke-direct {p0}, Lcom/android/launcher2/SurfaceWidgetView;->init()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;Lcom/android/launcher2/SurfaceWidgetView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SurfaceWidgetView;->restartWidget(Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;Lcom/android/launcher2/SurfaceWidgetView;)V

    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method private notifyPositionOffset(FFF)V
    .locals 2
    .parameter "offsetX"
    .parameter "offsetY"
    .parameter "offsetZ"

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 515
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-eqz v1, :cond_0

    .line 516
    check-cast v0, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v0           #tag:Ljava/lang/Object;
    iget-object v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher2/SurfaceWidgetConnection;->onPositionOffsetChanged(FFF)V

    .line 518
    :cond_0
    return-void
.end method

.method private restartWidget(Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;Lcom/android/launcher2/SurfaceWidgetView;)V
    .locals 5
    .parameter "item"
    .parameter "lp"
    .parameter "sfv"

    .prologue
    const/4 v4, 0x0

    .line 460
    const-string v2, "SurfaceWidgetFlow"

    const-string v3, "making surface widget for restart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetView;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {p1, v2, v3, p3, v4}, Lcom/android/launcher2/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/android/launcher2/SurfaceWidgetView;Z)V

    .line 464
    iget-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v2, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    sget-object v2, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {p1, v2}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 467
    iget-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    sget-object v3, Lcom/android/launcher2/FocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/SurfaceWidgetView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 468
    iget-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/SurfaceWidgetView;->setHapticFeedbackEnabled(Z)V

    .line 470
    :try_start_0
    iget-object v3, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/SurfaceWidgetView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_1
    if-nez p3, :cond_2

    .line 478
    iget-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 479
    .local v1, parentOfRestartView:Landroid/view/ViewGroup;
    iget-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 480
    iget-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v1, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartView:Landroid/view/View;

    .line 491
    .end local v1           #parentOfRestartView:Landroid/view/ViewGroup;
    :cond_2
    iget-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v2}, Lcom/android/launcher2/SurfaceWidgetView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public createHardwareLayerEarly()V
    .locals 5

    .prologue
    .line 199
    const-string v2, "android.view.TextureView"

    const-string v3, "getHardwareLayer"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/samsung/surfacewidget/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 201
    .local v1, m:Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    .line 203
    const-string v2, "SurfaceWidgetView"

    const-string v3, "getHardwareLayer method not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return-void

    .line 208
    :cond_0
    :try_start_0
    const-string v2, "SurfaceWidgetView"

    const-string v3, "getHardwareLayer being called directly"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 213
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, arg0:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    return-void
.end method

.method public dumpSurfaceWidgetAppInfo()V
    .locals 4

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 362
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v1, :cond_0

    .line 364
    const-string v1, "SurfaceWidgetView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    return-void
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-nez v1, :cond_1

    .line 67
    :cond_0
    const-string v1, "SurfaceWidgetView"

    const-string v2, "SurfaceWidget didn\'t provide AppWidgetProviderInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v1, 0x0

    .line 71
    .end local v0           #tag:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v0       #tag:Ljava/lang/Object;
    :cond_1
    check-cast v0, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v0           #tag:Ljava/lang/Object;
    iget-object v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    goto :goto_0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public layout(IIII)V
    .locals 11
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->layout(IIII)V

    .line 147
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->isShown()Z

    move-result v8

    if-nez v8, :cond_0

    .line 149
    const-string v8, "android.view.View"

    const-string v9, "mAttachInfo"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/samsung/surfacewidget/Reflection;->getField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 150
    .local v1, attachInfoField:Ljava/lang/reflect/Field;
    const-string v8, "android.view.View$AttachInfo"

    const-string v9, "mHardwareRenderer"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/samsung/surfacewidget/Reflection;->getField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 151
    .local v5, hardwareRendererField:Ljava/lang/reflect/Field;
    invoke-static {p0, v1}, Lcom/samsung/surfacewidget/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, attachInfo:Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/samsung/surfacewidget/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    .line 154
    .local v4, hardwareRenderer:Ljava/lang/Object;
    const-string v8, "android.view.HardwareRenderer"

    const-string v9, "isEnabled"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/samsung/surfacewidget/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 156
    .local v3, enabledMethod:Ljava/lang/reflect/Method;
    if-nez v3, :cond_1

    .line 158
    const-string v8, "SurfaceWidgetView"

    const-string v9, "enabledMethod was not found in the platform"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v0           #attachInfo:Ljava/lang/Object;
    .end local v1           #attachInfoField:Ljava/lang/reflect/Field;
    .end local v3           #enabledMethod:Ljava/lang/reflect/Method;
    .end local v4           #hardwareRenderer:Ljava/lang/Object;
    .end local v5           #hardwareRendererField:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local v0       #attachInfo:Ljava/lang/Object;
    .restart local v1       #attachInfoField:Ljava/lang/reflect/Field;
    .restart local v3       #enabledMethod:Ljava/lang/reflect/Method;
    .restart local v4       #hardwareRenderer:Ljava/lang/Object;
    .restart local v5       #hardwareRendererField:Ljava/lang/reflect/Field;
    :cond_1
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v3, v8}, Lcom/samsung/surfacewidget/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 164
    .local v2, enabled:Z
    if-nez v2, :cond_2

    .line 166
    const-string v8, "SurfaceWidgetView"

    const-string v9, "Hardware renderer was not enabled yet"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_2
    const-string v8, "android.view.HardwareRenderer"

    const-string v9, "validate"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/samsung/surfacewidget/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 172
    .local v6, validateMethod:Ljava/lang/reflect/Method;
    if-nez v6, :cond_3

    .line 174
    const-string v8, "SurfaceWidgetView"

    const-string v9, "validateMethod was not found in the platform"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_3
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v6, v8}, Lcom/samsung/surfacewidget/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 180
    .local v7, validated:Z
    if-nez v7, :cond_4

    .line 182
    const-string v8, "SurfaceWidgetView"

    const-string v9, "Could not acquire hardware rendering context"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->createHardwareLayerEarly()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 266
    const-string v0, "SurfaceWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow() your surface should be back:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 252
    const-string v0, "SurfaceWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow() your surface is gone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 293
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 295
    .local v11, tag:Ljava/lang/Object;
    instance-of v0, v11, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v0, :cond_1

    check-cast v11, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v11           #tag:Ljava/lang/Object;
    iget-object v9, v11, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    .local v9, conn:Lcom/android/launcher2/SurfaceWidgetConnection;
    if-eqz v9, :cond_1

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 298
    .local v8, action:I
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v12

    .line 299
    .local v12, tool:I
    if-ne v12, v4, :cond_1

    const/16 v0, 0x9

    if-eq v8, v0, :cond_0

    const/16 v0, 0xa

    if-ne v8, v0, :cond_1

    .line 302
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 305
    .local v10, fakeTouchEvent:Landroid/view/MotionEvent;
    invoke-virtual {v9, v10}, Lcom/android/launcher2/SurfaceWidgetConnection;->onVerticalTouch(Landroid/view/MotionEvent;)V

    .line 308
    .end local v8           #action:I
    .end local v9           #conn:Lcom/android/launcher2/SurfaceWidgetConnection;
    .end local v10           #fakeTouchEvent:Landroid/view/MotionEvent;
    .end local v12           #tool:I
    :cond_1
    invoke-super {p0, p1}, Landroid/view/TextureView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPageScroll(IIII)V
    .locals 12
    .parameter "currentPageIndex"
    .parameter "pageIndex"
    .parameter "pageWidth"
    .parameter "pageOffset"

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getX()F

    move-result v8

    .line 499
    .local v8, x:F
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getY()F

    move-result v9

    .line 500
    .local v9, y:F
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getWidth()I

    move-result v10

    int-to-float v7, v10

    .line 501
    .local v7, w:F
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getHeight()I

    move-result v10

    int-to-float v2, v10

    .line 502
    .local v2, h:F
    const/high16 v10, 0x3f00

    mul-float/2addr v10, v7

    add-float v0, v8, v10

    .line 503
    .local v0, centerX:F
    const/high16 v10, 0x3f00

    mul-float/2addr v10, v2

    add-float v1, v9, v10

    .line 504
    .local v1, centerY:F
    sub-int v6, p2, p1

    .line 507
    .local v6, pageDelta:I
    mul-int v10, v6, p3

    sub-int v10, v10, p4

    int-to-float v3, v10

    .line 508
    .local v3, offset:F
    add-float v10, v0, v3

    int-to-float v11, p3

    div-float v4, v10, v11

    .line 509
    .local v4, offsetX:F
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v5, v1, v10

    .line 510
    .local v5, offsetY:F
    const/4 v10, 0x0

    invoke-direct {p0, v4, v5, v10}, Lcom/android/launcher2/SurfaceWidgetView;->notifyPositionOffset(FFF)V

    .line 511
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .parameter "newW"
    .parameter "newH"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 276
    const-string v0, "SurfaceWidgetView"

    const-string v1, "onSizeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 281
    const-string v0, "SurfaceWidgetView"

    const-string v1, "onSizeChanged() just added to view heirarchy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "aEvent"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 314
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/launcher2/Launcher;->isMotionDialogLaunching:Z

    if-eqz v5, :cond_2

    .line 315
    :cond_0
    const-string v5, "SurfaceWidgetView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "I will not send touch event to widget:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/launcher2/Launcher;->isMotionDialogLaunching:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 339
    :cond_1
    :goto_0
    return v2

    .line 318
    :cond_2
    const/4 v2, 0x1

    .line 319
    .local v2, res:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 332
    :cond_3
    :goto_1
    if-eqz v2, :cond_1

    .line 333
    invoke-super {p0, p1}, Landroid/view/TextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 334
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 335
    .local v3, tag:Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v4, v4, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-eqz v4, :cond_1

    .line 336
    check-cast v3, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v3           #tag:Ljava/lang/Object;
    iget-object v4, v3, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/SurfaceWidgetConnection;->onVerticalTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 321
    :pswitch_0
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v4

    .line 322
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v7

    .line 324
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 325
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz v5, :cond_3

    move-object v1, v0

    .line 326
    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 327
    .local v1, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    aget v4, v5, v4

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    aget v5, v5, v7

    iget v6, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/CellLayout$LayoutParams;->containsPt(II)Z

    move-result v4

    and-int/2addr v2, v4

    .line 328
    goto :goto_1

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 81
    iput p2, p0, Lcom/android/launcher2/SurfaceWidgetView;->mVisibility:I

    .line 84
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 88
    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/SurfaceWidgetConnection;->onVisibilityChanged(Z)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    .end local v0           #tag:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 94
    .restart local v0       #tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 95
    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/SurfaceWidgetConnection;->onVisibilityChanged(Z)V

    goto :goto_0
.end method

.method public repositionSurfaceWidget(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->setFrame(IIII)Z

    .line 104
    return-void
.end method

.method public resizeSurfaceWidgetView(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 109
    const-string v2, "SurfaceWidgetView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizing surface widget view w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 112
    .local v0, x:I
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 113
    .local v1, y:I
    add-int v2, v0, p1

    add-int v3, v1, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher2/SurfaceWidgetView;->setFrame(IIII)Z

    .line 114
    return-void
.end method

.method public setFrame(IIII)Z
    .locals 10
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/high16 v9, 0x3f00

    .line 118
    if-eq p3, p1, :cond_0

    if-ne p4, p2, :cond_2

    .line 120
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 121
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "SurfaceWidgetView"

    const-string v8, "setting SurfaceWidgetView to 0 size!?!?...ignoring the call because it is wrong"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    const/4 v6, 0x0

    .line 139
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    return v6

    .line 125
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->setFrame(IIII)Z

    move-result v6

    .line 131
    .local v6, result:Z
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 132
    .local v5, parent:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 133
    int-to-float v7, p1

    int-to-float v8, p3

    mul-float/2addr v8, v9

    add-float v0, v7, v8

    .line 134
    .local v0, centerX:F
    int-to-float v7, p3

    int-to-float v8, p4

    mul-float/2addr v8, v9

    add-float v1, v7, v8

    .line 135
    .local v1, centerY:F
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v0, v7

    .line 136
    .local v3, offsetX:F
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v1, v7

    .line 137
    .local v4, offsetY:F
    const/4 v7, 0x0

    invoke-direct {p0, v3, v4, v7}, Lcom/android/launcher2/SurfaceWidgetView;->notifyPositionOffset(FFF)V

    goto :goto_0
.end method

.method public surfaceWidgetCrashed(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 11
    .parameter "exception"
    .parameter "reason"

    .prologue
    const/4 v10, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 394
    .local v1, item:Lcom/android/launcher2/SurfaceWidgetItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetItem;->getState()Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    if-ne v6, v7, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    sget-object v6, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 399
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 400
    .local v3, parent:Landroid/view/ViewGroup;
    if-nez v3, :cond_2

    .line 401
    const-string v6, "SurfaceWidgetView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SurfaceWidgetView in error has a null parent? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 412
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v6, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartCount:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_3

    const-string v6, "eglSwapBuffers"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 413
    iget v6, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartCount:I

    .line 414
    const-string v6, "SurfaceWidgetView"

    const-string v7, "auto-restarting widget"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0, v1, v2, p0}, Lcom/android/launcher2/SurfaceWidgetView;->restartWidget(Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;Lcom/android/launcher2/SurfaceWidgetView;)V

    goto :goto_0

    .line 419
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 420
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030050

    invoke-virtual {v0, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 421
    .local v5, restartView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 422
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 441
    const v6, 0x7f0700bb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 442
    .local v4, restartButton:Landroid/widget/Button;
    new-instance v6, Lcom/android/launcher2/SurfaceWidgetView$1;

    invoke-direct {v6, p0, v1, v2}, Lcom/android/launcher2/SurfaceWidgetView$1;-><init>(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 452
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 453
    iput-object v5, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartView:Landroid/view/View;

    .line 454
    iput-object v10, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    .line 455
    const-wide/16 v6, -0x1

    iput-wide v6, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    goto/16 :goto_0
.end method

.method public surfaceWidgetRestart()V
    .locals 6

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 375
    .local v0, item:Lcom/android/launcher2/SurfaceWidgetItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetItem;->getState()Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    if-ne v3, v4, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    sget-object v3, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 381
    .local v2, parent:Landroid/view/ViewGroup;
    if-nez v2, :cond_2

    .line 382
    const-string v3, "SurfaceWidgetView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SurfaceWidgetView in error has a null parent? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 388
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, v0, v1, p0}, Lcom/android/launcher2/SurfaceWidgetView;->restartWidget(Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;Lcom/android/launcher2/SurfaceWidgetView;)V

    goto :goto_0
.end method
