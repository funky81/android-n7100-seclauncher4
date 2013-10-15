.class public Lcom/android/launcher2/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final BOTTOM:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final TOP:I = 0x1

.field private static final enableMultitouchForWidgetResize:Z


# instance fields
.field final BACKGROUND_PADDING:I

.field final BORDER_MARGIN:I

.field final DIMMED_HANDLE_ALPHA:F

.field final RESIZE_THRESHOLD:F

.field final SNAP_DURATION:I

.field final TOUCH_AREA:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

.field private mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBeginResize:Z

.field private mBorderHasChanged:Z

.field private mBorderMargin:I

.field private mBottomBorderActive:Z

.field private mBottomHandle:Landroid/widget/ImageView;

.field private mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

.field private mClearIfNoScale:Z

.field private mDeltaX:I

.field private mDeltaY:I

.field private mDownX:I

.field private mDownY:I

.field private mExpandability:[I

.field private mForceInvalid:Z

.field private mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

.field private mHorizontalScaleActive:Z

.field private mLeftBorderActive:Z

.field private mLeftHandle:Landroid/widget/ImageView;

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleHasHappened:Z

.field private mSizes:Lcom/android/launcher2/WidgetSizes;

.field private mStartSpanX:F

.field private mStartSpanY:F

.field private mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpXY:[F

.field private mTopBorderActive:Z

.field private mTopHandle:Landroid/widget/ImageView;

.field private mTouchTargetWidth:I

.field private mVerticalScaleActive:Z

.field private mVisualizeInvalid:Z

.field private mWidgetView:Landroid/view/View;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/AppWidgetResizeFrame;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/HomeItem;Landroid/view/View;Lcom/android/launcher2/CellLayoutWithResizableWidgets;)V
    .locals 10
    .parameter "context"
    .parameter "item"
    .parameter "widgetView"
    .parameter "cellLayout"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v6, 0x2

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpXY:[F

    .line 76
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 88
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    .line 97
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    .line 99
    const/4 v6, 0x4

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    .line 101
    const/16 v6, 0x96

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->SNAP_DURATION:I

    .line 102
    const/16 v6, 0x10

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->BACKGROUND_PADDING:I

    .line 103
    const/16 v6, 0x46

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->TOUCH_AREA:I

    .line 104
    const/16 v6, 0x1a

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->BORDER_MARGIN:I

    .line 105
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->DIMMED_HANDLE_ALPHA:F

    .line 106
    const v6, 0x3f28f5c3

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->RESIZE_THRESHOLD:F

    .line 113
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    .line 117
    new-instance v6, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 126
    .local v3, res:Landroid/content/res/Resources;
    new-instance v6, Lcom/android/launcher2/WidgetSizes;

    invoke-direct {v6, p1}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    .line 128
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 130
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    .line 131
    .local v0, density:F
    const/high16 v6, 0x4180

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 132
    const/high16 v6, 0x428c

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 133
    const/high16 v6, 0x41d0

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    .line 135
    iput-object p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    .line 136
    iput-object p4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 137
    iput-object p3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    .line 138
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Workspace;

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 139
    const-string v5, ""

    .line 141
    .local v5, widgetName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v6, v6, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v6, :cond_2

    .line 142
    check-cast p3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .end local p3
    invoke-virtual {p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 143
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 144
    iget-object v5, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 155
    .end local v1           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    :goto_0
    const v6, 0x7f020168

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 156
    const v6, 0x7f020169

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

    .line 157
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/launcher2/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 159
    const v6, 0x7f0e00c0

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, talkbackContent:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 163
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 164
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const v7, 0x7f02016a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 167
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x13

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 169
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 170
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 173
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const v7, 0x7f02016a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 176
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x15

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 178
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 179
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 182
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const v7, 0x7f02016a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 185
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x31

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 187
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 188
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 191
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const v7, 0x7f02016a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 194
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x51

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 196
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 197
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 200
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :cond_1
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    return-void

    .line 145
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v4           #talkbackContent:Ljava/lang/String;
    .restart local p3
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v6, v6, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v6, :cond_4

    .line 146
    check-cast p3, Lcom/android/launcher2/SurfaceWidgetView;

    .end local p3
    invoke-virtual {p3}, Lcom/android/launcher2/SurfaceWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 147
    .restart local v1       #info:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_3

    .line 148
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 149
    iget-object v5, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    goto/16 :goto_0

    .line 150
    :cond_3
    sget-boolean v6, Lcom/android/launcher2/AppWidgetResizeFrame;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "AppWidgetResizeFrame"

    const-string v7, "surface widget view has invalid info"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 152
    .end local v1           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local p3
    :cond_4
    sget-boolean v6, Lcom/android/launcher2/AppWidgetResizeFrame;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "AppWidgetResizeFrame"

    const-string v7, "unknown view type of AppWidgetResizeFrame"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 202
    .end local p3
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4       #talkbackContent:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 203
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private beginResizeIfPointInRegion(II)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 357
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    move v1, v4

    .line 358
    .local v1, horizontalActive:Z
    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    move v3, v4

    .line 359
    .local v3, verticalActive:Z
    :goto_1
    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p1, v6, :cond_4

    if-eqz v1, :cond_4

    move v6, v4

    :goto_2
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 360
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidth()I

    move-result v6

    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v6, v9

    if-le p1, v6, :cond_5

    if-eqz v1, :cond_5

    move v6, v4

    :goto_3
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 361
    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p2, v6, :cond_6

    if-eqz v3, :cond_6

    move v6, v4

    :goto_4
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 362
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getHeight()I

    move-result v6

    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v6, v9

    if-le p2, v6, :cond_7

    if-eqz v3, :cond_7

    move v6, v4

    :goto_5
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 364
    iget-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v6, :cond_8

    :cond_0
    move v0, v4

    .line 367
    .local v0, anyBordersActive:Z
    :goto_6
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 368
    .local v2, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 369
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 370
    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    .line 371
    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    .line 372
    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 373
    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 375
    if-eqz v0, :cond_1

    .line 376
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v4, :cond_9

    move v4, v7

    :goto_7
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 377
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v4, :cond_a

    move v4, v7

    :goto_8
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 378
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v4, :cond_b

    move v4, v7

    :goto_9
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 379
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v5, :cond_c

    :goto_a
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 381
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 383
    return v0

    .end local v0           #anyBordersActive:Z
    .end local v1           #horizontalActive:Z
    .end local v2           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v3           #verticalActive:Z
    :cond_2
    move v1, v5

    .line 357
    goto/16 :goto_0

    .restart local v1       #horizontalActive:Z
    :cond_3
    move v3, v5

    .line 358
    goto/16 :goto_1

    .restart local v3       #verticalActive:Z
    :cond_4
    move v6, v5

    .line 359
    goto/16 :goto_2

    :cond_5
    move v6, v5

    .line 360
    goto/16 :goto_3

    :cond_6
    move v6, v5

    .line 361
    goto :goto_4

    :cond_7
    move v6, v5

    .line 362
    goto :goto_5

    :cond_8
    move v0, v5

    .line 364
    goto :goto_6

    .restart local v0       #anyBordersActive:Z
    .restart local v2       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_9
    move v4, v8

    .line 376
    goto :goto_7

    :cond_a
    move v4, v8

    .line 377
    goto :goto_8

    :cond_b
    move v4, v8

    .line 378
    goto :goto_9

    :cond_c
    move v7, v8

    .line 379
    goto :goto_a
.end method

.method private commitResize()V
    .locals 11

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualOk()V

    .line 695
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 697
    .local v10, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetView;

    iget v1, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/SurfaceWidgetView;->resizeSurfaceWidgetView(II)V

    .line 712
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    const-wide/16 v2, -0x64

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    iget v4, v4, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v5, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v6, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v7, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v8, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const-string v9, "resizeItemInDatabase"

    invoke-static/range {v0 .. v9}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIIILjava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 718
    new-instance v0, Lcom/android/launcher2/AppWidgetResizeFrame$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 724
    return-void

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v0, :cond_2

    .line 703
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    goto :goto_0

    .line 709
    :cond_2
    sget-boolean v0, Lcom/android/launcher2/AppWidgetResizeFrame;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "AppWidgetResizeFrame"

    const-string v1, "unknown view type in app widget resize frame"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resizeWidgetIfNeeded()V
    .locals 26

    .prologue
    .line 513
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getCellWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getWidthGap()I

    move-result v2

    add-int v23, v1, v2

    .line 514
    .local v23, xThreshold:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getCellHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getHeightGap()I

    move-result v2

    add-int v24, v1, v2

    .line 516
    .local v24, yThreshold:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 517
    .local v7, _runh:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 519
    .local v8, _runv:I
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    move/from16 v0, v23

    int-to-float v2, v0

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v2, v2

    sub-float v16, v1, v2

    .line 520
    .local v16, hSpanIncF:F
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    move/from16 v0, v24

    int-to-float v2, v0

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v2, v2

    sub-float v20, v1, v2

    .line 522
    .local v20, vSpanIncF:F
    const/4 v15, 0x0

    .line 523
    .local v15, hSpanInc:I
    const/16 v19, 0x0

    .line 524
    .local v19, vSpanInc:I
    const/4 v13, 0x0

    .line 525
    .local v13, cellXInc:I
    const/4 v14, 0x0

    .line 527
    .local v14, cellYInc:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3f28f5c3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 528
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 530
    :cond_0
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3f28f5c3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 531
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 534
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    int-to-float v1, v1

    cmpg-float v1, v1, v20

    if-ltz v1, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v1, v1, v20

    if-gtz v1, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v1, v1, v16

    if-gtz v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-float v1, v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_6

    .line 540
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualInvalid()V

    .line 546
    :goto_0
    if-nez v15, :cond_7

    if-nez v19, :cond_7

    .line 686
    :goto_1
    return-void

    .line 542
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualOk()V

    goto :goto_0

    .line 552
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 557
    .local v17, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_13

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    neg-int v1, v1

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 559
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 560
    mul-int/lit8 v15, v15, -0x1

    .line 561
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 562
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 563
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    sub-int/2addr v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 585
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_15

    .line 586
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    neg-int v1, v1

    move/from16 v0, v19

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 587
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 588
    mul-int/lit8 v19, v19, -0x1

    .line 589
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    move/from16 v0, v19

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 590
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    move/from16 v0, v19

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 591
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    sub-int v1, v1, v19

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 614
    :cond_9
    :goto_3
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 615
    .local v5, width:I
    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 616
    .local v6, height:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    if-eqz v1, :cond_b

    .line 617
    :cond_a
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int v5, v15, v1

    .line 619
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    if-eqz v1, :cond_d

    .line 620
    :cond_c
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int v6, v19, v1

    .line 624
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher2/WidgetSizes;->isAvailableSize(II)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 626
    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 627
    .local v9, _spanx:I
    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 628
    .local v10, _spany:I
    move-object/from16 v0, v17

    iget v11, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 629
    .local v11, _x:I
    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 631
    .local v12, _y:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    if-eqz v1, :cond_f

    .line 632
    :cond_e
    move-object/from16 v0, v17

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 633
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int/2addr v1, v13

    move-object/from16 v0, v17

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 636
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-nez v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    if-eqz v1, :cond_11

    .line 637
    :cond_10
    move-object/from16 v0, v17

    iput v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 638
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    add-int/2addr v1, v14

    move-object/from16 v0, v17

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 641
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->rearrangeWorkspaceForSpace(Lcom/android/launcher2/BaseItem;IIII)Z

    move-result v1

    if-nez v1, :cond_17

    .line 643
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualInvalid()V

    .line 645
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 646
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 648
    move-object/from16 v0, v17

    iput v9, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 649
    move-object/from16 v0, v17

    iput v10, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 650
    move-object/from16 v0, v17

    iput v11, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 651
    move-object/from16 v0, v17

    iput v12, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 681
    .end local v9           #_spanx:I
    .end local v10           #_spany:I
    .end local v11           #_x:I
    .end local v12           #_y:I
    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 685
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_1

    .line 564
    .end local v5           #width:I
    .end local v6           #height:I
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_14

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 566
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 567
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_2

    .line 568
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    if-eqz v1, :cond_8

    .line 571
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v1

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v2, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 573
    .restart local v5       #width:I
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/WidgetSizes;->capWidth(I)I

    move-result v5

    .line 576
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    sub-int v15, v5, v1

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v1, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    int-to-float v1, v1

    move/from16 v0, v23

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 580
    .local v21, wantedX:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    neg-int v1, v1

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    sub-int v2, v21, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    sub-int/2addr v2, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 582
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_2

    .line 592
    .end local v5           #width:I
    .end local v21           #wantedX:I
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_16

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    move/from16 v0, v19

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 594
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    move/from16 v0, v19

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 595
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    add-int v1, v1, v19

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    goto/16 :goto_3

    .line 596
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    if-eqz v1, :cond_9

    .line 599
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v1

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int v2, v2, v19

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 601
    .restart local v6       #height:I
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/WidgetSizes;->capHeight(I)I

    move-result v6

    .line 604
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    sub-int v19, v6, v1

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v1, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    int-to-float v1, v1

    move/from16 v0, v24

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 608
    .local v22, wantedY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    neg-int v1, v1

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    sub-int v2, v22, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    sub-int v2, v2, v19

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 610
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    add-int v1, v1, v19

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    goto/16 :goto_3

    .line 653
    .end local v22           #wantedY:I
    .restart local v5       #width:I
    .restart local v9       #_spanx:I
    .restart local v10       #_spany:I
    .restart local v11       #_x:I
    .restart local v12       #_y:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v1, :cond_18

    .line 655
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/SurfaceWidgetView;->resizeSurfaceWidgetView(II)V

    goto/16 :goto_4

    .line 659
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v18

    .line 660
    .local v18, spanCalc:Lcom/android/launcher2/WorkspaceSpanCalculator;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 662
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    iget-boolean v1, v1, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    if-nez v1, :cond_12

    .line 663
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v1, :cond_12

    .line 664
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeWidgetItem;

    iget v2, v2, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move-object/from16 v0, v25

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    goto/16 :goto_4

    .line 673
    .end local v9           #_spanx:I
    .end local v10           #_spany:I
    .end local v11           #_x:I
    .end local v12           #_y:I
    .end local v18           #spanCalc:Lcom/android/launcher2/WorkspaceSpanCalculator;
    :cond_19
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 674
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 676
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualInvalid()V

    goto/16 :goto_4
.end method

.method private setVisualInvalid()V
    .locals 2

    .prologue
    const v1, 0x7f02016b

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    .line 503
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 505
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 507
    return-void
.end method

.method private setVisualOk()V
    .locals 2

    .prologue
    const v1, 0x7f02016a

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    .line 496
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 497
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 498
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 499
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 500
    return-void
.end method

.method private updateDeltas(II)V
    .locals 10
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 389
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v7}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->spanToPixel(II)[I

    move-result-object v3

    .line 390
    .local v3, r:[I
    aget v5, v3, v8

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v2, v5, -0x1

    .line 391
    .local v2, minWidth:I
    aget v5, v3, v9

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, -0x1

    .line 393
    .local v1, minHeight:I
    const/4 v0, 0x0

    .local v0, left:Z
    const/4 v4, 0x0

    .line 395
    .local v4, top:Z
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v5, p1

    if-gt v5, v2, :cond_2

    .line 396
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int v5, v2, v5

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 397
    const/4 v0, 0x1

    .line 408
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v5, p2

    if-gt v5, v1, :cond_4

    .line 409
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int v5, v1, v5

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 410
    const/4 v4, 0x1

    .line 421
    :cond_1
    :goto_1
    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    .line 422
    iput-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    .line 426
    :goto_2
    return-void

    .line 398
    :cond_2
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int/2addr v5, p1

    if-gt v5, v2, :cond_3

    .line 399
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 400
    const/4 v0, 0x1

    goto :goto_0

    .line 402
    :cond_3
    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 403
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v5, :cond_0

    .line 404
    const/4 v0, 0x1

    goto :goto_0

    .line 411
    :cond_4
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int/2addr v5, p2

    if-gt v5, v1, :cond_5

    .line 412
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 413
    const/4 v4, 0x1

    goto :goto_1

    .line 415
    :cond_5
    iput p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 416
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v5, :cond_1

    .line 417
    const/4 v4, 0x1

    goto :goto_1

    .line 424
    :cond_6
    iput-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    goto :goto_2
.end method

.method private visualizeResizeForDelta(II)V
    .locals 20
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 432
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 435
    .local v10, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v3, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 436
    .local v3, _w:I
    iget v2, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 438
    .local v2, _h:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 439
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 440
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 460
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 461
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 462
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 487
    :cond_1
    :goto_1
    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v3, v0, :cond_2

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v2, v0, :cond_3

    .line 488
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderHasChanged:Z

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->resizeWidgetIfNeeded()V

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    .line 492
    :cond_3
    return-void

    .line 441
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 442
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 443
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 444
    if-lez p1, :cond_6

    .line 445
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 446
    .local v6, availableLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    sub-int v7, v17, v18

    .line 447
    .local v7, availableRight:I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v17

    mul-int/lit8 v4, v17, 0x2

    .line 448
    .local v4, availableBoth:I
    const/16 v17, 0x0

    sub-int v18, p1, v4

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 449
    .local v9, leftover:I
    move/from16 v0, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 450
    .local v12, useBoth:I
    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 451
    .local v14, useLeft:I
    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 452
    .local v15, useRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    sub-int v17, v17, v14

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 453
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    add-int v17, v17, v14

    add-int v17, v17, v15

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    .line 455
    .end local v4           #availableBoth:I
    .end local v6           #availableLeft:I
    .end local v7           #availableRight:I
    .end local v9           #leftover:I
    .end local v12           #useBoth:I
    .end local v14           #useLeft:I
    .end local v15           #useRight:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    div-int/lit8 v18, p1, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    add-int v17, v17, p1

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    .line 463
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 464
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 465
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 466
    if-lez p2, :cond_9

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 472
    .local v11, totalMaxHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    add-int v8, v17, v18

    .line 473
    .local v8, availableTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    sub-int v5, v11, v17

    .line 474
    .local v5, availableBottom:I
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    mul-int/lit8 v4, v17, 0x2

    .line 475
    .restart local v4       #availableBoth:I
    const/16 v17, 0x0

    sub-int v18, p2, v4

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 476
    .restart local v9       #leftover:I
    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 477
    .restart local v12       #useBoth:I
    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 478
    .local v16, useTop:I
    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 479
    .local v13, useBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    add-int v17, v17, v16

    add-int v17, v17, v13

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 482
    .end local v4           #availableBoth:I
    .end local v5           #availableBottom:I
    .end local v8           #availableTop:I
    .end local v9           #leftover:I
    .end local v11           #totalMaxHeight:I
    .end local v12           #useBoth:I
    .end local v13           #useBottom:I
    .end local v16           #useTop:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    div-int/lit8 v18, p2, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    add-int v17, v17, p2

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 799
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 800
    .local v4, widthOfTopHandle:I
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    .line 802
    .local v3, widthOfLeftHandle:I
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4040

    div-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    add-int v2, v5, v6

    .line 804
    .local v2, m:I
    const/4 v0, 0x0

    .line 805
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    if-eqz v5, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

    .line 811
    :goto_0
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v5, v2

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v6, v2

    invoke-virtual {v0, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 812
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 814
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 815
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getBackgroundPadding()I
    .locals 1

    .prologue
    .line 818
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    return v0
.end method

.method public getWidgetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 312
    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderHasChanged:Z

    if-nez v1, :cond_0

    .line 313
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->startDrag(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode(Z)V

    .line 316
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 323
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 324
    .local v2, spanX:F
    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanX:F

    sub-float v0, v2, v4

    .line 325
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 326
    .local v3, spanY:F
    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanY:F

    sub-float v1, v3, v4

    .line 328
    .local v1, deltaY:F
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    .line 329
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 330
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 332
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    .line 333
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 334
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 336
    float-to-int v4, v0

    float-to-int v5, v1

    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 338
    return v6
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanX:F

    .line 344
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanY:F

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    const/4 v0, 0x0

    .line 350
    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V

    .line 351
    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    .line 352
    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    .line 353
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 226
    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestDisallowInterceptTouchEvent(Z)V

    .line 236
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpXY:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    aput v10, v7, v8

    .line 237
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpXY:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    aput v10, v7, v9

    .line 238
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v10}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 239
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpXY:[F

    invoke-virtual {v7, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 240
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpXY:[F

    aget v7, v7, v8

    float-to-int v2, v7

    .line 241
    .local v2, rawX:I
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpXY:[F

    aget v7, v7, v9

    float-to-int v3, v7

    .line 243
    .local v3, rawY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 306
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v7, v9

    .line 307
    :goto_1
    return v7

    .line 245
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 246
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 248
    .local v6, y:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidth()I

    move-result v7

    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v10, v10, 0x2

    add-int v4, v7, v10

    .line 249
    .local v4, w:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getHeight()I

    move-result v7

    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v10, v10, 0x2

    add-int v0, v7, v10

    .line 250
    .local v0, h:I
    iget v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    neg-int v7, v7

    if-lt v5, v7, :cond_1

    if-gt v5, v4, :cond_1

    iget v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    neg-int v7, v7

    if-lt v6, v7, :cond_1

    if-le v6, v0, :cond_2

    :cond_1
    move v7, v8

    .line 252
    goto :goto_1

    .line 255
    :cond_2
    iput v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownX:I

    .line 256
    iput v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownY:I

    .line 258
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v7, v7, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v7, :cond_4

    .line 260
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v7, Lcom/android/launcher2/SurfaceWidgetView;

    iget-object v7, v7, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    aput v5, v7, v8

    .line 261
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v7, Lcom/android/launcher2/SurfaceWidgetView;

    iget-object v7, v7, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    aput v6, v7, v9

    .line 269
    :cond_3
    :goto_2
    invoke-direct {p0, v5, v6}, Lcom/android/launcher2/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v7

    if-nez v7, :cond_5

    .line 272
    iput-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mClearIfNoScale:Z

    .line 273
    iput-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mScaleHasHappened:Z

    .line 274
    iput-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderHasChanged:Z

    goto :goto_0

    .line 263
    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v7, v7, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v7, :cond_3

    .line 265
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v7, Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v7, v7, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    aput v5, v7, v8

    .line 266
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v7, Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v7, v7, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    aput v6, v7, v9

    goto :goto_2

    .line 276
    :cond_5
    iput-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    goto :goto_0

    .line 280
    .end local v0           #h:I
    .end local v4           #w:I
    .end local v5           #x:I
    .end local v6           #y:I
    :pswitch_1
    iget v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownX:I

    sub-int v7, v2, v7

    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownY:I

    sub-int v8, v3, v8

    invoke-direct {p0, v7, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_0

    .line 284
    :pswitch_2
    iput-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    .line 285
    iget v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownX:I

    sub-int v7, v2, v7

    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownY:I

    sub-int v8, v3, v8

    invoke-direct {p0, v7, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 286
    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V

    .line 287
    iget-boolean v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mClearIfNoScale:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mScaleHasHappened:Z

    if-nez v7, :cond_6

    .line 288
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->clearResizeFrame()V

    .line 290
    :cond_6
    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    if-eqz v7, :cond_0

    .line 292
    const/4 v1, 0x0

    .line 293
    .local v1, mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v1, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v1           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-direct {v1, v7}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .restart local v1       #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    move-object v7, v1

    .line 294
    check-cast v7, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-virtual {v7}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->dismissHelpDialog()V

    .line 295
    sput-boolean v9, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isStep3Visible:Z

    .line 296
    check-cast v1, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v1           #mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v1}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->showHelpDialog_step2()V

    goto/16 :goto_0

    .line 301
    :pswitch_3
    iget-boolean v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    if-eqz v7, :cond_7

    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V

    .line 302
    :cond_7
    iput-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    goto/16 :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public preScaleParentMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .parameter "m"

    .prologue
    .line 212
    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 213
    .local v0, fx:F
    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 214
    .local v1, fy:F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 215
    return-void
.end method

.method public snapToWidget(Z)V
    .locals 18
    .parameter "animate"

    .prologue
    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 728
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02016a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    float-to-int v1, v11

    .line 730
    .local v1, handleOffset:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    mul-int/lit8 v12, v1, 0x2

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    mul-int/lit8 v12, v12, 0x2

    add-int v5, v11, v12

    .line 731
    .local v5, newWidth:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    mul-int/lit8 v12, v1, 0x2

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    mul-int/lit8 v12, v12, 0x2

    add-int v4, v11, v12

    .line 733
    .local v4, newHeight:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getPaddingLeft()I

    move-result v2

    .line 734
    .local v2, l:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getPaddingTop()I

    move-result v10

    .line 736
    .local v10, t:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    add-int/2addr v11, v2

    sub-int/2addr v11, v1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    sub-int v6, v11, v12

    .line 737
    .local v6, newX:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v11, v10

    sub-int/2addr v11, v1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    sub-int v7, v11, v12

    .line 739
    .local v7, newY:I
    if-nez p1, :cond_0

    .line 740
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 741
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 742
    iput v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 743
    iput v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 744
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/high16 v12, 0x3f80

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 745
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/high16 v12, 0x3f80

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 746
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/high16 v12, 0x3f80

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 747
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/high16 v12, 0x3f80

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    .line 792
    :goto_0
    return-void

    .line 750
    :cond_0
    const/4 v11, 0x4

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    sget-object v13, Lcom/android/launcher2/CellLayout$LayoutParams;->WIDTH:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/android/launcher2/CellLayout$LayoutParams;->HEIGHT:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v4, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Lcom/android/launcher2/CellLayout$LayoutParams;->X:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    iget v0, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v6, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    sget-object v13, Lcom/android/launcher2/CellLayout$LayoutParams;->Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    iget v0, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v7, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v3, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 756
    .local v8, oa:Landroid/animation/ObjectAnimator;
    new-instance v11, Lcom/android/launcher2/AppWidgetResizeFrame$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/launcher2/AppWidgetResizeFrame$2;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    invoke-virtual {v8, v11}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 762
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 764
    .local v9, set:Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v11}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 780
    const/4 v11, 0x5

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 789
    :goto_1
    const-wide/16 v11, 0x96

    invoke-virtual {v9, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 790
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 766
    :pswitch_0
    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 773
    :pswitch_1
    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
