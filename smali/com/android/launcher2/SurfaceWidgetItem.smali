.class Lcom/android/launcher2/SurfaceWidgetItem;
.super Lcom/android/launcher2/HomeItem;
.source "SurfaceWidgetItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field public static final SURFACE_WIDGET_THEMENAME:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET.themename"

.field private static final TAG:Ljava/lang/String; = "SurfaceWidgetItem"


# instance fields
.field defSpans:[I

.field mComponentName:Landroid/content/ComponentName;

.field mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

.field mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

.field mInstance:I

.field private mPadding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

.field mRestartCount:I

.field mRestartView:Landroid/view/View;

.field private mState:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

.field mWidgetId:J

.field mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

.field resizeSpans:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/SurfaceWidgetItem;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SURFACE_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 46
    sget-object v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mState:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    .line 54
    iput-object v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    .line 57
    iput-object v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartView:Landroid/view/View;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartCount:I

    .line 295
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->resizeSpans:[I

    .line 296
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->defSpans:[I

    .line 65
    return-void

    .line 295
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 296
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private calcSpans()V
    .locals 3

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v1, :cond_0

    .line 304
    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 305
    .local v0, c:Lcom/android/launcher2/WorkspaceSpanCalculator;
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->resizeSpans:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->resizeSpans:[I

    .line 306
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->defSpans:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->defSpans:[I

    .line 308
    .end local v0           #c:Lcom/android/launcher2/WorkspaceSpanCalculator;
    :cond_0
    return-void
.end method


# virtual methods
.method public destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V
    .locals 4
    .parameter "ctx"
    .parameter "pm"
    .parameter "isRemovedFromIdle"

    .prologue
    const/4 v3, 0x0

    .line 230
    sget-object v1, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 232
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    iget v2, v2, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceInstance:I

    invoke-virtual {p2, v1, v2}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->removeWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)V

    .line 234
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    invoke-virtual {v1, p3}, Lcom/android/launcher2/SurfaceWidgetConnection;->onDestroy(Z)Z

    .line 235
    iput-object v3, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/SurfaceWidgetView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 241
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 243
    .local v0, parent:Landroid/view/ViewGroup;
    if-nez v0, :cond_3

    .line 268
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    .line 269
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetItem;->unbind()V

    .line 271
    :cond_2
    return-void

    .line 247
    .restart local v0       #parent:Landroid/view/ViewGroup;
    :cond_3
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v1, :cond_4

    .line 249
    check-cast v0, Lcom/android/launcher2/CellLayoutChildren;

    .end local v0           #parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayoutChildren;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0

    .line 251
    .restart local v0       #parent:Landroid/view/ViewGroup;
    :cond_4
    instance-of v1, v0, Lcom/android/launcher2/DragOrigin;

    if-eqz v1, :cond_5

    .line 253
    check-cast v0, Lcom/android/launcher2/DragOrigin;

    .end local v0           #parent:Landroid/view/ViewGroup;
    invoke-interface {v0, p0}, Lcom/android/launcher2/DragOrigin;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0

    .line 255
    .restart local v0       #parent:Landroid/view/ViewGroup;
    :cond_5
    instance-of v1, v0, Lcom/android/launcher2/AnimationLayer;

    if-nez v1, :cond_1

    .line 261
    sget-boolean v1, Lcom/android/launcher2/SurfaceWidgetItem;->DEBUGGABLE:Z

    if-eqz v1, :cond_1

    .line 262
    const-string v1, "SurfaceWidgetItem"

    const-string v2, "invalid parent for SurfaceWidget being destroyed?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDefSpans()[I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->defSpans:[I

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, pkgName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 291
    :cond_0
    return-object v0
.end method

.method public getResizeSpans()[I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->resizeSpans:[I

    return-object v0
.end method

.method public getState()Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mState:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    return-object v0
.end method

.method public getWidgetPadding()Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mPadding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    return-object v0
.end method

.method public isAlive()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mState:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    sget-object v1, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/android/launcher2/SurfaceWidgetView;Z)V
    .locals 10
    .parameter "context"
    .parameter "info"
    .parameter "view"
    .parameter "updateWidgetCount"

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x0

    .line 92
    sget-object v2, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 93
    .local v2, packageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    sget-object v5, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 96
    invoke-virtual {p2}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5, v9}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v3

    .line 97
    .local v3, swpinfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    if-nez v3, :cond_2

    .line 98
    const-string v5, "SurfaceWidgetItem"

    const-string v6, "SurfaceWidgetProviderInfo is null. Deleting Widget from database and removing view from parent."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {p1, p0}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 101
    if-eqz p3, :cond_1

    .line 102
    invoke-virtual {p3}, Lcom/android/launcher2/SurfaceWidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 104
    .local v4, viewParent:Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 105
    invoke-virtual {v4, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 107
    :cond_0
    invoke-virtual {p3, v9}, Lcom/android/launcher2/SurfaceWidgetView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 108
    const/4 p3, 0x0

    .line 181
    .end local v4           #viewParent:Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v5, :cond_5

    .line 114
    invoke-virtual {v2, p2}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->createWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    .line 123
    :cond_3
    :goto_1
    iget v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    if-ne v5, v6, :cond_7

    .line 124
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_4

    .line 125
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 126
    .local v1, mHandler:Landroid/os/Handler;
    new-instance v5, Lcom/android/launcher2/SurfaceWidgetItem$1;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher2/SurfaceWidgetItem$1;-><init>(Lcom/android/launcher2/SurfaceWidgetItem;Landroid/content/Context;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    .end local v1           #mHandler:Landroid/os/Handler;
    :cond_4
    sget-boolean v5, Lcom/android/launcher2/SurfaceWidgetItem;->DEBUGGABLE:Z

    if-eqz v5, :cond_1

    .line 133
    const-string v5, "SurfaceWidgetItem"

    const-string v6, "could not create widget instance...do you have onlyOneInstance set and are trying to place a 2nd widget?"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_5
    iget v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    if-ne v5, v6, :cond_6

    .line 117
    invoke-virtual {v2, p2}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->createWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    goto :goto_1

    .line 118
    :cond_6
    if-eqz p4, :cond_3

    .line 119
    iget v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    invoke-virtual {v2, p2, v5}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->updateWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)V

    goto :goto_1

    .line 137
    :cond_7
    sget-boolean v5, Lcom/android/launcher2/SurfaceWidgetItem;->DEBUGGABLE:Z

    if-eqz v5, :cond_8

    const-string v5, "SurfaceWidgetItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeSurfaceWidget()  item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  widgetId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_8
    invoke-virtual {p2}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 142
    new-instance v5, Lcom/android/launcher2/SurfaceWidgetView;

    invoke-direct {v5, p1}, Lcom/android/launcher2/SurfaceWidgetView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    .line 143
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    iget-object v6, p2, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/SurfaceWidgetView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v5, p0}, Lcom/android/launcher2/SurfaceWidgetView;->setTag(Ljava/lang/Object;)V

    .line 145
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mPadding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    if-nez v5, :cond_9

    .line 146
    sget-object v5, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v6, p2, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mPadding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    .line 150
    :cond_9
    if-eqz p3, :cond_b

    .line 151
    invoke-virtual {p3}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 152
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_b

    .line 153
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v5, v0}, Lcom/android/launcher2/SurfaceWidgetView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {p3}, Lcom/android/launcher2/SurfaceWidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 157
    .restart local v4       #viewParent:Landroid/view/ViewGroup;
    if-eqz v4, :cond_a

    .line 158
    invoke-virtual {v4, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 159
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 161
    :cond_a
    invoke-virtual {p3, v9}, Lcom/android/launcher2/SurfaceWidgetView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 162
    invoke-virtual {p3, v9}, Lcom/android/launcher2/SurfaceWidgetView;->setTag(Ljava/lang/Object;)V

    .line 163
    const/4 p3, 0x0

    .line 168
    .end local v0           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #viewParent:Landroid/view/ViewGroup;
    :cond_b
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-eqz v5, :cond_c

    .line 169
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/SurfaceWidgetConnection;->onDestroy(Z)Z

    .line 170
    iput-object v9, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    .line 174
    :cond_c
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    iget v6, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    invoke-static {v5, p2, v6}, Lcom/android/launcher2/SurfaceWidgetConnection;->bindToService(Lcom/android/launcher2/SurfaceWidgetView;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)Lcom/android/launcher2/SurfaceWidgetConnection;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    .line 176
    iput-object p2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    .line 177
    invoke-virtual {p2}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    .line 179
    invoke-direct {p0}, Lcom/android/launcher2/SurfaceWidgetItem;->calcSpans()V

    goto/16 :goto_0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mComponentName == null; item will fail to be reloaded from the DB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iget v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    if-gtz v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mInstance <= 0; item will fail to be reloaded from the DB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    const-string v0, "intent"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "instance"

    iget v3, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "appWidgetId"

    iget-wide v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetItem;->getState()Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->PAUSED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetItem;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->PAUSED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 216
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetConnection;->onPause()Z

    .line 218
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetItem;->getState()Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RESUMED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetItem;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    sget-object v1, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RESUMED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 223
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection;->onResume()Z

    move-result v0

    .line 224
    .local v0, wasResumed:Z
    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/launcher2/SurfaceWidgetConnection;->resumeLater(Z)V

    .line 226
    .end local v0           #wasResumed:Z
    :cond_0
    return-void

    .line 224
    .restart local v0       #wasResumed:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mState:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    .line 207
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    sget-boolean v1, Lcom/android/launcher2/SurfaceWidgetItem;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "SurfaceWidgetItem"

    const-string v2, "unbind"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/HomeItem;->unbind()V

    .line 188
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 189
    const-string v1, "SurfaceWidgetItem"

    const-string v2, "unbind calling destroyWidget!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getSurfaceWidgetPackageManager()Lcom/android/launcher2/SurfaceWidgetPackageManager;

    move-result-object v0

    .line 191
    .local v0, surfaceWidgetManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/launcher2/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V

    .line 192
    iput-object v3, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    .line 193
    iput-object v3, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    .line 195
    .end local v0           #surfaceWidgetManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;
    :cond_1
    return-void
.end method
