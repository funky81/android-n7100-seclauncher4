.class public Lcom/android/launcher2/MenuEditBar;
.super Landroid/widget/LinearLayout;
.source "MenuEditBar.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuEditBar$6;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuEditBar"


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAppInfo:Landroid/widget/TextView;

.field private mAppInfoContainer:Landroid/widget/FrameLayout;

.field private mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mDelete:Landroid/widget/TextView;

.field private mDeleteContainer:Landroid/widget/FrameLayout;

.field private mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteText:Ljava/lang/String;

.field private mDiableDrawable:Landroid/graphics/drawable/Drawable;

.field private mDisable:Landroid/widget/TextView;

.field private mDisableContainer:Landroid/widget/FrameLayout;

.field private mDisableText:Ljava/lang/String;

.field private mHideAnimator:Landroid/animation/Animator;

.field private mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

.field private mNewFolder:Landroid/widget/TextView;

.field private mNewFolderContainer:Landroid/widget/FrameLayout;

.field private mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

.field private mNewPage:Landroid/widget/TextView;

.field private mNewPageAllowed:Z

.field private mNewPageContainer:Landroid/widget/FrameLayout;

.field private mNewPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mRes:Landroid/content/res/Resources;

.field private mShowAnimator:Landroid/animation/Animator;

.field private mUninstallText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    iput-boolean v2, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    .line 112
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteText:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mUninstallText:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableText:Ljava/lang/String;

    .line 123
    return-void
.end method

.method private appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 144
    .local v3, infoOk:Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 186
    :cond_0
    :goto_1
    :pswitch_0
    return v3

    .line 143
    .end local v3           #infoOk:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 146
    .restart local v3       #infoOk:Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 150
    :pswitch_2
    if-eqz v3, :cond_0

    .line 151
    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 152
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e008a

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 154
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 155
    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto :goto_1

    .line 161
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 162
    .local v11, pkgName:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 163
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 165
    .local v10, intent:Landroid/content/Intent;
    const/high16 v0, 0x1080

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 168
    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 169
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 170
    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto :goto_1

    .line 176
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #pkgName:Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 180
    :pswitch_5
    if-eqz v3, :cond_0

    .line 181
    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private delete(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 204
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v0, :cond_2

    :cond_0
    move v3, v8

    .line 206
    .local v3, deleteOk:Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_1
    :goto_1
    :pswitch_0
    return v3

    .end local v3           #deleteOk:Z
    :cond_2
    move v3, v4

    .line 204
    goto :goto_0

    .line 208
    .restart local v3       #deleteOk:Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 212
    :pswitch_2
    if-eqz v3, :cond_1

    .line 213
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v8

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 214
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v0

    if-nez v0, :cond_4

    move v11, v8

    .line 217
    .local v11, isEmptyFolder:Z
    :goto_2
    if-eqz v11, :cond_5

    .line 218
    new-instance v0, Lcom/android/launcher2/MenuEditBar$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/MenuEditBar$1;-><init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    .line 232
    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_1

    .line 233
    const/16 v0, 0x6457

    invoke-virtual {p0, v0, v8}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto :goto_1

    .end local v11           #isEmptyFolder:Z
    :cond_4
    move v11, v4

    .line 214
    goto :goto_2

    .line 227
    .restart local v11       #isEmptyFolder:Z
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuEditBar;->showDeleteConfirmationDialog(Lcom/android/launcher2/AppItem;)V

    .line 228
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_3

    .line 229
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onDrop()V

    goto :goto_3

    .line 239
    .end local v11           #isEmptyFolder:Z
    :pswitch_3
    if-eqz v3, :cond_1

    .line 240
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 241
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e0089

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 243
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_1

    .line 244
    const/16 v0, 0x5695

    invoke-virtual {p0, v0, v8}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto :goto_1

    .line 250
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 254
    :pswitch_5
    if-eqz v3, :cond_1

    .line 255
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private disableApp(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 340
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v0, :cond_2

    :cond_0
    move v3, v8

    .line 342
    .local v3, disableOk:Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 390
    :cond_1
    :goto_1
    :pswitch_0
    return v3

    .end local v3           #disableOk:Z
    :cond_2
    move v3, v4

    .line 340
    goto :goto_0

    .line 344
    .restart local v3       #disableOk:Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 348
    :pswitch_2
    if-eqz v3, :cond_1

    .line 349
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v8

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 350
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v0

    if-nez v0, :cond_3

    move v11, v8

    .line 353
    .local v11, isEmptyFolder:Z
    :goto_2
    if-eqz v11, :cond_4

    .line 354
    new-instance v0, Lcom/android/launcher2/MenuEditBar$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/MenuEditBar$2;-><init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    .end local v11           #isEmptyFolder:Z
    :cond_3
    move v11, v4

    .line 350
    goto :goto_2

    .line 363
    .restart local v11       #isEmptyFolder:Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuEditBar;->showDisableConfirmationDialog(Lcom/android/launcher2/AppItem;)V

    .line 364
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    .line 365
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onDrop()V

    goto :goto_1

    .line 372
    .end local v11           #isEmptyFolder:Z
    :pswitch_3
    if-eqz v3, :cond_1

    .line 373
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 374
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e0089

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto :goto_1

    .line 380
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 384
    :pswitch_5
    if-eqz v3, :cond_1

    .line 385
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimator:Landroid/animation/Animator;

    .line 270
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->hideEditBar(Landroid/animation/Animator;)V

    .line 272
    :cond_1
    return-void
.end method

.method private newFolder(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 17
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    .line 289
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_1

    const/4 v4, 0x1

    .line 290
    .local v4, folderOk:Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 335
    :cond_0
    :goto_1
    :pswitch_0
    return v4

    .line 289
    .end local v4           #folderOk:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 292
    .restart local v4       #folderOk:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 295
    :pswitch_2
    if-eqz v4, :cond_0

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/MenuEditBar;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    .line 297
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 298
    const/4 v1, 0x1

    move-object/from16 v0, p2

    iput-boolean v1, v0, Lcom/android/launcher2/DragState;->mRevertDrag:Z

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/MenuEditBar;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v1, v2, :cond_2

    const/4 v15, 0x1

    .line 300
    .local v15, isAlphaGrid:Z
    :goto_2
    if-eqz v15, :cond_3

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v1, Lcom/android/launcher2/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->getSavedScreen()I

    move-result v13

    .line 301
    .local v13, screen:I
    :goto_3
    if-eqz v15, :cond_4

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v1, Lcom/android/launcher2/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->getSavedCell()I

    move-result v14

    .line 302
    .local v14, cell:I
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v16

    .line 303
    .local v16, p:Lcom/android/launcher2/Folder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/MenuEditBar;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->setPrevFolderOnCreateFolder(Lcom/android/launcher2/Folder;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/DragState;->getContainerType()J

    move-result-wide v7

    const-wide/16 v9, -0x66

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v14}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    .line 307
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    .line 308
    const/16 v1, 0x6457

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_1

    .line 299
    .end local v13           #screen:I
    .end local v14           #cell:I
    .end local v15           #isAlphaGrid:Z
    .end local v16           #p:Lcom/android/launcher2/Folder;
    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    .line 300
    .restart local v15       #isAlphaGrid:Z
    :cond_3
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    goto :goto_3

    .line 301
    .restart local v13       #screen:I
    :cond_4
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    goto :goto_4

    .line 314
    .end local v13           #screen:I
    .end local v15           #isAlphaGrid:Z
    :pswitch_3
    if-eqz v4, :cond_0

    .line 315
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 316
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v2, 0x7f0e0087

    invoke-virtual {v1, v2}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 318
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    .line 319
    const/16 v1, 0x5695

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_1

    .line 325
    :pswitch_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 329
    :pswitch_5
    if-eqz v4, :cond_0

    .line 330
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_1

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private newPage(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 9
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 409
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageAllowed:Z

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 457
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageAllowed:Z

    return v0

    .line 412
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 413
    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 414
    iget v0, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 415
    .local v7, newScreenPos:I
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0, p1, v7}, Lcom/android/launcher2/MenuAppModel;->editInsertItemOnNewScreen(Lcom/android/launcher2/AppItem;I)V

    .line 416
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    .line 417
    .local v6, mv:Lcom/android/launcher2/MenuView;
    new-instance v0, Lcom/android/launcher2/MenuEditBar$3;

    invoke-direct {v0, p0, v6, v7}, Lcom/android/launcher2/MenuEditBar$3;-><init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/MenuView;I)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    .line 428
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0048

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 433
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 434
    const/16 v0, 0x6457

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto :goto_0

    .line 439
    .end local v6           #mv:Lcom/android/launcher2/MenuView;
    .end local v7           #newScreenPos:I
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v3

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 440
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e0088

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 442
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 443
    const/16 v0, 0x5695

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto :goto_0

    .line 448
    :pswitch_2
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 452
    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setAnimatorsForOrientation()V
    .locals 5

    .prologue
    .line 655
    iget v3, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    and-int/lit8 v0, v3, 0x3

    .line 657
    .local v0, barPosition:I
    packed-switch v0, :pswitch_data_0

    .line 671
    :pswitch_0
    const v1, 0x7f050015

    .line 672
    .local v1, hideAnim:I
    const v2, 0x7f050016

    .line 675
    .local v2, showAnim:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    .line 676
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 677
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    new-instance v4, Lcom/android/launcher2/MenuEditBar$4;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuEditBar$4;-><init>(Lcom/android/launcher2/MenuEditBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 694
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    .line 695
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    new-instance v4, Lcom/android/launcher2/MenuEditBar$5;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuEditBar$5;-><init>(Lcom/android/launcher2/MenuEditBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 706
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 707
    return-void

    .line 659
    .end local v1           #hideAnim:I
    .end local v2           #showAnim:I
    :pswitch_1
    const v1, 0x7f05000d

    .line 660
    .restart local v1       #hideAnim:I
    const v2, 0x7f05000e

    .line 661
    .restart local v2       #showAnim:I
    goto :goto_0

    .line 663
    .end local v1           #hideAnim:I
    .end local v2           #showAnim:I
    :pswitch_2
    const v1, 0x7f050013

    .line 664
    .restart local v1       #hideAnim:I
    const v2, 0x7f050014

    .line 665
    .restart local v2       #showAnim:I
    goto :goto_0

    .line 667
    .end local v1           #hideAnim:I
    .end local v2           #showAnim:I
    :pswitch_3
    const/high16 v1, 0x7f05

    .line 668
    .restart local v1       #hideAnim:I
    const v2, 0x7f050001

    .line 669
    .restart local v2       #showAnim:I
    goto :goto_0

    .line 657
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V
    .locals 4
    .parameter "tv"
    .parameter "icon"
    .parameter "d"
    .parameter "index"

    .prologue
    .line 722
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 723
    aput-object p2, p3, p4

    .line 724
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    const/4 v2, 0x2

    aget-object v2, p3, v2

    const/4 v3, 0x3

    aget-object v3, p3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 726
    :cond_0
    return-void
.end method

.method private setDrawablesForOrientation()V
    .locals 4

    .prologue
    .line 733
    const/4 v2, 0x4

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 735
    .local v0, d:[Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v1, v2, 0x4

    .line 739
    .local v1, index:I
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 740
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 741
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 742
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 743
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 744
    return-void
.end method

.method private setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V
    .locals 0
    .parameter "fl"
    .parameter "tv"
    .parameter "enabled"
    .parameter "selected"
    .parameter "activated"

    .prologue
    .line 763
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 764
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 766
    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 767
    invoke-virtual {p1, p5}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 768
    return-void
.end method

.method private showDeleteConfirmationDialog(Lcom/android/launcher2/AppItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 821
    sget-object v0, Lcom/android/launcher2/MenuEditBar$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 832
    .end local p1
    :goto_0
    return-void

    .line 823
    .restart local p1
    :pswitch_0
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 828
    :pswitch_1
    check-cast p1, Lcom/android/launcher2/AppFolderItem;

    .end local p1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 821
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showDisableConfirmationDialog(Lcom/android/launcher2/AppItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 835
    sget-object v0, Lcom/android/launcher2/MenuEditBar$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 843
    :goto_0
    return-void

    .line 837
    :pswitch_0
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 835
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBarPosition()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const v6, 0x7f0f0020

    const v5, 0x7f0f001f

    const v4, 0x7f0f0021

    const v3, 0x7f0f0016

    .line 462
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 465
    .local v0, dragBar:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    .line 466
    invoke-static {v5, p0}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/LinearLayout;)V

    .line 467
    invoke-static {v5, p0}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 468
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 472
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 474
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 475
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 476
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 480
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 481
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-static {v6, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 482
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-static {v6, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 485
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 486
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 491
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 492
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 493
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 494
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 496
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 497
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 498
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 499
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 500
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 504
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setDrawablesForOrientation()V

    .line 505
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "dragEvent"

    .prologue
    .line 524
    const/4 v6, 0x0

    .line 526
    .local v6, rc:Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    .line 527
    .local v5, localState:Ljava/lang/Object;
    instance-of v7, v5, Lcom/android/launcher2/DragState;

    if-eqz v7, :cond_2

    move-object v3, v5

    .line 528
    check-cast v3, Lcom/android/launcher2/DragState;

    .line 529
    .local v3, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 530
    .local v0, action:I
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 531
    .local v1, baseItem:Lcom/android/launcher2/BaseItem;
    instance-of v7, v1, Lcom/android/launcher2/AppItem;

    if-eqz v7, :cond_1

    move-object v2, v1

    .line 532
    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 534
    .local v2, dragItem:Lcom/android/launcher2/AppItem;
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_3

    .line 535
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    .line 547
    :cond_0
    :goto_0
    const/4 v7, 0x4

    if-ne v0, v7, :cond_1

    .line 548
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 549
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->hide()V

    .line 552
    .end local v2           #dragItem:Lcom/android/launcher2/AppItem;
    :cond_1
    const/4 v7, 0x5

    if-ne v0, v7, :cond_2

    .line 553
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v4

    .line 554
    .local v4, folder:Lcom/android/launcher2/Folder;
    if-eqz v4, :cond_2

    .line 555
    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    .line 559
    .end local v0           #action:I
    .end local v1           #baseItem:Lcom/android/launcher2/BaseItem;
    .end local v3           #dragState:Lcom/android/launcher2/DragState;
    .end local v4           #folder:Lcom/android/launcher2/Folder;
    :cond_2
    return v6

    .line 536
    .restart local v0       #action:I
    .restart local v1       #baseItem:Lcom/android/launcher2/BaseItem;
    .restart local v2       #dragItem:Lcom/android/launcher2/AppItem;
    .restart local v3       #dragState:Lcom/android/launcher2/DragState;
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_4

    .line 537
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->delete(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_0

    .line 538
    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_5

    .line 539
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->newFolder(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_0

    .line 540
    :cond_5
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_6

    .line 541
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->newPage(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_0

    .line 542
    :cond_6
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_0

    .line 543
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->disableApp(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 571
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 576
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 577
    .local v7, fl:Landroid/widget/FrameLayout;
    if-eqz v7, :cond_0

    .line 578
    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 579
    .local v8, tv:Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 580
    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    .line 581
    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    .line 582
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 583
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    .line 587
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_0
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #fl:Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 588
    .restart local v7       #fl:Landroid/widget/FrameLayout;
    if-eqz v7, :cond_1

    .line 589
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 590
    .restart local v8       #tv:Landroid/widget/TextView;
    if-eqz v8, :cond_1

    .line 591
    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    .line 592
    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    .line 593
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 594
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 595
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 596
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 597
    .local v3, bin:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 598
    .local v4, lid:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 603
    .end local v3           #bin:Landroid/graphics/drawable/Drawable;
    .end local v4           #lid:Landroid/graphics/drawable/Drawable;
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_1
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #fl:Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 604
    .restart local v7       #fl:Landroid/widget/FrameLayout;
    if-eqz v7, :cond_2

    .line 605
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 606
    .restart local v8       #tv:Landroid/widget/TextView;
    if-eqz v8, :cond_2

    .line 607
    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    .line 608
    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    .line 609
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 610
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 611
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 612
    new-instance v0, Lcom/android/launcher2/NewFolderDrawable;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lcom/android/launcher2/NewFolderDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 617
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_2
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #fl:Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 618
    .restart local v7       #fl:Landroid/widget/FrameLayout;
    if-eqz v7, :cond_3

    .line 619
    const v0, 0x7f07008e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 620
    .restart local v8       #tv:Landroid/widget/TextView;
    if-eqz v8, :cond_3

    .line 621
    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    .line 622
    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    .line 623
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 624
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 625
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 626
    new-instance v0, Lcom/android/launcher2/NewPageDrawable;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lcom/android/launcher2/NewPageDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 631
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_3
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #fl:Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 632
    .restart local v7       #fl:Landroid/widget/FrameLayout;
    if-eqz v7, :cond_5

    .line 633
    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 634
    .restart local v8       #tv:Landroid/widget/TextView;
    if-eqz v8, :cond_4

    .line 635
    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    .line 636
    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    .line 637
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 638
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    .line 640
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 641
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 642
    .restart local v3       #bin:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 643
    .restart local v4       #lid:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    .line 647
    .end local v3           #bin:Landroid/graphics/drawable/Drawable;
    .end local v4           #lid:Landroid/graphics/drawable/Drawable;
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setAnimatorsForOrientation()V

    .line 648
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setDrawablesForOrientation()V

    .line 649
    return-void
.end method

.method public show(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;ZZZZZ)V
    .locals 8
    .parameter "grid"
    .parameter
    .parameter "newFolderAllowed"
    .parameter "isSystemApp"
    .parameter "newPageAllowed"
    .parameter "isFolder"
    .parameter "canBeDisable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppsGrid;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;ZZZZZ)V"
        }
    .end annotation

    .prologue
    .local p2, animators:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 776
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 777
    iput-object p1, p0, Lcom/android/launcher2/MenuEditBar;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    .line 778
    iput-boolean p5, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageAllowed:Z

    .line 783
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 784
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 785
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    if-eqz p3, :cond_7

    move v0, v4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 788
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz p6, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteText:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-nez p4, :cond_9

    move v3, v7

    :goto_2
    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 790
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    if-eqz p4, :cond_a

    move v0, v6

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 793
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 794
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    if-eqz p3, :cond_b

    move v0, v4

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 796
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 797
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 798
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    if-eqz p5, :cond_c

    move v0, v4

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 800
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 802
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p4

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 803
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    if-nez p4, :cond_d

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v0, :cond_d

    move v0, v6

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 804
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v0, :cond_4

    if-nez p7, :cond_5

    .line 805
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 809
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuEditBar;->setVisibility(I)V

    .line 810
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimator:Landroid/animation/Animator;

    .line 811
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    :cond_6
    return-void

    :cond_7
    move v0, v6

    .line 785
    goto/16 :goto_0

    .line 788
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mUninstallText:Ljava/lang/String;

    goto :goto_1

    :cond_9
    move v3, v4

    .line 789
    goto :goto_2

    :cond_a
    move v0, v4

    .line 790
    goto :goto_3

    :cond_b
    move v0, v6

    .line 794
    goto :goto_4

    :cond_c
    move v0, v6

    .line 798
    goto :goto_5

    :cond_d
    move v0, v4

    .line 803
    goto :goto_6
.end method
